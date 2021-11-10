/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBFCSkA_31_0_31_0

  Operand-1 length: 32
  Operand-2 length: 32
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

module UBCSkB_3_0(Co, S, X, Y, Ci);
  output Co;
  output [3:0] S;
  input Ci;
  input [3:0] X;
  input [3:0] Y;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  wire P0;
  wire P1;
  wire P2;
  wire P3;
  wire Sk;
  assign Sk = ( P0 & P1 & P2 & P3 ) & Ci;
  assign Co = C4 | Sk;
  UBPFA_0 U0 (C1, S[0], P0, X[0], Y[0], Ci);
  UBPFA_1 U1 (C2, S[1], P1, X[1], Y[1], C1);
  UBPFA_2 U2 (C3, S[2], P2, X[2], Y[2], C2);
  UBPFA_3 U3 (C4, S[3], P3, X[3], Y[3], C3);
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

module UBCSkB_7_4(Co, S, X, Y, Ci);
  output Co;
  output [7:4] S;
  input Ci;
  input [7:4] X;
  input [7:4] Y;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  wire P4;
  wire P5;
  wire P6;
  wire P7;
  wire Sk;
  assign Sk = ( P4 & P5 & P6 & P7 ) & Ci;
  assign Co = C8 | Sk;
  UBPFA_4 U0 (C5, S[4], P4, X[4], Y[4], Ci);
  UBPFA_5 U1 (C6, S[5], P5, X[5], Y[5], C5);
  UBPFA_6 U2 (C7, S[6], P6, X[6], Y[6], C6);
  UBPFA_7 U3 (C8, S[7], P7, X[7], Y[7], C7);
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

module UBCSkB_11_8(Co, S, X, Y, Ci);
  output Co;
  output [11:8] S;
  input Ci;
  input [11:8] X;
  input [11:8] Y;
  wire C10;
  wire C11;
  wire C12;
  wire C9;
  wire P10;
  wire P11;
  wire P8;
  wire P9;
  wire Sk;
  assign Sk = ( P8 & P9 & P10 & P11 ) & Ci;
  assign Co = C12 | Sk;
  UBPFA_8 U0 (C9, S[8], P8, X[8], Y[8], Ci);
  UBPFA_9 U1 (C10, S[9], P9, X[9], Y[9], C9);
  UBPFA_10 U2 (C11, S[10], P10, X[10], Y[10], C10);
  UBPFA_11 U3 (C12, S[11], P11, X[11], Y[11], C11);
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

module UBCSkB_15_12(Co, S, X, Y, Ci);
  output Co;
  output [15:12] S;
  input Ci;
  input [15:12] X;
  input [15:12] Y;
  wire C13;
  wire C14;
  wire C15;
  wire C16;
  wire P12;
  wire P13;
  wire P14;
  wire P15;
  wire Sk;
  assign Sk = ( P12 & P13 & P14 & P15 ) & Ci;
  assign Co = C16 | Sk;
  UBPFA_12 U0 (C13, S[12], P12, X[12], Y[12], Ci);
  UBPFA_13 U1 (C14, S[13], P13, X[13], Y[13], C13);
  UBPFA_14 U2 (C15, S[14], P14, X[14], Y[14], C14);
  UBPFA_15 U3 (C16, S[15], P15, X[15], Y[15], C15);
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

module UBCSkB_19_16(Co, S, X, Y, Ci);
  output Co;
  output [19:16] S;
  input Ci;
  input [19:16] X;
  input [19:16] Y;
  wire C17;
  wire C18;
  wire C19;
  wire C20;
  wire P16;
  wire P17;
  wire P18;
  wire P19;
  wire Sk;
  assign Sk = ( P16 & P17 & P18 & P19 ) & Ci;
  assign Co = C20 | Sk;
  UBPFA_16 U0 (C17, S[16], P16, X[16], Y[16], Ci);
  UBPFA_17 U1 (C18, S[17], P17, X[17], Y[17], C17);
  UBPFA_18 U2 (C19, S[18], P18, X[18], Y[18], C18);
  UBPFA_19 U3 (C20, S[19], P19, X[19], Y[19], C19);
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

