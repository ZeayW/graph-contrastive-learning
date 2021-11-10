/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBVCSkA_15_0_63_0

  Operand-1 length: 16
  Operand-2 length: 64
  Two-operand addition algorithm: Carry-skip adder (variable-block-size)
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

module UBHA_1(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_1(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_1 U0 (C_0, S_0, X, Y);
  UBHA_1 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_2(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_2(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_2 U0 (C_0, S_0, X, Y);
  UBHA_2 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_2_1(Co, S, X, Y, Ci);
  output Co;
  output [2:1] S;
  input Ci;
  input [2:1] X;
  input [2:1] Y;
  wire C2;
  wire C3;
  wire P1;
  wire P2;
  wire Sk;
  assign Sk = ( P1 & P2 ) & Ci;
  assign Co = C3 | Sk;
  UBPFA_1 U0 (C2, S[1], P1, X[1], Y[1], Ci);
  UBPFA_2 U1 (C3, S[2], P2, X[2], Y[2], C2);
endmodule

module UBHA_3(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_3(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_3 U0 (C_0, S_0, X, Y);
  UBHA_3 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_4(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_4(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_4 U0 (C_0, S_0, X, Y);
  UBHA_4 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_5(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_5(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_5 U0 (C_0, S_0, X, Y);
  UBHA_5 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_5_3(Co, S, X, Y, Ci);
  output Co;
  output [5:3] S;
  input Ci;
  input [5:3] X;
  input [5:3] Y;
  wire C4;
  wire C5;
  wire C6;
  wire P3;
  wire P4;
  wire P5;
  wire Sk;
  assign Sk = ( P3 & P4 & P5 ) & Ci;
  assign Co = C6 | Sk;
  UBPFA_3 U0 (C4, S[3], P3, X[3], Y[3], Ci);
  UBPFA_4 U1 (C5, S[4], P4, X[4], Y[4], C4);
  UBPFA_5 U2 (C6, S[5], P5, X[5], Y[5], C5);
endmodule

module UBHA_6(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_6(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_6 U0 (C_0, S_0, X, Y);
  UBHA_6 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_7(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_7(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_7 U0 (C_0, S_0, X, Y);
  UBHA_7 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_8(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_8(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_8 U0 (C_0, S_0, X, Y);
  UBHA_8 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_9(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_9(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_9 U0 (C_0, S_0, X, Y);
  UBHA_9 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_9_6(Co, S, X, Y, Ci);
  output Co;
  output [9:6] S;
  input Ci;
  input [9:6] X;
  input [9:6] Y;
  wire C10;
  wire C7;
  wire C8;
  wire C9;
  wire P6;
  wire P7;
  wire P8;
  wire P9;
  wire Sk;
  assign Sk = ( P6 & P7 & P8 & P9 ) & Ci;
  assign Co = C10 | Sk;
  UBPFA_6 U0 (C7, S[6], P6, X[6], Y[6], Ci);
  UBPFA_7 U1 (C8, S[7], P7, X[7], Y[7], C7);
  UBPFA_8 U2 (C9, S[8], P8, X[8], Y[8], C8);
  UBPFA_9 U3 (C10, S[9], P9, X[9], Y[9], C9);
endmodule

module UBHA_10(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_10(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_10 U0 (C_0, S_0, X, Y);
  UBHA_10 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_11(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_11(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_11 U0 (C_0, S_0, X, Y);
  UBHA_11 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_12(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_12(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_12 U0 (C_0, S_0, X, Y);
  UBHA_12 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_13(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_13(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_13 U0 (C_0, S_0, X, Y);
  UBHA_13 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_14(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_14(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_14 U0 (C_0, S_0, X, Y);
  UBHA_14 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_14_10(Co, S, X, Y, Ci);
  output Co;
  output [14:10] S;
  input Ci;
  input [14:10] X;
  input [14:10] Y;
  wire C11;
  wire C12;
  wire C13;
  wire C14;
  wire C15;
  wire P10;
  wire P11;
  wire P12;
  wire P13;
  wire P14;
  wire Sk;
  assign Sk = ( P10 & P11 & P12 & P13 & P14 ) & Ci;
  assign Co = C15 | Sk;
  UBPFA_10 U0 (C11, S[10], P10, X[10], Y[10], Ci);
  UBPFA_11 U1 (C12, S[11], P11, X[11], Y[11], C11);
  UBPFA_12 U2 (C13, S[12], P12, X[12], Y[12], C12);
  UBPFA_13 U3 (C14, S[13], P13, X[13], Y[13], C13);
  UBPFA_14 U4 (C15, S[14], P14, X[14], Y[14], C14);
endmodule

module UBHA_15(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_15(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_15 U0 (C_0, S_0, X, Y);
  UBHA_15 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_16(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_16(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_16 U0 (C_0, S_0, X, Y);
  UBHA_16 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_17(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_17(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_17 U0 (C_0, S_0, X, Y);
  UBHA_17 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_18(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_18(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_18 U0 (C_0, S_0, X, Y);
  UBHA_18 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_19(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_19(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_19 U0 (C_0, S_0, X, Y);
  UBHA_19 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_20(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_20(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_20 U0 (C_0, S_0, X, Y);
  UBHA_20 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_20_15(Co, S, X, Y, Ci);
  output Co;
  output [20:15] S;
  input Ci;
  input [20:15] X;
  input [20:15] Y;
  wire C16;
  wire C17;
  wire C18;
  wire C19;
  wire C20;
  wire C21;
  wire P15;
  wire P16;
  wire P17;
  wire P18;
  wire P19;
  wire P20;
  wire Sk;
  assign Sk = ( P15 & P16 & P17 & P18 & P19 & P20 ) & Ci;
  assign Co = C21 | Sk;
  UBPFA_15 U0 (C16, S[15], P15, X[15], Y[15], Ci);
  UBPFA_16 U1 (C17, S[16], P16, X[16], Y[16], C16);
  UBPFA_17 U2 (C18, S[17], P17, X[17], Y[17], C17);
  UBPFA_18 U3 (C19, S[18], P18, X[18], Y[18], C18);
  UBPFA_19 U4 (C20, S[19], P19, X[19], Y[19], C19);
  UBPFA_20 U5 (C21, S[20], P20, X[20], Y[20], C20);
endmodule

module UBHA_21(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_21(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_21 U0 (C_0, S_0, X, Y);
  UBHA_21 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_22(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_22(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_22 U0 (C_0, S_0, X, Y);
  UBHA_22 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_23(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_23(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_23 U0 (C_0, S_0, X, Y);
  UBHA_23 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_24(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_24(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_24 U0 (C_0, S_0, X, Y);
  UBHA_24 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_25(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_25(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_25 U0 (C_0, S_0, X, Y);
  UBHA_25 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_26(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_26(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_26 U0 (C_0, S_0, X, Y);
  UBHA_26 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_27(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_27(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_27 U0 (C_0, S_0, X, Y);
  UBHA_27 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_27_21(Co, S, X, Y, Ci);
  output Co;
  output [27:21] S;
  input Ci;
  input [27:21] X;
  input [27:21] Y;
  wire C22;
  wire C23;
  wire C24;
  wire C25;
  wire C26;
  wire C27;
  wire C28;
  wire P21;
  wire P22;
  wire P23;
  wire P24;
  wire P25;
  wire P26;
  wire P27;
  wire Sk;
  assign Sk = ( P21 & P22 & P23 & P24 & P25 & P26 & P27 ) & Ci;
  assign Co = C28 | Sk;
  UBPFA_21 U0 (C22, S[21], P21, X[21], Y[21], Ci);
  UBPFA_22 U1 (C23, S[22], P22, X[22], Y[22], C22);
  UBPFA_23 U2 (C24, S[23], P23, X[23], Y[23], C23);
  UBPFA_24 U3 (C25, S[24], P24, X[24], Y[24], C24);
  UBPFA_25 U4 (C26, S[25], P25, X[25], Y[25], C25);
  UBPFA_26 U5 (C27, S[26], P26, X[26], Y[26], C26);
  UBPFA_27 U6 (C28, S[27], P27, X[27], Y[27], C27);
endmodule

module UBHA_28(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_28(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_28 U0 (C_0, S_0, X, Y);
  UBHA_28 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_29(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_29(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_29 U0 (C_0, S_0, X, Y);
  UBHA_29 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_30(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_30(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_30 U0 (C_0, S_0, X, Y);
  UBHA_30 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_31(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_31(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_31 U0 (C_0, S_0, X, Y);
  UBHA_31 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_32(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_32(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_32 U0 (C_0, S_0, X, Y);
  UBHA_32 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_33(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_33(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_33 U0 (C_0, S_0, X, Y);
  UBHA_33 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_34(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_34(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_34 U0 (C_0, S_0, X, Y);
  UBHA_34 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_35(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_35(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_35 U0 (C_0, S_0, X, Y);
  UBHA_35 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_35_28(Co, S, X, Y, Ci);
  output Co;
  output [35:28] S;
  input Ci;
  input [35:28] X;
  input [35:28] Y;
  wire C29;
  wire C30;
  wire C31;
  wire C32;
  wire C33;
  wire C34;
  wire C35;
  wire C36;
  wire P28;
  wire P29;
  wire P30;
  wire P31;
  wire P32;
  wire P33;
  wire P34;
  wire P35;
  wire Sk;
  assign Sk = ( P28 & P29 & P30 & P31 & P32 & P33 & P34 & P35 ) & Ci;
  assign Co = C36 | Sk;
  UBPFA_28 U0 (C29, S[28], P28, X[28], Y[28], Ci);
  UBPFA_29 U1 (C30, S[29], P29, X[29], Y[29], C29);
  UBPFA_30 U2 (C31, S[30], P30, X[30], Y[30], C30);
  UBPFA_31 U3 (C32, S[31], P31, X[31], Y[31], C31);
  UBPFA_32 U4 (C33, S[32], P32, X[32], Y[32], C32);
  UBPFA_33 U5 (C34, S[33], P33, X[33], Y[33], C33);
  UBPFA_34 U6 (C35, S[34], P34, X[34], Y[34], C34);
  UBPFA_35 U7 (C36, S[35], P35, X[35], Y[35], C35);
endmodule

module UBHA_36(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_36(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_36 U0 (C_0, S_0, X, Y);
  UBHA_36 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_37(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_37(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_37 U0 (C_0, S_0, X, Y);
  UBHA_37 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_38(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_38(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_38 U0 (C_0, S_0, X, Y);
  UBHA_38 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_39(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_39(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_39 U0 (C_0, S_0, X, Y);
  UBHA_39 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_40(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_40(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_40 U0 (C_0, S_0, X, Y);
  UBHA_40 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_41(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_41(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_41 U0 (C_0, S_0, X, Y);
  UBHA_41 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_42(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_42(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_42 U0 (C_0, S_0, X, Y);
  UBHA_42 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_42_36(Co, S, X, Y, Ci);
  output Co;
  output [42:36] S;
  input Ci;
  input [42:36] X;
  input [42:36] Y;
  wire C37;
  wire C38;
  wire C39;
  wire C40;
  wire C41;
  wire C42;
  wire C43;
  wire P36;
  wire P37;
  wire P38;
  wire P39;
  wire P40;
  wire P41;
  wire P42;
  wire Sk;
  assign Sk = ( P36 & P37 & P38 & P39 & P40 & P41 & P42 ) & Ci;
  assign Co = C43 | Sk;
  UBPFA_36 U0 (C37, S[36], P36, X[36], Y[36], Ci);
  UBPFA_37 U1 (C38, S[37], P37, X[37], Y[37], C37);
  UBPFA_38 U2 (C39, S[38], P38, X[38], Y[38], C38);
  UBPFA_39 U3 (C40, S[39], P39, X[39], Y[39], C39);
  UBPFA_40 U4 (C41, S[40], P40, X[40], Y[40], C40);
  UBPFA_41 U5 (C42, S[41], P41, X[41], Y[41], C41);
  UBPFA_42 U6 (C43, S[42], P42, X[42], Y[42], C42);
endmodule

module UBHA_43(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_43(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_43 U0 (C_0, S_0, X, Y);
  UBHA_43 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_44(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_44(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_44 U0 (C_0, S_0, X, Y);
  UBHA_44 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_45(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_45(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_45 U0 (C_0, S_0, X, Y);
  UBHA_45 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_46(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_46(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_46 U0 (C_0, S_0, X, Y);
  UBHA_46 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_47(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_47(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_47 U0 (C_0, S_0, X, Y);
  UBHA_47 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_48(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_48(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_48 U0 (C_0, S_0, X, Y);
  UBHA_48 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_48_43(Co, S, X, Y, Ci);
  output Co;
  output [48:43] S;
  input Ci;
  input [48:43] X;
  input [48:43] Y;
  wire C44;
  wire C45;
  wire C46;
  wire C47;
  wire C48;
  wire C49;
  wire P43;
  wire P44;
  wire P45;
  wire P46;
  wire P47;
  wire P48;
  wire Sk;
  assign Sk = ( P43 & P44 & P45 & P46 & P47 & P48 ) & Ci;
  assign Co = C49 | Sk;
  UBPFA_43 U0 (C44, S[43], P43, X[43], Y[43], Ci);
  UBPFA_44 U1 (C45, S[44], P44, X[44], Y[44], C44);
  UBPFA_45 U2 (C46, S[45], P45, X[45], Y[45], C45);
  UBPFA_46 U3 (C47, S[46], P46, X[46], Y[46], C46);
  UBPFA_47 U4 (C48, S[47], P47, X[47], Y[47], C47);
  UBPFA_48 U5 (C49, S[48], P48, X[48], Y[48], C48);
endmodule

module UBHA_49(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_49(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_49 U0 (C_0, S_0, X, Y);
  UBHA_49 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_50(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_50(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_50 U0 (C_0, S_0, X, Y);
  UBHA_50 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_51(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_51(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_51 U0 (C_0, S_0, X, Y);
  UBHA_51 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_52(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_52(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_52 U0 (C_0, S_0, X, Y);
  UBHA_52 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_53(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_53(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_53 U0 (C_0, S_0, X, Y);
  UBHA_53 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_53_49(Co, S, X, Y, Ci);
  output Co;
  output [53:49] S;
  input Ci;
  input [53:49] X;
  input [53:49] Y;
  wire C50;
  wire C51;
  wire C52;
  wire C53;
  wire C54;
  wire P49;
  wire P50;
  wire P51;
  wire P52;
  wire P53;
  wire Sk;
  assign Sk = ( P49 & P50 & P51 & P52 & P53 ) & Ci;
  assign Co = C54 | Sk;
  UBPFA_49 U0 (C50, S[49], P49, X[49], Y[49], Ci);
  UBPFA_50 U1 (C51, S[50], P50, X[50], Y[50], C50);
  UBPFA_51 U2 (C52, S[51], P51, X[51], Y[51], C51);
  UBPFA_52 U3 (C53, S[52], P52, X[52], Y[52], C52);
  UBPFA_53 U4 (C54, S[53], P53, X[53], Y[53], C53);
endmodule

module UBHA_54(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_54(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_54 U0 (C_0, S_0, X, Y);
  UBHA_54 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_55(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_55(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_55 U0 (C_0, S_0, X, Y);
  UBHA_55 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_56(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_56(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_56 U0 (C_0, S_0, X, Y);
  UBHA_56 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_57(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_57(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_57 U0 (C_0, S_0, X, Y);
  UBHA_57 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_57_54(Co, S, X, Y, Ci);
  output Co;
  output [57:54] S;
  input Ci;
  input [57:54] X;
  input [57:54] Y;
  wire C55;
  wire C56;
  wire C57;
  wire C58;
  wire P54;
  wire P55;
  wire P56;
  wire P57;
  wire Sk;
  assign Sk = ( P54 & P55 & P56 & P57 ) & Ci;
  assign Co = C58 | Sk;
  UBPFA_54 U0 (C55, S[54], P54, X[54], Y[54], Ci);
  UBPFA_55 U1 (C56, S[55], P55, X[55], Y[55], C55);
  UBPFA_56 U2 (C57, S[56], P56, X[56], Y[56], C56);
  UBPFA_57 U3 (C58, S[57], P57, X[57], Y[57], C57);
endmodule

module UBHA_58(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_58(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_58 U0 (C_0, S_0, X, Y);
  UBHA_58 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_59(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_59(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_59 U0 (C_0, S_0, X, Y);
  UBHA_59 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_60(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_60(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_60 U0 (C_0, S_0, X, Y);
  UBHA_60 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_60_58(Co, S, X, Y, Ci);
  output Co;
  output [60:58] S;
  input Ci;
  input [60:58] X;
  input [60:58] Y;
  wire C59;
  wire C60;
  wire C61;
  wire P58;
  wire P59;
  wire P60;
  wire Sk;
  assign Sk = ( P58 & P59 & P60 ) & Ci;
  assign Co = C61 | Sk;
  UBPFA_58 U0 (C59, S[58], P58, X[58], Y[58], Ci);
  UBPFA_59 U1 (C60, S[59], P59, X[59], Y[59], C59);
  UBPFA_60 U2 (C61, S[60], P60, X[60], Y[60], C60);
endmodule

module UBHA_61(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_61(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_61 U0 (C_0, S_0, X, Y);
  UBHA_61 U1 (C_1, S, S_0, Ci);
endmodule

module UBHA_62(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_62(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_62 U0 (C_0, S_0, X, Y);
  UBHA_62 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_62_61(Co, S, X, Y, Ci);
  output Co;
  output [62:61] S;
  input Ci;
  input [62:61] X;
  input [62:61] Y;
  wire C62;
  wire C63;
  wire P61;
  wire P62;
  wire Sk;
  assign Sk = ( P61 & P62 ) & Ci;
  assign Co = C63 | Sk;
  UBPFA_61 U0 (C62, S[61], P61, X[61], Y[61], Ci);
  UBPFA_62 U1 (C63, S[62], P62, X[62], Y[62], C62);
endmodule

module UBHA_63(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_63(Co, S, P, X, Y, Ci);
  output Co;
  output P;
  output S;
  input Ci;
  input X;
  input Y;
  wire C_0;
  wire C_1;
  wire S_0;
  assign Co = C_0 | C_1;
  assign P = S_0;
  UBHA_63 U0 (C_0, S_0, X, Y);
  UBHA_63 U1 (C_1, S, S_0, Ci);
endmodule

module UBCSkB_63_63(Co, S, X, Y, Ci);
  output Co;
  output [63:63] S;
  input Ci;
  input [63:63] X;
  input [63:63] Y;
  wire C64;
  wire P63;
  wire Sk;
  assign Sk = P63 & Ci;
  assign Co = C64 | Sk;
  UBPFA_63 U0 (C64, S[63], P63, X[63], Y[63], Ci);
endmodule

module UBPriVCSkA_63_0(S, X, Y, Cin);
  output [64:0] S;
  input Cin;
  input [63:0] X;
  input [63:0] Y;
  wire C1;
  wire C10;
  wire C15;
  wire C21;
  wire C28;
  wire C3;
  wire C36;
  wire C43;
  wire C49;
  wire C54;
  wire C58;
  wire C6;
  wire C61;
  wire C63;
  UBFA_0 U0 (C1, S[0], X[0], Y[0], Cin);
  UBCSkB_2_1 U1 (C3, S[2:1], X[2:1], Y[2:1], C1);
  UBCSkB_5_3 U2 (C6, S[5:3], X[5:3], Y[5:3], C3);
  UBCSkB_9_6 U3 (C10, S[9:6], X[9:6], Y[9:6], C6);
  UBCSkB_14_10 U4 (C15, S[14:10], X[14:10], Y[14:10], C10);
  UBCSkB_20_15 U5 (C21, S[20:15], X[20:15], Y[20:15], C15);
  UBCSkB_27_21 U6 (C28, S[27:21], X[27:21], Y[27:21], C21);
  UBCSkB_35_28 U7 (C36, S[35:28], X[35:28], Y[35:28], C28);
  UBCSkB_42_36 U8 (C43, S[42:36], X[42:36], Y[42:36], C36);
  UBCSkB_48_43 U9 (C49, S[48:43], X[48:43], Y[48:43], C43);
  UBCSkB_53_49 U10 (C54, S[53:49], X[53:49], Y[53:49], C49);
  UBCSkB_57_54 U11 (C58, S[57:54], X[57:54], Y[57:54], C54);
  UBCSkB_60_58 U12 (C61, S[60:58], X[60:58], Y[60:58], C58);
  UBCSkB_62_61 U13 (C63, S[62:61], X[62:61], Y[62:61], C61);
  UBCSkB_63_63 U14 (S[64], S[63], X[63], Y[63], C63);
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

module UBExtender_15_0_6000 (O, I);
  output [63:0] O;
  input [15:0] I;
  UBCON_15_0 U0 (O[15:0], I[15:0]);
  UBZero_63_16 U1 (O[63:16]);
endmodule

module UBPureVCSkA_63_0 (S, X, Y);
  output [64:0] S;
  input [63:0] X;
  input [63:0] Y;
  wire C;
  UBPriVCSkA_63_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBVCSkA_15_0_63_0 (S, X, Y);
  output [64:0] S;
  input [15:0] X;
  input [63:0] Y;
  wire [63:0] Z;
  UBExtender_15_0_6000 U0 (Z[63:0], X[15:0]);
  UBPureVCSkA_63_0 U1 (S[64:0], Z[63:0], Y[63:0]);
endmodule

