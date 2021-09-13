# import hdlparse.verilog_parser as vlog
import os
import collections

from typing import List, Dict, Tuple, Optional


def check_gate_types(folder):
    d = collections.defaultdict(int)
    nary = collections.defaultdict(int)
    for vf in os.listdir(folder):
        if not vf.endswith(".v"):
            continue  # not verilog file
        with open(os.path.join(folder, vf)) as f:
            for line in f:
                tokens = line.split()
                if len(tokens) == 1 or tokens[0] in (
                    "module",
                    "output",
                    "input",
                    "wire",
                ):
                    continue
                d[tokens[0]] += 1
                args = line[line.find("(") + 1 : line.find(")")].split(",")
                nary[len(args) - 1] += 1
                for i in args:
                    if i in ("1'b0", "1'b1"):
                        d[tokens[0] + i] += 1

    print(d)
    print(nary)


def iccad_parser_not_edge(fname):
    """ parse iccad verilog benchmark, assign not gates to edges """
    # vlog_ex = vlog.VerilogExtractor()
    # hdlparse only extracts module definition
    # vlog_mods = vlog_ex.extract_objects(fname)

    PIs = []  # a list of PI nodes
    POs = []  # a list of PO nodes
    nodes = [
        ("1'b0", {"type": "1'b0"}),
        ("1'b1", {"type": "1'b1"}),
    ]  # a list of (node, {"type": type})
    edges = []  # a list of (src, dst, {"is_reverted": is_reverted})
    reverted = {}  # a dict of x': (x, is_reverted)
    num_wire = 0
    num_buf_not = 0
    with open(fname) as f:
        lines = list(f)
        for line in lines:
            tokens = line.split()
            # without proper space:
            if "(" in tokens[0]:
                tokens[0] = tokens[0][: tokens[0].find("(")]
            if tokens[0] in ("buf", "not"):
                args = line[line.find("(") + 1 : line.find(")")].split(",")
                reverted[args[0]] = (args[1], tokens[0] == "not")
                num_buf_not += 1
            elif tokens[0] == "input":
                PIs.append(tokens[1].rstrip(";"))
                nodes.append((tokens[1].rstrip(";"), {"type": "PI"}))
            elif tokens[0] == "output":
                POs.append(tokens[1].rstrip(";"))
                # nodes.append((tokens[1], {"type": "PO"})) # PO is itself a gate!
            elif tokens[0] == "wire":
                num_wire += len(tokens[1].split(","))

        for line in lines:
            tokens = line.split()
            if "(" in tokens[0]:
                tokens[0] = tokens[0][: tokens[0].find("(")]
            if len(tokens) == 1:
                continue
            if tokens[0] in ("module", "output", "input", "wire", "buf", "not"):
                continue
            args = line[line.find("(") + 1 : line.find(")")].split(",")
            nodes.append((args[0], {"type": tokens[0]}))
            for i in args[1:]:
                ori = i
                is_reverted = False
                while ori in reverted:
                    new_ori, to_revert = reverted[ori]
                    ori = new_ori
                    is_reverted = not is_reverted if to_revert else is_reverted
                    # if is_reverted != to_revert:
                    #     print("!!!!!!!!!!!!!!!!!")
                edges.append((ori, args[0], {"is_reverted": is_reverted}))
        if len(nodes) != num_wire + len(PIs) + len(POs) - num_buf_not + 2:
            print(len(nodes), len(PIs), num_wire, len(POs), num_buf_not)
            assert False

    return nodes, edges


def iccad_parser(fname):
    """ parse iccad verilog benchmark """

    PIs: List[str] = []  # a list of PI nodes
    POs: List[str] = []  # a list of PO nodes
    nodes: List[Tuple[str, Dict[str, str]]] = [
        ("1'b0", {"type": "1'b0"}),
        ("1'b1", {"type": "1'b1"}),
    ]  # a list of (node, {"type": type})
    edges: List[
        Tuple[str, str, Dict[str, bool]]
    ] = []  # a list of (src, dst, {"is_reverted": is_reverted})
    num_wire = 0
    with open(fname) as f:
        lines = list(f)
        for line in lines:
            tokens = line.split()
            # without proper space:
            if "(" in tokens[0]:
                tokens[0] = tokens[0][: tokens[0].find("(")]
            if tokens[0] in ("module", "endmodule") or tokens[0].startswith(","):
                continue
            elif tokens[0] == "input":
                PIs.append(tokens[1].rstrip(";"))
                nodes.append((tokens[1].rstrip(";"), {"type": "PI"}))
            elif tokens[0] == "output":
                POs.append(tokens[1].rstrip(";"))
                # nodes.append((tokens[1], {"type": "PO"})) # PO is itself a gate!
            elif tokens[0] == "wire":
                num_wire += len(tokens[1].split(","))
            else:  # gates
                assert tokens[0] in (
                    "buf",
                    "not",
                    "and",
                    "nand",
                    "or",
                    "nor",
                    "xor",
                    "xnor",
                ), "unknown gate type {} in {}".format(tokens[0], fname)
                args = line[line.find("(") + 1 : line.find(")")].split(",")
                nodes.append((args[0], {"type": tokens[0]}))
                for i in args[1:]:
                    edges.append((i, args[0], {"is_reverted": False}))
        assert (
            len(nodes) == num_wire + len(PIs) + len(POs) + 2
        ), "expect {} = {} + {} + {} ".format(len(nodes), num_wire, len(PIs), len(POs))

    return nodes, edges


if __name__ == "__main__":
    check_gate_types("../dataset/test/ICCAD2014/v/")
    # iccad_parser("../dataset/test/ICCAD2014/v/ut1_sample1.v")
