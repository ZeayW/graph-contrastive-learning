Off[General::spell1];
solveMultiEquation[List[equations__], output_, List[wires__]] := Flatten[Solve[List[equations], output, List[wires]]];
solveMultiEquation[___] := {};
expandrhs[Rule[lhs_, rhs_]] := Rule[lhs, Expand[rhs]];
expandrhs[___] := Fail;
assertionMatchQ[List[solutions__], List[assertions__]] := If[Complement[List[solutions], List[assertions]] == {} && Complement[List[assertions], List[solutions]] == {}, Succeed, Fail];
assertionMatchQ[___] := Fail;
<< tmp_arith/structure_dat.m
<< tmp_arith/assertion_dat.m
solution = solveMultiEquation[Union[signal, structure, drangeeq, symboleq, assignal], symbol, Complement[Union[digit, wire, output, drange, asdigit,asdelsignal],asrdigit]];
exsolution = Map[expandrhs, solution];
exassertion = Map[expandrhs, function];
result = assertionMatchQ[exsolution, exassertion];
result >> tmp_arith/result.dat
