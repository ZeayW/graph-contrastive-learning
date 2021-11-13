/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCSe_15_0_63_0

  Operand-1 length: 16
  Operand-2 length: 64
  Two-operand addition algorithm: Carry select adder
----------------------------------------------------------------------------*/

module UB1DCON_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_63_16(O);
  output [63:16] O;
  assign O[16] = 0;
  assign O[17] = 0;
  assign O[18] = 0;
  assign O[19] = 0;
  assign O[20] = 0;
  assign O[21] = 0;
  assign O[22] = 0;
  assign O[23] = 0;
  assign O[24] = 0;
  assign O[25] = 0;
  assign O[26] = 0;
  assign O[27] = 0;
  assign O[28] = 0;
  assign O[29] = 0;
  assign O[30] = 0;
  assign O[31] = 0;
  assign O[32] = 0;
  assign O[33] = 0;
  assign O[34] = 0;
  assign O[35] = 0;
  assign O[36] = 0;
  assign O[37] = 0;
  assign O[38] = 0;
  assign O[39] = 0;
  assign O[40] = 0;
  assign O[41] = 0;
  assign O[42] = 0;
  assign O[43] = 0;
  assign O[44] = 0;
  assign O[45] = 0;
  assign O[46] = 0;
  assign O[47] = 0;
  assign O[48] = 0;
  assign O[49] = 0;
  assign O[50] = 0;
  assign O[51] = 0;
  assign O[52] = 0;
  assign O[53] = 0;
  assign O[54] = 0;
  assign O[55] = 0;
  assign O[56] = 0;
  assign O[57] = 0;
  assign O[58] = 0;
  assign O[59] = 0;
  assign O[60] = 0;
  assign O[61] = 0;
  assign O[62] = 0;
  assign O[63] = 0;
endmodule