module UBCSkB_23_20(Co, S, X, Y, Ci);
  output Co;
  output [23:20] S;
  input Ci;
  input [23:20] X;
  input [23:20] Y;
  wire C21;
  wire C22;
  wire C23;
  wire C24;
  wire P20;
  wire P21;
  wire P22;
  wire P23;
  wire Sk;
  assign Sk = ( P20 & P21 & P22 & P23 ) & Ci;
  assign Co = C24 | Sk;
  UBPFA_20 U0 (C21, S[20], P20, X[20], Y[20], Ci);
  UBPFA_21 U1 (C22, S[21], P21, X[21], Y[21], C21);
  UBPFA_22 U2 (C23, S[22], P22, X[22], Y[22], C22);
  UBPFA_23 U3 (C24, S[23], P23, X[23], Y[23], C23);
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

module UBCSkB_27_24(Co, S, X, Y, Ci);
  output Co;
  output [27:24] S;
  input Ci;
  input [27:24] X;
  input [27:24] Y;
  wire C25;
  wire C26;
  wire C27;
  wire C28;
  wire P24;
  wire P25;
  wire P26;
  wire P27;
  wire Sk;
  assign Sk = ( P24 & P25 & P26 & P27 ) & Ci;
  assign Co = C28 | Sk;
  UBPFA_24 U0 (C25, S[24], P24, X[24], Y[24], Ci);
  UBPFA_25 U1 (C26, S[25], P25, X[25], Y[25], C25);
  UBPFA_26 U2 (C27, S[26], P26, X[26], Y[26], C26);
  UBPFA_27 U3 (C28, S[27], P27, X[27], Y[27], C27);
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

module UBCSkB_31_28(Co, S, X, Y, Ci);
  output Co;
  output [31:28] S;
  input Ci;
  input [31:28] X;
  input [31:28] Y;
  wire C29;
  wire C30;
  wire C31;
  wire C32;
  wire P28;
  wire P29;
  wire P30;
  wire P31;
  wire Sk;
  assign Sk = ( P28 & P29 & P30 & P31 ) & Ci;
  assign Co = C32 | Sk;
  UBPFA_28 U0 (C29, S[28], P28, X[28], Y[28], Ci);
  UBPFA_29 U1 (C30, S[29], P29, X[29], Y[29], C29);
  UBPFA_30 U2 (C31, S[30], P30, X[30], Y[30], C30);
  UBPFA_31 U3 (C32, S[31], P31, X[31], Y[31], C31);
endmodule

module UBPriFCSkA_31_0(S, X, Y, Cin);
  output [32:0] S;
  input Cin;
  input [31:0] X;
  input [31:0] Y;
  wire C12;
  wire C16;
  wire C20;
  wire C24;
  wire C28;
  wire C4;
  wire C8;
  UBCSkB_3_0 U0 (C4, S[3:0], X[3:0], Y[3:0], Cin);
  UBCSkB_7_4 U1 (C8, S[7:4], X[7:4], Y[7:4], C4);
  UBCSkB_11_8 U2 (C12, S[11:8], X[11:8], Y[11:8], C8);
  UBCSkB_15_12 U3 (C16, S[15:12], X[15:12], Y[15:12], C12);
  UBCSkB_19_16 U4 (C20, S[19:16], X[19:16], Y[19:16], C16);
  UBCSkB_23_20 U5 (C24, S[23:20], X[23:20], Y[23:20], C20);
  UBCSkB_27_24 U6 (C28, S[27:24], X[27:24], Y[27:24], C24);
  UBCSkB_31_28 U7 (S[32], S[31:28], X[31:28], Y[31:28], C28);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBFCSkA_31_0_31_0 (S, X, Y);
  output [32:0] S;
  input [31:0] X;
  input [31:0] Y;
  UBPureFCSkA_31_0 U0 (S[32:0], X[31:0], Y[31:0]);
endmodule

module UBPureFCSkA_31_0 (S, X, Y);
  output [32:0] S;
  input [31:0] X;
  input [31:0] Y;
  wire C;
  UBPriFCSkA_31_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

