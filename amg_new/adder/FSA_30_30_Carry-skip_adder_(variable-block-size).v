/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBVCSkA_29_0_29_0

  Operand-1 length: 30
  Operand-2 length: 30
  Two-operand addition algorithm: Carry-skip adder (variable-block-size)
----------------------------------------------------------------------------*/

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

module UBCSkB_19_15(Co, S, X, Y, Ci);
  output Co;
  output [19:15] S;
  input Ci;
  input [19:15] X;
  input [19:15] Y;
  wire C16;
  wire C17;
  wire C18;
  wire C19;
  wire C20;
  wire P15;
  wire P16;
  wire P17;
  wire P18;
  wire P19;
  wire Sk;
  assign Sk = ( P15 & P16 & P17 & P18 & P19 ) & Ci;
  assign Co = C20 | Sk;
  UBPFA_15 U0 (C16, S[15], P15, X[15], Y[15], Ci);
  UBPFA_16 U1 (C17, S[16], P16, X[16], Y[16], C16);
  UBPFA_17 U2 (C18, S[17], P17, X[17], Y[17], C17);
  UBPFA_18 U3 (C19, S[18], P18, X[18], Y[18], C18);
  UBPFA_19 U4 (C20, S[19], P19, X[19], Y[19], C19);
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

module UBCSkB_26_24(Co, S, X, Y, Ci);
  output Co;
  output [26:24] S;
  input Ci;
  input [26:24] X;
  input [26:24] Y;
  wire C25;
  wire C26;
  wire C27;
  wire P24;
  wire P25;
  wire P26;
  wire Sk;
  assign Sk = ( P24 & P25 & P26 ) & Ci;
  assign Co = C27 | Sk;
  UBPFA_24 U0 (C25, S[24], P24, X[24], Y[24], Ci);
  UBPFA_25 U1 (C26, S[25], P25, X[25], Y[25], C25);
  UBPFA_26 U2 (C27, S[26], P26, X[26], Y[26], C26);
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

module UBCSkB_28_27(Co, S, X, Y, Ci);
  output Co;
  output [28:27] S;
  input Ci;
  input [28:27] X;
  input [28:27] Y;
  wire C28;
  wire C29;
  wire P27;
  wire P28;
  wire Sk;
  assign Sk = ( P27 & P28 ) & Ci;
  assign Co = C29 | Sk;
  UBPFA_27 U0 (C28, S[27], P27, X[27], Y[27], Ci);
  UBPFA_28 U1 (C29, S[28], P28, X[28], Y[28], C28);
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

module UBCSkB_29_29(Co, S, X, Y, Ci);
  output Co;
  output [29:29] S;
  input Ci;
  input [29:29] X;
  input [29:29] Y;
  wire C30;
  wire P29;
  wire Sk;
  assign Sk = P29 & Ci;
  assign Co = C30 | Sk;
  UBPFA_29 U0 (C30, S[29], P29, X[29], Y[29], Ci);
endmodule

module UBPriVCSkA_29_0(S, X, Y, Cin);
  output [30:0] S;
  input Cin;
  input [29:0] X;
  input [29:0] Y;
  wire C1;
  wire C10;
  wire C15;
  wire C20;
  wire C24;
  wire C27;
  wire C29;
  wire C3;
  wire C6;
  UBFA_0 U0 (C1, S[0], X[0], Y[0], Cin);
  UBCSkB_2_1 U1 (C3, S[2:1], X[2:1], Y[2:1], C1);
  UBCSkB_5_3 U2 (C6, S[5:3], X[5:3], Y[5:3], C3);
  UBCSkB_9_6 U3 (C10, S[9:6], X[9:6], Y[9:6], C6);
  UBCSkB_14_10 U4 (C15, S[14:10], X[14:10], Y[14:10], C10);
  UBCSkB_19_15 U5 (C20, S[19:15], X[19:15], Y[19:15], C15);
  UBCSkB_23_20 U6 (C24, S[23:20], X[23:20], Y[23:20], C20);
  UBCSkB_26_24 U7 (C27, S[26:24], X[26:24], Y[26:24], C24);
  UBCSkB_28_27 U8 (C29, S[28:27], X[28:27], Y[28:27], C27);
  UBCSkB_29_29 U9 (S[30], S[29], X[29], Y[29], C29);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBPureVCSkA_29_0 (S, X, Y);
  output [30:0] S;
  input [29:0] X;
  input [29:0] Y;
  wire C;
  UBPriVCSkA_29_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBVCSkA_29_0_29_0 (S, X, Y);
  output [30:0] S;
  input [29:0] X;
  input [29:0] Y;
  UBPureVCSkA_29_0 U0 (S[30:0], X[29:0], Y[29:0]);
endmodule

