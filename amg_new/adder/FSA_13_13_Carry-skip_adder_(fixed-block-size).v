/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBFCSkA_12_0_12_0

  Operand-1 length: 13
  Operand-2 length: 13
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

module UBCSkB_1_0(Co, S, X, Y, Ci);
  output Co;
  output [1:0] S;
  input Ci;
  input [1:0] X;
  input [1:0] Y;
  wire C1;
  wire C2;
  wire P0;
  wire P1;
  wire Sk;
  assign Sk = ( P0 & P1 ) & Ci;
  assign Co = C2 | Sk;
  UBPFA_0 U0 (C1, S[0], P0, X[0], Y[0], Ci);
  UBPFA_1 U1 (C2, S[1], P1, X[1], Y[1], C1);
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

module UBCSkB_3_2(Co, S, X, Y, Ci);
  output Co;
  output [3:2] S;
  input Ci;
  input [3:2] X;
  input [3:2] Y;
  wire C3;
  wire C4;
  wire P2;
  wire P3;
  wire Sk;
  assign Sk = ( P2 & P3 ) & Ci;
  assign Co = C4 | Sk;
  UBPFA_2 U0 (C3, S[2], P2, X[2], Y[2], Ci);
  UBPFA_3 U1 (C4, S[3], P3, X[3], Y[3], C3);
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

module UBCSkB_5_4(Co, S, X, Y, Ci);
  output Co;
  output [5:4] S;
  input Ci;
  input [5:4] X;
  input [5:4] Y;
  wire C5;
  wire C6;
  wire P4;
  wire P5;
  wire Sk;
  assign Sk = ( P4 & P5 ) & Ci;
  assign Co = C6 | Sk;
  UBPFA_4 U0 (C5, S[4], P4, X[4], Y[4], Ci);
  UBPFA_5 U1 (C6, S[5], P5, X[5], Y[5], C5);
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

module UBCSkB_7_6(Co, S, X, Y, Ci);
  output Co;
  output [7:6] S;
  input Ci;
  input [7:6] X;
  input [7:6] Y;
  wire C7;
  wire C8;
  wire P6;
  wire P7;
  wire Sk;
  assign Sk = ( P6 & P7 ) & Ci;
  assign Co = C8 | Sk;
  UBPFA_6 U0 (C7, S[6], P6, X[6], Y[6], Ci);
  UBPFA_7 U1 (C8, S[7], P7, X[7], Y[7], C7);
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

module UBCSkB_9_8(Co, S, X, Y, Ci);
  output Co;
  output [9:8] S;
  input Ci;
  input [9:8] X;
  input [9:8] Y;
  wire C10;
  wire C9;
  wire P8;
  wire P9;
  wire Sk;
  assign Sk = ( P8 & P9 ) & Ci;
  assign Co = C10 | Sk;
  UBPFA_8 U0 (C9, S[8], P8, X[8], Y[8], Ci);
  UBPFA_9 U1 (C10, S[9], P9, X[9], Y[9], C9);
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

module UBCSkB_11_10(Co, S, X, Y, Ci);
  output Co;
  output [11:10] S;
  input Ci;
  input [11:10] X;
  input [11:10] Y;
  wire C11;
  wire C12;
  wire P10;
  wire P11;
  wire Sk;
  assign Sk = ( P10 & P11 ) & Ci;
  assign Co = C12 | Sk;
  UBPFA_10 U0 (C11, S[10], P10, X[10], Y[10], Ci);
  UBPFA_11 U1 (C12, S[11], P11, X[11], Y[11], C11);
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

module UBCSkB_12_12(Co, S, X, Y, Ci);
  output Co;
  output [12:12] S;
  input Ci;
  input [12:12] X;
  input [12:12] Y;
  wire C13;
  wire P12;
  wire Sk;
  assign Sk = P12 & Ci;
  assign Co = C13 | Sk;
  UBPFA_12 U0 (C13, S[12], P12, X[12], Y[12], Ci);
endmodule

module UBPriFCSkA_12_0(S, X, Y, Cin);
  output [13:0] S;
  input Cin;
  input [12:0] X;
  input [12:0] Y;
  wire C10;
  wire C12;
  wire C2;
  wire C4;
  wire C6;
  wire C8;
  UBCSkB_1_0 U0 (C2, S[1:0], X[1:0], Y[1:0], Cin);
  UBCSkB_3_2 U1 (C4, S[3:2], X[3:2], Y[3:2], C2);
  UBCSkB_5_4 U2 (C6, S[5:4], X[5:4], Y[5:4], C4);
  UBCSkB_7_6 U3 (C8, S[7:6], X[7:6], Y[7:6], C6);
  UBCSkB_9_8 U4 (C10, S[9:8], X[9:8], Y[9:8], C8);
  UBCSkB_11_10 U5 (C12, S[11:10], X[11:10], Y[11:10], C10);
  UBCSkB_12_12 U6 (S[13], S[12], X[12], Y[12], C12);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBFCSkA_12_0_12_0 (S, X, Y);
  output [13:0] S;
  input [12:0] X;
  input [12:0] Y;
  UBPureFCSkA_12_0 U0 (S[13:0], X[12:0], Y[12:0]);
endmodule

module UBPureFCSkA_12_0 (S, X, Y);
  output [13:0] S;
  input [12:0] X;
  input [12:0] Y;
  wire C;
  UBPriFCSkA_12_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

