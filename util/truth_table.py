ppermutation_masks = [
    [
        [0x0, 0x0, 0x0],
        [0x9999999999999999, 0x2222222222222222, 0x4444444444444444],
        [0xA5A5A5A5A5A5A5A5, 0xA0A0A0A0A0A0A0A, 0x5050505050505050],
        [0xAA55AA55AA55AA55, 0xAA00AA00AA00AA, 0x5500550055005500],
        [0xAAAA5555AAAA5555, 0xAAAA0000AAAA, 0x5555000055550000],
        [0xAAAAAAAA55555555, 0xAAAAAAAA, 0x5555555500000000],
    ],
    [
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0xC3C3C3C3C3C3C3C3, 0xC0C0C0C0C0C0C0C, 0x3030303030303030],
        [0xCC33CC33CC33CC33, 0xCC00CC00CC00CC, 0x3300330033003300],
        [0xCCCC3333CCCC3333, 0xCCCC0000CCCC, 0x3333000033330000],
        [0xCCCCCCCC33333333, 0xCCCCCCCC, 0x3333333300000000],
    ],
    [
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0xF00FF00FF00FF00F, 0xF000F000F000F0, 0xF000F000F000F00],
        [0xF0F00F0FF0F00F0F, 0xF0F00000F0F0, 0xF0F00000F0F0000],
        [0xF0F0F0F00F0F0F0F, 0xF0F0F0F0, 0xF0F0F0F00000000],
    ],
    [
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0xFF0000FFFF0000FF, 0xFF000000FF00, 0xFF000000FF0000],
        [0xFF00FF0000FF00FF, 0xFF00FF00, 0xFF00FF00000000],
    ],
    [
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0x0, 0x0, 0x0],
        [0xFFFF00000000FFFF, 0xFFFF0000, 0xFFFF00000000],
    ],
]


class TruthTable:
    """ data to hold truth value table """

    def __init__(self, num_var, data=0):
        self.num_var = num_var
        self.data = data

    def __str__(self):
        return format(self.data, "#0" + str((1 << self.num_var) + 2) + "b")

    def extend_to(self, new_num_var):
        data = self.data
        for i in range(self.num_var, new_num_var):
            data |= data << (1 << i)  # duplicate original bits
        return TruthTable(new_num_var, data)

    def expand(self, supp):
        # kitty/operations.hpp
        # table in kitty/constants.hpp
        for i, s in reversed(list(zip(list(range(len(supp))), supp))):
            if i == s:
                continue
            assert i <= s
            assert s <= 6
            pmask = ppermutation_masks[i][s]
            shift = (1 << s) - (1 << i)
            data = self.data
            self.data = (
                (data & pmask[0])
                | ((data & pmask[1]) << shift)
                | ((data & pmask[2]) >> shift)
            )

