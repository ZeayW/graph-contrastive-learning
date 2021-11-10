/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBFCSkA_21_0_21_0

  Operand-1 length: 22
  Operand-2 length: 22
  Two-operand addition algorithm: Carry-skip adder (fixed-block-size)
----------------------------------------------------------------------------*/

module UBHA_0(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBPFA_0(Co, S, P, X, Y, Ci);
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
  UBHA_0 U0 (C_0, S_0, X, Y);
  UBHA_0 U1 (C_1, S, S_0, Ci);
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

module UBCSkB_2_0(Co, S, X, Y, Ci);
  output Co;
  output [2:0] S;
  input Ci;
  input [2:0] X;
  input [2:0] Y;
  wire C1;
  wire C2;
  wire C3;
  wire P0;
  wire P1;
  wire P2;
  wire Sk;
  assign Sk = ( P0 & P1 & P2 ) & Ci;
  assign Co = C3 | Sk;
  UBPFA_0 U0 (C1, S[0], P0, X[0], Y[0], Ci);
  UBPFA_1 U1 (C2, S[1], P1, X[1], Y[1], C1);
  UBPFA_2 U2 (C3, S[2], P2, X[2], Y[2], C2);
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

module UBCSkB_8_6(Co, S, X, Y, Ci);
  output Co;
  output [8:6] S;
  input Ci;
  input [8:6] X;
  input [8:6] Y;
  wire C7;
  wire C8;
  wire C9;
  wire P6;
  wire P7;
  wire P8;
  wire Sk;
  assign Sk = ( P6 & P7 & P8 ) & Ci;
  assign Co = C9 | Sk;
  UBPFA_6 U0 (C7, S[6], P6, X[6], Y[6], Ci);
  UBPFA_7 U1 (C8, S[7], P7, X[7], Y[7], C7);
  UBPFA_8 U2 (C9, S[8], P8, X[8], Y[8], C8);
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

module UBCSkB_11_9(Co, S, X, Y, Ci);
  output Co;
  output [11:9] S;
  input Ci;
  input [11:9] X;
  input [11:9] Y;
  wire C10;
  wire C11;
  wire C12;
  wire P10;
  wire P11;
  wire P9;
  wire Sk;
  assign Sk = ( P9 & P10 & P11 ) & Ci;
  assign Co = C12 | Sk;
  UBPFA_9 U0 (C10, S[9], P9, X[9], Y[9], Ci);
  UBPFA_10 U1 (C11, S[10], P10, X[10], Y[10], C10);
  UBPFA_11 U2 (C12, S[11], P11, X[11], Y[11], C11);
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

module UBCSkB_14_12(Co, S, X, Y, Ci);
  output Co;
  output [14:12] S;
  input Ci;
  input [14:12] X;
  input [14:12] Y;
  wire C13;
  wire C14;
  wire C15;
  wire P12;
  wire P13;
  wire P14;
  wire Sk;
  assign Sk = ( P12 & P13 & P14 ) & Ci;
  assign Co = C15 | Sk;
  UBPFA_12 U0 (C13, S[12], P12, X[12], Y[12], Ci);
  UBPFA_13 U1 (C14, S[13], P13, X[13], Y[13], C13);
  UBPFA_14 U2 (C15, S[14], P14, X[14], Y[14], C14);
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

module UBCSkB_17_15(Co, S, X, Y, Ci);
  output Co;
  output [17:15] S;
  input Ci;
  input [17:15] X;
  input [17:15] Y;
  wire C16;
  wire C17;
  wire C18;
  wire P15;
  wire P16;
  wire P17;
  wire Sk;
  assign Sk = ( P15 & P16 & P17 ) & Ci;
  assign Co = C18 | Sk;
  UBPFA_15 U0 (C16, S[15], P15, X[15], Y[15], Ci);
  UBPFA_16 U1 (C17, S[16], P16, X[16], Y[16], C16);
  UBPFA_17 U2 (C18, S[17], P17, X[17], Y[17], C17);
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

module UBCSkB_20_18(Co, S, X, Y, Ci);
  output Co;
  output [20:18] S;
  input Ci;
  input [20:18] X;
  input [20:18] Y;
  wire C19;
  wire C20;
  wire C21;
  wire P18;
  wire P19;
  wire P20;
  wire Sk;
  assign Sk = ( P18 & P19 & P20 ) & Ci;
  assign Co = C21 | Sk;
  UBPFA_18 U0 (C19, S[18], P18, X[18], Y[18], Ci);
  UBPFA_19 U1 (C20, S[19], P19, X[19], Y[19], C19);
  UBPFA_20 U2 (C21, S[20], P20, X[20], Y[20], C20);
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

module UBCSkB_21_21(Co, S, X, Y, Ci);
  output Co;
  output [21:21] S;
  input Ci;
  input [21:21] X;
  input [21:21] Y;
  wire C22;
  wire P21;
  wire Sk;
  assign Sk = P21 & Ci;
  assign Co = C22 | Sk;
  UBPFA_21 U0 (C22, S[21], P21, X[21], Y[21], Ci);
endmodule

module UBPriFCSkA_21_0(S, X, Y, Cin);
  output [22:0] S;
  input Cin;
  input [21:0] X;
  input [21:0] Y;
  wire C12;
  wire C15;
  wire C18;
  wire C21;
  wire C3;
  wire C6;
  wire C9;
  UBCSkB_2_0 U0 (C3, S[2:0], X[2:0], Y[2:0], Cin);
  UBCSkB_5_3 U1 (C6, S[5:3], X[5:3], Y[5:3], C3);
  UBCSkB_8_6 U2 (C9, S[8:6], X[8:6], Y[8:6], C6);
  UBCSkB_11_9 U3 (C12, S[11:9], X[11:9], Y[11:9], C9);
  UBCSkB_14_12 U4 (C15, S[14:12], X[14:12], Y[14:12], C12);
  UBCSkB_17_15 U5 (C18, S[17:15], X[17:15], Y[17:15], C15);
  UBCSkB_20_18 U6 (C21, S[20:18], X[20:18], Y[20:18], C18);
  UBCSkB_21_21 U7 (S[22], S[21], X[21], Y[21], C21);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBFCSkA_21_0_21_0 (S, X, Y);
  output [22:0] S;
  input [21:0] X;
  input [21:0] Y;
  UBPureFCSkA_21_0 U0 (S[22:0], X[21:0], Y[21:0]);
endmodule

module UBPureFCSkA_21_0 (S, X, Y);
  output [22:0] S;
  input [21:0] X;
  input [21:0] Y;
  wire C;
  UBPriFCSkA_21_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