module UBFA_0(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBOne_1(O);
  output O;
  assign O = 1;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBFA_1(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_1_1(Co, S, X, Y, Ci);
  output Co;
  output [1:1] S;
  input Ci;
  input [1:1] X;
  input [1:1] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [1:1] S_0;
  wire [1:1] S_1;
  assign S[1] = ( S_0[1] & ( ~ Ci ) ) | ( S_1[1] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_1 U0 (Ci_1);
  UBZero_1_1 U1 (Ci_0);
  UBRCB_1_1 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_1_1 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_2(O);
  output O;
  assign O = 1;
endmodule

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module UBFA_2(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_3(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_3_2(Co, S, X, Y, Ci);
  output Co;
  output [3:2] S;
  input Ci;
  input [3:2] X;
  input [3:2] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [3:2] S_0;
  wire [3:2] S_1;
  assign S[2] = ( S_0[2] & ( ~ Ci ) ) | ( S_1[2] & Ci );
  assign S[3] = ( S_0[3] & ( ~ Ci ) ) | ( S_1[3] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_2 U0 (Ci_1);
  UBZero_2_2 U1 (Ci_0);
  UBRCB_3_2 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_3_2 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_4(O);
  output O;
  assign O = 1;
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBFA_4(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_5(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_6(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_6_4(Co, S, X, Y, Ci);
  output Co;
  output [6:4] S;
  input Ci;
  input [6:4] X;
  input [6:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [6:4] S_0;
  wire [6:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Ci ) ) | ( S_1[4] & Ci );
  assign S[5] = ( S_0[5] & ( ~ Ci ) ) | ( S_1[5] & Ci );
  assign S[6] = ( S_0[6] & ( ~ Ci ) ) | ( S_1[6] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_4 U0 (Ci_1);
  UBZero_4_4 U1 (Ci_0);
  UBRCB_6_4 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_6_4 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBFA_7(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_8(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_9(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_10(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_10_7(Co, S, X, Y, Ci);
  output Co;
  output [10:7] S;
  input Ci;
  input [10:7] X;
  input [10:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [10:7] S_0;
  wire [10:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Ci ) ) | ( S_1[7] & Ci );
  assign S[8] = ( S_0[8] & ( ~ Ci ) ) | ( S_1[8] & Ci );
  assign S[9] = ( S_0[9] & ( ~ Ci ) ) | ( S_1[9] & Ci );
  assign S[10] = ( S_0[10] & ( ~ Ci ) ) | ( S_1[10] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_7 U0 (Ci_1);
  UBZero_7_7 U1 (Ci_0);
  UBRCB_10_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_10_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
endmodule

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module UBFA_11(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_12(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_13(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_14(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_15(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_15_11(Co, S, X, Y, Ci);
  output Co;
  output [15:11] S;
  input Ci;
  input [15:11] X;
  input [15:11] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [15:11] S_0;
  wire [15:11] S_1;
  assign S[11] = ( S_0[11] & ( ~ Ci ) ) | ( S_1[11] & Ci );
  assign S[12] = ( S_0[12] & ( ~ Ci ) ) | ( S_1[12] & Ci );
  assign S[13] = ( S_0[13] & ( ~ Ci ) ) | ( S_1[13] & Ci );
  assign S[14] = ( S_0[14] & ( ~ Ci ) ) | ( S_1[14] & Ci );
  assign S[15] = ( S_0[15] & ( ~ Ci ) ) | ( S_1[15] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_11 U0 (Ci_1);
  UBZero_11_11 U1 (Ci_0);
  UBRCB_15_11 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_15_11 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_16(O);
  output O;
  assign O = 1;
endmodule

module UBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
endmodule

module UBFA_16(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_17(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_18(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_19(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_20(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_21(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_21_16(Co, S, X, Y, Ci);
  output Co;
  output [21:16] S;
  input Ci;
  input [21:16] X;
  input [21:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [21:16] S_0;
  wire [21:16] S_1;
  assign S[16] = ( S_0[16] & ( ~ Ci ) ) | ( S_1[16] & Ci );
  assign S[17] = ( S_0[17] & ( ~ Ci ) ) | ( S_1[17] & Ci );
  assign S[18] = ( S_0[18] & ( ~ Ci ) ) | ( S_1[18] & Ci );
  assign S[19] = ( S_0[19] & ( ~ Ci ) ) | ( S_1[19] & Ci );
  assign S[20] = ( S_0[20] & ( ~ Ci ) ) | ( S_1[20] & Ci );
  assign S[21] = ( S_0[21] & ( ~ Ci ) ) | ( S_1[21] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_16 U0 (Ci_1);
  UBZero_16_16 U1 (Ci_0);
  UBRCB_21_16 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_21_16 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_22(O);
  output O;
  assign O = 1;
endmodule

module UBZero_22_22(O);
  output [22:22] O;
  assign O[22] = 0;
endmodule

module UBFA_22(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_23(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_24(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_25(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_26(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_27(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_28(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_28_22(Co, S, X, Y, Ci);
  output Co;
  output [28:22] S;
  input Ci;
  input [28:22] X;
  input [28:22] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [28:22] S_0;
  wire [28:22] S_1;
  assign S[22] = ( S_0[22] & ( ~ Ci ) ) | ( S_1[22] & Ci );
  assign S[23] = ( S_0[23] & ( ~ Ci ) ) | ( S_1[23] & Ci );
  assign S[24] = ( S_0[24] & ( ~ Ci ) ) | ( S_1[24] & Ci );
  assign S[25] = ( S_0[25] & ( ~ Ci ) ) | ( S_1[25] & Ci );
  assign S[26] = ( S_0[26] & ( ~ Ci ) ) | ( S_1[26] & Ci );
  assign S[27] = ( S_0[27] & ( ~ Ci ) ) | ( S_1[27] & Ci );
  assign S[28] = ( S_0[28] & ( ~ Ci ) ) | ( S_1[28] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_22 U0 (Ci_1);
  UBZero_22_22 U1 (Ci_0);
  UBRCB_28_22 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_28_22 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_29(O);
  output O;
  assign O = 1;
endmodule

module UBZero_29_29(O);
  output [29:29] O;
  assign O[29] = 0;
endmodule

module UBFA_29(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_30(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_31(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_32(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_33(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_34(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_35(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_36(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_36_29(Co, S, X, Y, Ci);
  output Co;
  output [36:29] S;
  input Ci;
  input [36:29] X;
  input [36:29] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [36:29] S_0;
  wire [36:29] S_1;
  assign S[29] = ( S_0[29] & ( ~ Ci ) ) | ( S_1[29] & Ci );
  assign S[30] = ( S_0[30] & ( ~ Ci ) ) | ( S_1[30] & Ci );
  assign S[31] = ( S_0[31] & ( ~ Ci ) ) | ( S_1[31] & Ci );
  assign S[32] = ( S_0[32] & ( ~ Ci ) ) | ( S_1[32] & Ci );
  assign S[33] = ( S_0[33] & ( ~ Ci ) ) | ( S_1[33] & Ci );
  assign S[34] = ( S_0[34] & ( ~ Ci ) ) | ( S_1[34] & Ci );
  assign S[35] = ( S_0[35] & ( ~ Ci ) ) | ( S_1[35] & Ci );
  assign S[36] = ( S_0[36] & ( ~ Ci ) ) | ( S_1[36] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_29 U0 (Ci_1);
  UBZero_29_29 U1 (Ci_0);
  UBRCB_36_29 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_36_29 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_37(O);
  output O;
  assign O = 1;
endmodule

module UBZero_37_37(O);
  output [37:37] O;
  assign O[37] = 0;
endmodule

module UBFA_37(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_38(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_39(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_40(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_41(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_42(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_43(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_44(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_45(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_45_37(Co, S, X, Y, Ci);
  output Co;
  output [45:37] S;
  input Ci;
  input [45:37] X;
  input [45:37] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [45:37] S_0;
  wire [45:37] S_1;
  assign S[37] = ( S_0[37] & ( ~ Ci ) ) | ( S_1[37] & Ci );
  assign S[38] = ( S_0[38] & ( ~ Ci ) ) | ( S_1[38] & Ci );
  assign S[39] = ( S_0[39] & ( ~ Ci ) ) | ( S_1[39] & Ci );
  assign S[40] = ( S_0[40] & ( ~ Ci ) ) | ( S_1[40] & Ci );
  assign S[41] = ( S_0[41] & ( ~ Ci ) ) | ( S_1[41] & Ci );
  assign S[42] = ( S_0[42] & ( ~ Ci ) ) | ( S_1[42] & Ci );
  assign S[43] = ( S_0[43] & ( ~ Ci ) ) | ( S_1[43] & Ci );
  assign S[44] = ( S_0[44] & ( ~ Ci ) ) | ( S_1[44] & Ci );
  assign S[45] = ( S_0[45] & ( ~ Ci ) ) | ( S_1[45] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_37 U0 (Ci_1);
  UBZero_37_37 U1 (Ci_0);
  UBRCB_45_37 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_45_37 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_46(O);
  output O;
  assign O = 1;
endmodule

module UBZero_46_46(O);
  output [46:46] O;
  assign O[46] = 0;
endmodule

module UBFA_46(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_47(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_48(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_49(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_50(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_51(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_52(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_53(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_54(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_55(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_55_46(Co, S, X, Y, Ci);
  output Co;
  output [55:46] S;
  input Ci;
  input [55:46] X;
  input [55:46] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [55:46] S_0;
  wire [55:46] S_1;
  assign S[46] = ( S_0[46] & ( ~ Ci ) ) | ( S_1[46] & Ci );
  assign S[47] = ( S_0[47] & ( ~ Ci ) ) | ( S_1[47] & Ci );
  assign S[48] = ( S_0[48] & ( ~ Ci ) ) | ( S_1[48] & Ci );
  assign S[49] = ( S_0[49] & ( ~ Ci ) ) | ( S_1[49] & Ci );
  assign S[50] = ( S_0[50] & ( ~ Ci ) ) | ( S_1[50] & Ci );
  assign S[51] = ( S_0[51] & ( ~ Ci ) ) | ( S_1[51] & Ci );
  assign S[52] = ( S_0[52] & ( ~ Ci ) ) | ( S_1[52] & Ci );
  assign S[53] = ( S_0[53] & ( ~ Ci ) ) | ( S_1[53] & Ci );
  assign S[54] = ( S_0[54] & ( ~ Ci ) ) | ( S_1[54] & Ci );
  assign S[55] = ( S_0[55] & ( ~ Ci ) ) | ( S_1[55] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_46 U0 (Ci_1);
  UBZero_46_46 U1 (Ci_0);
  UBRCB_55_46 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_55_46 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_56(O);
  output O;
  assign O = 1;
endmodule

module UBZero_56_56(O);
  output [56:56] O;
  assign O[56] = 0;
endmodule

module UBFA_56(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_57(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_58(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_59(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_60(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_61(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_62(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_63(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_63_56(Co, S, X, Y, Ci);
  output Co;
  output [63:56] S;
  input Ci;
  input [63:56] X;
  input [63:56] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [63:56] S_0;
  wire [63:56] S_1;
  assign S[56] = ( S_0[56] & ( ~ Ci ) ) | ( S_1[56] & Ci );
  assign S[57] = ( S_0[57] & ( ~ Ci ) ) | ( S_1[57] & Ci );
  assign S[58] = ( S_0[58] & ( ~ Ci ) ) | ( S_1[58] & Ci );
  assign S[59] = ( S_0[59] & ( ~ Ci ) ) | ( S_1[59] & Ci );
  assign S[60] = ( S_0[60] & ( ~ Ci ) ) | ( S_1[60] & Ci );
  assign S[61] = ( S_0[61] & ( ~ Ci ) ) | ( S_1[61] & Ci );
  assign S[62] = ( S_0[62] & ( ~ Ci ) ) | ( S_1[62] & Ci );
  assign S[63] = ( S_0[63] & ( ~ Ci ) ) | ( S_1[63] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_56 U0 (Ci_1);
  UBZero_56_56 U1 (Ci_0);
  UBRCB_63_56 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_63_56 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBPriCSlA_63_0(S, X, Y, Cin);
  output [64:0] S;
  input Cin;
  input [63:0] X;
  input [63:0] Y;
  wire C0;
  wire C1;
  wire C10;
  wire C2;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  wire C9;
  UBRCB_0_0 U0 (C0, S[0], X[0], Y[0], Cin);
  UBCSlB_1_1 U1 (C1, S[1], X[1], Y[1], C0);
  UBCSlB_3_2 U2 (C2, S[3:2], X[3:2], Y[3:2], C1);
  UBCSlB_6_4 U3 (C3, S[6:4], X[6:4], Y[6:4], C2);
  UBCSlB_10_7 U4 (C4, S[10:7], X[10:7], Y[10:7], C3);
  UBCSlB_15_11 U5 (C5, S[15:11], X[15:11], Y[15:11], C4);
  UBCSlB_21_16 U6 (C6, S[21:16], X[21:16], Y[21:16], C5);
  UBCSlB_28_22 U7 (C7, S[28:22], X[28:22], Y[28:22], C6);
  UBCSlB_36_29 U8 (C8, S[36:29], X[36:29], Y[36:29], C7);
  UBCSlB_45_37 U9 (C9, S[45:37], X[45:37], Y[45:37], C8);
  UBCSlB_55_46 U10 (C10, S[55:46], X[55:46], Y[55:46], C9);
  UBCSlB_63_56 U11 (S[64], S[63:56], X[63:56], Y[63:56], C10);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCON_15_0 (O, I);
  output [15:0] O;
  input [15:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
  UB1DCON_6 U6 (O[6], I[6]);
  UB1DCON_7 U7 (O[7], I[7]);
  UB1DCON_8 U8 (O[8], I[8]);
  UB1DCON_9 U9 (O[9], I[9]);
  UB1DCON_10 U10 (O[10], I[10]);
  UB1DCON_11 U11 (O[11], I[11]);
  UB1DCON_12 U12 (O[12], I[12]);
  UB1DCON_13 U13 (O[13], I[13]);
  UB1DCON_14 U14 (O[14], I[14]);
  UB1DCON_15 U15 (O[15], I[15]);
endmodule

module UBCSe_15_0_63_0 (S, X, Y);
  output [64:0] S;
  input [15:0] X;
  input [63:0] Y;
  wire [63:0] Z;
  UBExtender_15_0_6000 U0 (Z[63:0], X[15:0]);
  UBPureCSe_63_0 U1 (S[64:0], Z[63:0], Y[63:0]);
endmodule

module UBExtender_15_0_6000 (O, I);
  output [63:0] O;
  input [15:0] I;
  UBCON_15_0 U0 (O[15:0], I[15:0]);
  UBZero_63_16 U1 (O[63:16]);
endmodule

module UBPureCSe_63_0 (S, X, Y);
  output [64:0] S;
  input [63:0] X;
  input [63:0] Y;
  wire C;
  UBPriCSlA_63_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBRCB_0_0 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_0 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_10_7 (Co, S, X, Y, Ci);
  output Co;
  output [10:7] S;
  input Ci;
  input [10:7] X;
  input [10:7] Y;
  wire C10;
  wire C8;
  wire C9;
  UBFA_7 U0 (C8, S[7], X[7], Y[7], Ci);
  UBFA_8 U1 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U2 (C10, S[9], X[9], Y[9], C9);
  UBFA_10 U3 (Co, S[10], X[10], Y[10], C10);
endmodule

module UBRCB_15_11 (Co, S, X, Y, Ci);
  output Co;
  output [15:11] S;
  input Ci;
  input [15:11] X;
  input [15:11] Y;
  wire C12;
  wire C13;
  wire C14;
  wire C15;
  UBFA_11 U0 (C12, S[11], X[11], Y[11], Ci);
  UBFA_12 U1 (C13, S[12], X[12], Y[12], C12);
  UBFA_13 U2 (C14, S[13], X[13], Y[13], C13);
  UBFA_14 U3 (C15, S[14], X[14], Y[14], C14);
  UBFA_15 U4 (Co, S[15], X[15], Y[15], C15);
endmodule

module UBRCB_1_1 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_1 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_21_16 (Co, S, X, Y, Ci);
  output Co;
  output [21:16] S;
  input Ci;
  input [21:16] X;
  input [21:16] Y;
  wire C17;
  wire C18;
  wire C19;
  wire C20;
  wire C21;
  UBFA_16 U0 (C17, S[16], X[16], Y[16], Ci);
  UBFA_17 U1 (C18, S[17], X[17], Y[17], C17);
  UBFA_18 U2 (C19, S[18], X[18], Y[18], C18);
  UBFA_19 U3 (C20, S[19], X[19], Y[19], C19);
  UBFA_20 U4 (C21, S[20], X[20], Y[20], C20);
  UBFA_21 U5 (Co, S[21], X[21], Y[21], C21);
endmodule

module UBRCB_28_22 (Co, S, X, Y, Ci);
  output Co;
  output [28:22] S;
  input Ci;
  input [28:22] X;
  input [28:22] Y;
  wire C23;
  wire C24;
  wire C25;
  wire C26;
  wire C27;
  wire C28;
  UBFA_22 U0 (C23, S[22], X[22], Y[22], Ci);
  UBFA_23 U1 (C24, S[23], X[23], Y[23], C23);
  UBFA_24 U2 (C25, S[24], X[24], Y[24], C24);
  UBFA_25 U3 (C26, S[25], X[25], Y[25], C25);
  UBFA_26 U4 (C27, S[26], X[26], Y[26], C26);
  UBFA_27 U5 (C28, S[27], X[27], Y[27], C27);
  UBFA_28 U6 (Co, S[28], X[28], Y[28], C28);
endmodule

module UBRCB_36_29 (Co, S, X, Y, Ci);
  output Co;
  output [36:29] S;
  input Ci;
  input [36:29] X;
  input [36:29] Y;
  wire C30;
  wire C31;
  wire C32;
  wire C33;
  wire C34;
  wire C35;
  wire C36;
  UBFA_29 U0 (C30, S[29], X[29], Y[29], Ci);
  UBFA_30 U1 (C31, S[30], X[30], Y[30], C30);
  UBFA_31 U2 (C32, S[31], X[31], Y[31], C31);
  UBFA_32 U3 (C33, S[32], X[32], Y[32], C32);
  UBFA_33 U4 (C34, S[33], X[33], Y[33], C33);
  UBFA_34 U5 (C35, S[34], X[34], Y[34], C34);
  UBFA_35 U6 (C36, S[35], X[35], Y[35], C35);
  UBFA_36 U7 (Co, S[36], X[36], Y[36], C36);
endmodule

module UBRCB_3_2 (Co, S, X, Y, Ci);
  output Co;
  output [3:2] S;
  input Ci;
  input [3:2] X;
  input [3:2] Y;
  wire C3;
  UBFA_2 U0 (C3, S[2], X[2], Y[2], Ci);
  UBFA_3 U1 (Co, S[3], X[3], Y[3], C3);
endmodule

module UBRCB_45_37 (Co, S, X, Y, Ci);
  output Co;
  output [45:37] S;
  input Ci;
  input [45:37] X;
  input [45:37] Y;
  wire C38;
  wire C39;
  wire C40;
  wire C41;
  wire C42;
  wire C43;
  wire C44;
  wire C45;
  UBFA_37 U0 (C38, S[37], X[37], Y[37], Ci);
  UBFA_38 U1 (C39, S[38], X[38], Y[38], C38);
  UBFA_39 U2 (C40, S[39], X[39], Y[39], C39);
  UBFA_40 U3 (C41, S[40], X[40], Y[40], C40);
  UBFA_41 U4 (C42, S[41], X[41], Y[41], C41);
  UBFA_42 U5 (C43, S[42], X[42], Y[42], C42);
  UBFA_43 U6 (C44, S[43], X[43], Y[43], C43);
  UBFA_44 U7 (C45, S[44], X[44], Y[44], C44);
  UBFA_45 U8 (Co, S[45], X[45], Y[45], C45);
endmodule

module UBRCB_55_46 (Co, S, X, Y, Ci);
  output Co;
  output [55:46] S;
  input Ci;
  input [55:46] X;
  input [55:46] Y;
  wire C47;
  wire C48;
  wire C49;
  wire C50;
  wire C51;
  wire C52;
  wire C53;
  wire C54;
  wire C55;
  UBFA_46 U0 (C47, S[46], X[46], Y[46], Ci);
  UBFA_47 U1 (C48, S[47], X[47], Y[47], C47);
  UBFA_48 U2 (C49, S[48], X[48], Y[48], C48);
  UBFA_49 U3 (C50, S[49], X[49], Y[49], C49);
  UBFA_50 U4 (C51, S[50], X[50], Y[50], C50);
  UBFA_51 U5 (C52, S[51], X[51], Y[51], C51);
  UBFA_52 U6 (C53, S[52], X[52], Y[52], C52);
  UBFA_53 U7 (C54, S[53], X[53], Y[53], C53);
  UBFA_54 U8 (C55, S[54], X[54], Y[54], C54);
  UBFA_55 U9 (Co, S[55], X[55], Y[55], C55);
endmodule

module UBRCB_63_56 (Co, S, X, Y, Ci);
  output Co;
  output [63:56] S;
  input Ci;
  input [63:56] X;
  input [63:56] Y;
  wire C57;
  wire C58;
  wire C59;
  wire C60;
  wire C61;
  wire C62;
  wire C63;
  UBFA_56 U0 (C57, S[56], X[56], Y[56], Ci);
  UBFA_57 U1 (C58, S[57], X[57], Y[57], C57);
  UBFA_58 U2 (C59, S[58], X[58], Y[58], C58);
  UBFA_59 U3 (C60, S[59], X[59], Y[59], C59);
  UBFA_60 U4 (C61, S[60], X[60], Y[60], C60);
  UBFA_61 U5 (C62, S[61], X[61], Y[61], C61);
  UBFA_62 U6 (C63, S[62], X[62], Y[62], C62);
  UBFA_63 U7 (Co, S[63], X[63], Y[63], C63);
endmodule

module UBRCB_6_4 (Co, S, X, Y, Ci);
  output Co;
  output [6:4] S;
  input Ci;
  input [6:4] X;
  input [6:4] Y;
  wire C5;
  wire C6;
  UBFA_4 U0 (C5, S[4], X[4], Y[4], Ci);
  UBFA_5 U1 (C6, S[5], X[5], Y[5], C5);
  UBFA_6 U2 (Co, S[6], X[6], Y[6], C6);
endmodule

