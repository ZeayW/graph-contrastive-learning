/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCSu_15_0_63_0

  Operand-1 length: 16
  Operand-2 length: 64
  Two-operand addition algorithm: Conditional sum adder
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

module UBHCSuB_0_0(C, S, X, Y, Ci);
  output C;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_0 U0 (C, S, X, Y, Ci);
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_1(O);
  output O;
  assign O = 1;
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

module UBCSuB_1_1(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_1_1 U0 (Ci_0);
  UBOne_1 U1 (Ci_1);
  UBFA_1 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_1 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBHCSuB_1_0(C, S, X, Y, Ci);
  output C;
  output [1:0] S;
  input Ci;
  input [1:0] X;
  input [1:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire S_0;
  wire S_1;
  assign S[1] = ( S_0 & ( ~ Co ) ) | ( S_1 & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_0_0 U0 (Co, S[0], X[0], Y[0], Ci);
  UBCSuB_1_1 U1 (C_0, C_1, S_0, S_1, X[1], Y[1]);
endmodule

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module UBOne_2(O);
  output O;
  assign O = 1;
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

module UBCSuB_2_2(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_2_2 U0 (Ci_0);
  UBOne_2 U1 (Ci_1);
  UBFA_2 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_2 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UBOne_3(O);
  output O;
  assign O = 1;
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

module UBCSuB_3_3(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_3_3 U0 (Ci_0);
  UBOne_3 U1 (Ci_1);
  UBFA_3 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_3 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_3_2(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [3:2] S_0;
  output [3:2] S_1;
  input [3:2] X;
  input [3:2] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[3] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[3] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_2_2 U0 (Ci_0, Ci_1, S_0[2], S_1[2], X[2], Y[2]);
  UBCSuB_3_3 U1 (Co_0, Co_1, So_0, So_1, X[3], Y[3]);
endmodule

module UBHCSuB_3_0(C, S, X, Y, Ci);
  output C;
  output [3:0] S;
  input Ci;
  input [3:0] X;
  input [3:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [3:2] S_0;
  wire [3:2] S_1;
  assign S[2] = ( S_0[2] & ( ~ Co ) ) | ( S_1[2] & Co );
  assign S[3] = ( S_0[3] & ( ~ Co ) ) | ( S_1[3] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_1_0 U0 (Co, S[1:0], X[1:0], Y[1:0], Ci);
  UBCSuB_3_2 U1 (C_0, C_1, S_0, S_1, X[3:2], Y[3:2]);
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBOne_4(O);
  output O;
  assign O = 1;
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

module UBCSuB_4_4(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_4_4 U0 (Ci_0);
  UBOne_4 U1 (Ci_1);
  UBFA_4 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_4 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBOne_5(O);
  output O;
  assign O = 1;
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

module UBCSuB_5_5(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_5_5 U0 (Ci_0);
  UBOne_5 U1 (Ci_1);
  UBFA_5 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_5 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_5_4(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [5:4] S_0;
  output [5:4] S_1;
  input [5:4] X;
  input [5:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[5] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[5] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_4_4 U0 (Ci_0, Ci_1, S_0[4], S_1[4], X[4], Y[4]);
  UBCSuB_5_5 U1 (Co_0, Co_1, So_0, So_1, X[5], Y[5]);
endmodule

module UBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
endmodule

module UBOne_6(O);
  output O;
  assign O = 1;
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

module UBCSuB_6_6(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_6_6 U0 (Ci_0);
  UBOne_6 U1 (Ci_1);
  UBFA_6 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_6 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
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

module UBCSuB_7_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_7_7 U0 (Ci_0);
  UBOne_7 U1 (Ci_1);
  UBFA_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_7_6(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [7:6] S_0;
  output [7:6] S_1;
  input [7:6] X;
  input [7:6] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[7] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[7] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_6_6 U0 (Ci_0, Ci_1, S_0[6], S_1[6], X[6], Y[6]);
  UBCSuB_7_7 U1 (Co_0, Co_1, So_0, So_1, X[7], Y[7]);
endmodule

module UBCSuB_7_4(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [7:4] S_0;
  output [7:4] S_1;
  input [7:4] X;
  input [7:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [7:6] So_0;
  wire [7:6] So_1;
  assign S_0[6] = ( So_0[6] & ( ~ Ci_0 ) ) | ( So_1[6] & Ci_0 );
  assign S_0[7] = ( So_0[7] & ( ~ Ci_0 ) ) | ( So_1[7] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[6] = ( So_0[6] & ( ~ Ci_1 ) ) | ( So_1[6] & Ci_1 );
  assign S_1[7] = ( So_0[7] & ( ~ Ci_1 ) ) | ( So_1[7] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_5_4 U0 (Ci_0, Ci_1, S_0[5:4], S_1[5:4], X[5:4], Y[5:4]);
  UBCSuB_7_6 U1 (Co_0, Co_1, So_0, So_1, X[7:6], Y[7:6]);
endmodule

module UBHCSuB_7_0(C, S, X, Y, Ci);
  output C;
  output [7:0] S;
  input Ci;
  input [7:0] X;
  input [7:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [7:4] S_0;
  wire [7:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Co ) ) | ( S_1[4] & Co );
  assign S[5] = ( S_0[5] & ( ~ Co ) ) | ( S_1[5] & Co );
  assign S[6] = ( S_0[6] & ( ~ Co ) ) | ( S_1[6] & Co );
  assign S[7] = ( S_0[7] & ( ~ Co ) ) | ( S_1[7] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_3_0 U0 (Co, S[3:0], X[3:0], Y[3:0], Ci);
  UBCSuB_7_4 U1 (C_0, C_1, S_0, S_1, X[7:4], Y[7:4]);
endmodule

module UBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
endmodule

module UBOne_8(O);
  output O;
  assign O = 1;
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

module UBCSuB_8_8(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_8_8 U0 (Ci_0);
  UBOne_8 U1 (Ci_1);
  UBFA_8 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_8 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module UBOne_9(O);
  output O;
  assign O = 1;
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

module UBCSuB_9_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_9_9 U0 (Ci_0);
  UBOne_9 U1 (Ci_1);
  UBFA_9 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_9 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_9_8(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [9:8] S_0;
  output [9:8] S_1;
  input [9:8] X;
  input [9:8] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[9] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[9] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_8_8 U0 (Ci_0, Ci_1, S_0[8], S_1[8], X[8], Y[8]);
  UBCSuB_9_9 U1 (Co_0, Co_1, So_0, So_1, X[9], Y[9]);
endmodule

module UBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
endmodule

module UBOne_10(O);
  output O;
  assign O = 1;
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

module UBCSuB_10_10(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_10_10 U0 (Ci_0);
  UBOne_10 U1 (Ci_1);
  UBFA_10 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_10 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
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

module UBCSuB_11_11(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_11_11 U0 (Ci_0);
  UBOne_11 U1 (Ci_1);
  UBFA_11 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_11 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_11_10(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [11:10] S_0;
  output [11:10] S_1;
  input [11:10] X;
  input [11:10] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[11] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[11] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_10_10 U0 (Ci_0, Ci_1, S_0[10], S_1[10], X[10], Y[10]);
  UBCSuB_11_11 U1 (Co_0, Co_1, So_0, So_1, X[11], Y[11]);
endmodule

module UBCSuB_11_8(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [11:8] S_0;
  output [11:8] S_1;
  input [11:8] X;
  input [11:8] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [11:10] So_0;
  wire [11:10] So_1;
  assign S_0[10] = ( So_0[10] & ( ~ Ci_0 ) ) | ( So_1[10] & Ci_0 );
  assign S_0[11] = ( So_0[11] & ( ~ Ci_0 ) ) | ( So_1[11] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[10] = ( So_0[10] & ( ~ Ci_1 ) ) | ( So_1[10] & Ci_1 );
  assign S_1[11] = ( So_0[11] & ( ~ Ci_1 ) ) | ( So_1[11] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_9_8 U0 (Ci_0, Ci_1, S_0[9:8], S_1[9:8], X[9:8], Y[9:8]);
  UBCSuB_11_10 U1 (Co_0, Co_1, So_0, So_1, X[11:10], Y[11:10]);
endmodule

module UBZero_12_12(O);
  output [12:12] O;
  assign O[12] = 0;
endmodule

module UBOne_12(O);
  output O;
  assign O = 1;
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

module UBCSuB_12_12(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_12_12 U0 (Ci_0);
  UBOne_12 U1 (Ci_1);
  UBFA_12 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_12 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
endmodule

module UBOne_13(O);
  output O;
  assign O = 1;
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

module UBCSuB_13_13(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_13_13 U0 (Ci_0);
  UBOne_13 U1 (Ci_1);
  UBFA_13 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_13 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_13_12(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [13:12] S_0;
  output [13:12] S_1;
  input [13:12] X;
  input [13:12] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[13] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[13] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_12_12 U0 (Ci_0, Ci_1, S_0[12], S_1[12], X[12], Y[12]);
  UBCSuB_13_13 U1 (Co_0, Co_1, So_0, So_1, X[13], Y[13]);
endmodule

module UBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
endmodule

module UBOne_14(O);
  output O;
  assign O = 1;
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

module UBCSuB_14_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_14_14 U0 (Ci_0);
  UBOne_14 U1 (Ci_1);
  UBFA_14 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_14 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
endmodule

module UBOne_15(O);
  output O;
  assign O = 1;
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

module UBCSuB_15_15(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_15_15 U0 (Ci_0);
  UBOne_15 U1 (Ci_1);
  UBFA_15 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_15 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_15_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [15:14] S_0;
  output [15:14] S_1;
  input [15:14] X;
  input [15:14] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[15] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[15] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_14_14 U0 (Ci_0, Ci_1, S_0[14], S_1[14], X[14], Y[14]);
  UBCSuB_15_15 U1 (Co_0, Co_1, So_0, So_1, X[15], Y[15]);
endmodule

module UBCSuB_15_12(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [15:12] S_0;
  output [15:12] S_1;
  input [15:12] X;
  input [15:12] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [15:14] So_0;
  wire [15:14] So_1;
  assign S_0[14] = ( So_0[14] & ( ~ Ci_0 ) ) | ( So_1[14] & Ci_0 );
  assign S_0[15] = ( So_0[15] & ( ~ Ci_0 ) ) | ( So_1[15] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[14] = ( So_0[14] & ( ~ Ci_1 ) ) | ( So_1[14] & Ci_1 );
  assign S_1[15] = ( So_0[15] & ( ~ Ci_1 ) ) | ( So_1[15] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_13_12 U0 (Ci_0, Ci_1, S_0[13:12], S_1[13:12], X[13:12], Y[13:12]);
  UBCSuB_15_14 U1 (Co_0, Co_1, So_0, So_1, X[15:14], Y[15:14]);
endmodule

module UBCSuB_15_8(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [15:8] S_0;
  output [15:8] S_1;
  input [15:8] X;
  input [15:8] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [15:12] So_0;
  wire [15:12] So_1;
  assign S_0[12] = ( So_0[12] & ( ~ Ci_0 ) ) | ( So_1[12] & Ci_0 );
  assign S_0[13] = ( So_0[13] & ( ~ Ci_0 ) ) | ( So_1[13] & Ci_0 );
  assign S_0[14] = ( So_0[14] & ( ~ Ci_0 ) ) | ( So_1[14] & Ci_0 );
  assign S_0[15] = ( So_0[15] & ( ~ Ci_0 ) ) | ( So_1[15] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[12] = ( So_0[12] & ( ~ Ci_1 ) ) | ( So_1[12] & Ci_1 );
  assign S_1[13] = ( So_0[13] & ( ~ Ci_1 ) ) | ( So_1[13] & Ci_1 );
  assign S_1[14] = ( So_0[14] & ( ~ Ci_1 ) ) | ( So_1[14] & Ci_1 );
  assign S_1[15] = ( So_0[15] & ( ~ Ci_1 ) ) | ( So_1[15] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_11_8 U0 (Ci_0, Ci_1, S_0[11:8], S_1[11:8], X[11:8], Y[11:8]);
  UBCSuB_15_12 U1 (Co_0, Co_1, So_0, So_1, X[15:12], Y[15:12]);
endmodule

module UBHCSuB_15_0(C, S, X, Y, Ci);
  output C;
  output [15:0] S;
  input Ci;
  input [15:0] X;
  input [15:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [15:8] S_0;
  wire [15:8] S_1;
  assign S[8] = ( S_0[8] & ( ~ Co ) ) | ( S_1[8] & Co );
  assign S[9] = ( S_0[9] & ( ~ Co ) ) | ( S_1[9] & Co );
  assign S[10] = ( S_0[10] & ( ~ Co ) ) | ( S_1[10] & Co );
  assign S[11] = ( S_0[11] & ( ~ Co ) ) | ( S_1[11] & Co );
  assign S[12] = ( S_0[12] & ( ~ Co ) ) | ( S_1[12] & Co );
  assign S[13] = ( S_0[13] & ( ~ Co ) ) | ( S_1[13] & Co );
  assign S[14] = ( S_0[14] & ( ~ Co ) ) | ( S_1[14] & Co );
  assign S[15] = ( S_0[15] & ( ~ Co ) ) | ( S_1[15] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_7_0 U0 (Co, S[7:0], X[7:0], Y[7:0], Ci);
  UBCSuB_15_8 U1 (C_0, C_1, S_0, S_1, X[15:8], Y[15:8]);
endmodule

module UBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
endmodule

module UBOne_16(O);
  output O;
  assign O = 1;
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

module UBCSuB_16_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_16_16 U0 (Ci_0);
  UBOne_16 U1 (Ci_1);
  UBFA_16 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_16 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_17_17(O);
  output [17:17] O;
  assign O[17] = 0;
endmodule

module UBOne_17(O);
  output O;
  assign O = 1;
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

module UBCSuB_17_17(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_17_17 U0 (Ci_0);
  UBOne_17 U1 (Ci_1);
  UBFA_17 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_17 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_17_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [17:16] S_0;
  output [17:16] S_1;
  input [17:16] X;
  input [17:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[17] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[17] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_16_16 U0 (Ci_0, Ci_1, S_0[16], S_1[16], X[16], Y[16]);
  UBCSuB_17_17 U1 (Co_0, Co_1, So_0, So_1, X[17], Y[17]);
endmodule

module UBZero_18_18(O);
  output [18:18] O;
  assign O[18] = 0;
endmodule

module UBOne_18(O);
  output O;
  assign O = 1;
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

module UBCSuB_18_18(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_18_18 U0 (Ci_0);
  UBOne_18 U1 (Ci_1);
  UBFA_18 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_18 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_19_19(O);
  output [19:19] O;
  assign O[19] = 0;
endmodule

module UBOne_19(O);
  output O;
  assign O = 1;
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

module UBCSuB_19_19(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_19_19 U0 (Ci_0);
  UBOne_19 U1 (Ci_1);
  UBFA_19 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_19 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_19_18(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [19:18] S_0;
  output [19:18] S_1;
  input [19:18] X;
  input [19:18] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[19] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[19] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_18_18 U0 (Ci_0, Ci_1, S_0[18], S_1[18], X[18], Y[18]);
  UBCSuB_19_19 U1 (Co_0, Co_1, So_0, So_1, X[19], Y[19]);
endmodule

module UBCSuB_19_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [19:16] S_0;
  output [19:16] S_1;
  input [19:16] X;
  input [19:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [19:18] So_0;
  wire [19:18] So_1;
  assign S_0[18] = ( So_0[18] & ( ~ Ci_0 ) ) | ( So_1[18] & Ci_0 );
  assign S_0[19] = ( So_0[19] & ( ~ Ci_0 ) ) | ( So_1[19] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[18] = ( So_0[18] & ( ~ Ci_1 ) ) | ( So_1[18] & Ci_1 );
  assign S_1[19] = ( So_0[19] & ( ~ Ci_1 ) ) | ( So_1[19] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_17_16 U0 (Ci_0, Ci_1, S_0[17:16], S_1[17:16], X[17:16], Y[17:16]);
  UBCSuB_19_18 U1 (Co_0, Co_1, So_0, So_1, X[19:18], Y[19:18]);
endmodule

module UBZero_20_20(O);
  output [20:20] O;
  assign O[20] = 0;
endmodule

module UBOne_20(O);
  output O;
  assign O = 1;
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

module UBCSuB_20_20(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_20_20 U0 (Ci_0);
  UBOne_20 U1 (Ci_1);
  UBFA_20 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_20 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_21_21(O);
  output [21:21] O;
  assign O[21] = 0;
endmodule

module UBOne_21(O);
  output O;
  assign O = 1;
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

module UBCSuB_21_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_21_21 U0 (Ci_0);
  UBOne_21 U1 (Ci_1);
  UBFA_21 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_21 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_21_20(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [21:20] S_0;
  output [21:20] S_1;
  input [21:20] X;
  input [21:20] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[21] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[21] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_20_20 U0 (Ci_0, Ci_1, S_0[20], S_1[20], X[20], Y[20]);
  UBCSuB_21_21 U1 (Co_0, Co_1, So_0, So_1, X[21], Y[21]);
endmodule

module UBZero_22_22(O);
  output [22:22] O;
  assign O[22] = 0;
endmodule

module UBOne_22(O);
  output O;
  assign O = 1;
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

module UBCSuB_22_22(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_22_22 U0 (Ci_0);
  UBOne_22 U1 (Ci_1);
  UBFA_22 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_22 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_23_23(O);
  output [23:23] O;
  assign O[23] = 0;
endmodule

module UBOne_23(O);
  output O;
  assign O = 1;
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

module UBCSuB_23_23(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_23_23 U0 (Ci_0);
  UBOne_23 U1 (Ci_1);
  UBFA_23 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_23 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_23_22(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [23:22] S_0;
  output [23:22] S_1;
  input [23:22] X;
  input [23:22] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[23] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[23] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_22_22 U0 (Ci_0, Ci_1, S_0[22], S_1[22], X[22], Y[22]);
  UBCSuB_23_23 U1 (Co_0, Co_1, So_0, So_1, X[23], Y[23]);
endmodule

module UBCSuB_23_20(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [23:20] S_0;
  output [23:20] S_1;
  input [23:20] X;
  input [23:20] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [23:22] So_0;
  wire [23:22] So_1;
  assign S_0[22] = ( So_0[22] & ( ~ Ci_0 ) ) | ( So_1[22] & Ci_0 );
  assign S_0[23] = ( So_0[23] & ( ~ Ci_0 ) ) | ( So_1[23] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[22] = ( So_0[22] & ( ~ Ci_1 ) ) | ( So_1[22] & Ci_1 );
  assign S_1[23] = ( So_0[23] & ( ~ Ci_1 ) ) | ( So_1[23] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_21_20 U0 (Ci_0, Ci_1, S_0[21:20], S_1[21:20], X[21:20], Y[21:20]);
  UBCSuB_23_22 U1 (Co_0, Co_1, So_0, So_1, X[23:22], Y[23:22]);
endmodule

module UBCSuB_23_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [23:16] S_0;
  output [23:16] S_1;
  input [23:16] X;
  input [23:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [23:20] So_0;
  wire [23:20] So_1;
  assign S_0[20] = ( So_0[20] & ( ~ Ci_0 ) ) | ( So_1[20] & Ci_0 );
  assign S_0[21] = ( So_0[21] & ( ~ Ci_0 ) ) | ( So_1[21] & Ci_0 );
  assign S_0[22] = ( So_0[22] & ( ~ Ci_0 ) ) | ( So_1[22] & Ci_0 );
  assign S_0[23] = ( So_0[23] & ( ~ Ci_0 ) ) | ( So_1[23] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[20] = ( So_0[20] & ( ~ Ci_1 ) ) | ( So_1[20] & Ci_1 );
  assign S_1[21] = ( So_0[21] & ( ~ Ci_1 ) ) | ( So_1[21] & Ci_1 );
  assign S_1[22] = ( So_0[22] & ( ~ Ci_1 ) ) | ( So_1[22] & Ci_1 );
  assign S_1[23] = ( So_0[23] & ( ~ Ci_1 ) ) | ( So_1[23] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_19_16 U0 (Ci_0, Ci_1, S_0[19:16], S_1[19:16], X[19:16], Y[19:16]);
  UBCSuB_23_20 U1 (Co_0, Co_1, So_0, So_1, X[23:20], Y[23:20]);
endmodule

module UBZero_24_24(O);
  output [24:24] O;
  assign O[24] = 0;
endmodule

module UBOne_24(O);
  output O;
  assign O = 1;
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

module UBCSuB_24_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_24_24 U0 (Ci_0);
  UBOne_24 U1 (Ci_1);
  UBFA_24 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_24 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_25_25(O);
  output [25:25] O;
  assign O[25] = 0;
endmodule

module UBOne_25(O);
  output O;
  assign O = 1;
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

module UBCSuB_25_25(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_25_25 U0 (Ci_0);
  UBOne_25 U1 (Ci_1);
  UBFA_25 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_25 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_25_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [25:24] S_0;
  output [25:24] S_1;
  input [25:24] X;
  input [25:24] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[25] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[25] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_24_24 U0 (Ci_0, Ci_1, S_0[24], S_1[24], X[24], Y[24]);
  UBCSuB_25_25 U1 (Co_0, Co_1, So_0, So_1, X[25], Y[25]);
endmodule

module UBZero_26_26(O);
  output [26:26] O;
  assign O[26] = 0;
endmodule

module UBOne_26(O);
  output O;
  assign O = 1;
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

module UBCSuB_26_26(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_26_26 U0 (Ci_0);
  UBOne_26 U1 (Ci_1);
  UBFA_26 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_26 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_27_27(O);
  output [27:27] O;
  assign O[27] = 0;
endmodule

module UBOne_27(O);
  output O;
  assign O = 1;
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

module UBCSuB_27_27(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_27_27 U0 (Ci_0);
  UBOne_27 U1 (Ci_1);
  UBFA_27 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_27 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_27_26(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [27:26] S_0;
  output [27:26] S_1;
  input [27:26] X;
  input [27:26] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[27] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[27] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_26_26 U0 (Ci_0, Ci_1, S_0[26], S_1[26], X[26], Y[26]);
  UBCSuB_27_27 U1 (Co_0, Co_1, So_0, So_1, X[27], Y[27]);
endmodule

module UBCSuB_27_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [27:24] S_0;
  output [27:24] S_1;
  input [27:24] X;
  input [27:24] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [27:26] So_0;
  wire [27:26] So_1;
  assign S_0[26] = ( So_0[26] & ( ~ Ci_0 ) ) | ( So_1[26] & Ci_0 );
  assign S_0[27] = ( So_0[27] & ( ~ Ci_0 ) ) | ( So_1[27] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[26] = ( So_0[26] & ( ~ Ci_1 ) ) | ( So_1[26] & Ci_1 );
  assign S_1[27] = ( So_0[27] & ( ~ Ci_1 ) ) | ( So_1[27] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_25_24 U0 (Ci_0, Ci_1, S_0[25:24], S_1[25:24], X[25:24], Y[25:24]);
  UBCSuB_27_26 U1 (Co_0, Co_1, So_0, So_1, X[27:26], Y[27:26]);
endmodule

module UBZero_28_28(O);
  output [28:28] O;
  assign O[28] = 0;
endmodule

module UBOne_28(O);
  output O;
  assign O = 1;
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

module UBCSuB_28_28(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_28_28 U0 (Ci_0);
  UBOne_28 U1 (Ci_1);
  UBFA_28 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_28 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_29_29(O);
  output [29:29] O;
  assign O[29] = 0;
endmodule

module UBOne_29(O);
  output O;
  assign O = 1;
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

module UBCSuB_29_29(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_29_29 U0 (Ci_0);
  UBOne_29 U1 (Ci_1);
  UBFA_29 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_29 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_29_28(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [29:28] S_0;
  output [29:28] S_1;
  input [29:28] X;
  input [29:28] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[29] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[29] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_28_28 U0 (Ci_0, Ci_1, S_0[28], S_1[28], X[28], Y[28]);
  UBCSuB_29_29 U1 (Co_0, Co_1, So_0, So_1, X[29], Y[29]);
endmodule

module UBZero_30_30(O);
  output [30:30] O;
  assign O[30] = 0;
endmodule

module UBOne_30(O);
  output O;
  assign O = 1;
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

module UBCSuB_30_30(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_30_30 U0 (Ci_0);
  UBOne_30 U1 (Ci_1);
  UBFA_30 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_30 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_31_31(O);
  output [31:31] O;
  assign O[31] = 0;
endmodule

module UBOne_31(O);
  output O;
  assign O = 1;
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

module UBCSuB_31_31(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_31_31 U0 (Ci_0);
  UBOne_31 U1 (Ci_1);
  UBFA_31 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_31 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_31_30(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [31:30] S_0;
  output [31:30] S_1;
  input [31:30] X;
  input [31:30] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[31] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[31] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_30_30 U0 (Ci_0, Ci_1, S_0[30], S_1[30], X[30], Y[30]);
  UBCSuB_31_31 U1 (Co_0, Co_1, So_0, So_1, X[31], Y[31]);
endmodule

module UBCSuB_31_28(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [31:28] S_0;
  output [31:28] S_1;
  input [31:28] X;
  input [31:28] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [31:30] So_0;
  wire [31:30] So_1;
  assign S_0[30] = ( So_0[30] & ( ~ Ci_0 ) ) | ( So_1[30] & Ci_0 );
  assign S_0[31] = ( So_0[31] & ( ~ Ci_0 ) ) | ( So_1[31] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[30] = ( So_0[30] & ( ~ Ci_1 ) ) | ( So_1[30] & Ci_1 );
  assign S_1[31] = ( So_0[31] & ( ~ Ci_1 ) ) | ( So_1[31] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_29_28 U0 (Ci_0, Ci_1, S_0[29:28], S_1[29:28], X[29:28], Y[29:28]);
  UBCSuB_31_30 U1 (Co_0, Co_1, So_0, So_1, X[31:30], Y[31:30]);
endmodule

module UBCSuB_31_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [31:24] S_0;
  output [31:24] S_1;
  input [31:24] X;
  input [31:24] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [31:28] So_0;
  wire [31:28] So_1;
  assign S_0[28] = ( So_0[28] & ( ~ Ci_0 ) ) | ( So_1[28] & Ci_0 );
  assign S_0[29] = ( So_0[29] & ( ~ Ci_0 ) ) | ( So_1[29] & Ci_0 );
  assign S_0[30] = ( So_0[30] & ( ~ Ci_0 ) ) | ( So_1[30] & Ci_0 );
  assign S_0[31] = ( So_0[31] & ( ~ Ci_0 ) ) | ( So_1[31] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[28] = ( So_0[28] & ( ~ Ci_1 ) ) | ( So_1[28] & Ci_1 );
  assign S_1[29] = ( So_0[29] & ( ~ Ci_1 ) ) | ( So_1[29] & Ci_1 );
  assign S_1[30] = ( So_0[30] & ( ~ Ci_1 ) ) | ( So_1[30] & Ci_1 );
  assign S_1[31] = ( So_0[31] & ( ~ Ci_1 ) ) | ( So_1[31] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_27_24 U0 (Ci_0, Ci_1, S_0[27:24], S_1[27:24], X[27:24], Y[27:24]);
  UBCSuB_31_28 U1 (Co_0, Co_1, So_0, So_1, X[31:28], Y[31:28]);
endmodule

module UBCSuB_31_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [31:16] S_0;
  output [31:16] S_1;
  input [31:16] X;
  input [31:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [31:24] So_0;
  wire [31:24] So_1;
  assign S_0[24] = ( So_0[24] & ( ~ Ci_0 ) ) | ( So_1[24] & Ci_0 );
  assign S_0[25] = ( So_0[25] & ( ~ Ci_0 ) ) | ( So_1[25] & Ci_0 );
  assign S_0[26] = ( So_0[26] & ( ~ Ci_0 ) ) | ( So_1[26] & Ci_0 );
  assign S_0[27] = ( So_0[27] & ( ~ Ci_0 ) ) | ( So_1[27] & Ci_0 );
  assign S_0[28] = ( So_0[28] & ( ~ Ci_0 ) ) | ( So_1[28] & Ci_0 );
  assign S_0[29] = ( So_0[29] & ( ~ Ci_0 ) ) | ( So_1[29] & Ci_0 );
  assign S_0[30] = ( So_0[30] & ( ~ Ci_0 ) ) | ( So_1[30] & Ci_0 );
  assign S_0[31] = ( So_0[31] & ( ~ Ci_0 ) ) | ( So_1[31] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[24] = ( So_0[24] & ( ~ Ci_1 ) ) | ( So_1[24] & Ci_1 );
  assign S_1[25] = ( So_0[25] & ( ~ Ci_1 ) ) | ( So_1[25] & Ci_1 );
  assign S_1[26] = ( So_0[26] & ( ~ Ci_1 ) ) | ( So_1[26] & Ci_1 );
  assign S_1[27] = ( So_0[27] & ( ~ Ci_1 ) ) | ( So_1[27] & Ci_1 );
  assign S_1[28] = ( So_0[28] & ( ~ Ci_1 ) ) | ( So_1[28] & Ci_1 );
  assign S_1[29] = ( So_0[29] & ( ~ Ci_1 ) ) | ( So_1[29] & Ci_1 );
  assign S_1[30] = ( So_0[30] & ( ~ Ci_1 ) ) | ( So_1[30] & Ci_1 );
  assign S_1[31] = ( So_0[31] & ( ~ Ci_1 ) ) | ( So_1[31] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_23_16 U0 (Ci_0, Ci_1, S_0[23:16], S_1[23:16], X[23:16], Y[23:16]);
  UBCSuB_31_24 U1 (Co_0, Co_1, So_0, So_1, X[31:24], Y[31:24]);
endmodule

module UBHCSuB_31_0(C, S, X, Y, Ci);
  output C;
  output [31:0] S;
  input Ci;
  input [31:0] X;
  input [31:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [31:16] S_0;
  wire [31:16] S_1;
  assign S[16] = ( S_0[16] & ( ~ Co ) ) | ( S_1[16] & Co );
  assign S[17] = ( S_0[17] & ( ~ Co ) ) | ( S_1[17] & Co );
  assign S[18] = ( S_0[18] & ( ~ Co ) ) | ( S_1[18] & Co );
  assign S[19] = ( S_0[19] & ( ~ Co ) ) | ( S_1[19] & Co );
  assign S[20] = ( S_0[20] & ( ~ Co ) ) | ( S_1[20] & Co );
  assign S[21] = ( S_0[21] & ( ~ Co ) ) | ( S_1[21] & Co );
  assign S[22] = ( S_0[22] & ( ~ Co ) ) | ( S_1[22] & Co );
  assign S[23] = ( S_0[23] & ( ~ Co ) ) | ( S_1[23] & Co );
  assign S[24] = ( S_0[24] & ( ~ Co ) ) | ( S_1[24] & Co );
  assign S[25] = ( S_0[25] & ( ~ Co ) ) | ( S_1[25] & Co );
  assign S[26] = ( S_0[26] & ( ~ Co ) ) | ( S_1[26] & Co );
  assign S[27] = ( S_0[27] & ( ~ Co ) ) | ( S_1[27] & Co );
  assign S[28] = ( S_0[28] & ( ~ Co ) ) | ( S_1[28] & Co );
  assign S[29] = ( S_0[29] & ( ~ Co ) ) | ( S_1[29] & Co );
  assign S[30] = ( S_0[30] & ( ~ Co ) ) | ( S_1[30] & Co );
  assign S[31] = ( S_0[31] & ( ~ Co ) ) | ( S_1[31] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_15_0 U0 (Co, S[15:0], X[15:0], Y[15:0], Ci);
  UBCSuB_31_16 U1 (C_0, C_1, S_0, S_1, X[31:16], Y[31:16]);
endmodule

module UBZero_32_32(O);
  output [32:32] O;
  assign O[32] = 0;
endmodule

module UBOne_32(O);
  output O;
  assign O = 1;
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

module UBCSuB_32_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_32_32 U0 (Ci_0);
  UBOne_32 U1 (Ci_1);
  UBFA_32 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_32 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_33_33(O);
  output [33:33] O;
  assign O[33] = 0;
endmodule

module UBOne_33(O);
  output O;
  assign O = 1;
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

module UBCSuB_33_33(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_33_33 U0 (Ci_0);
  UBOne_33 U1 (Ci_1);
  UBFA_33 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_33 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_33_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [33:32] S_0;
  output [33:32] S_1;
  input [33:32] X;
  input [33:32] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[33] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[33] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_32_32 U0 (Ci_0, Ci_1, S_0[32], S_1[32], X[32], Y[32]);
  UBCSuB_33_33 U1 (Co_0, Co_1, So_0, So_1, X[33], Y[33]);
endmodule

module UBZero_34_34(O);
  output [34:34] O;
  assign O[34] = 0;
endmodule

module UBOne_34(O);
  output O;
  assign O = 1;
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

module UBCSuB_34_34(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_34_34 U0 (Ci_0);
  UBOne_34 U1 (Ci_1);
  UBFA_34 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_34 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_35_35(O);
  output [35:35] O;
  assign O[35] = 0;
endmodule

module UBOne_35(O);
  output O;
  assign O = 1;
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

module UBCSuB_35_35(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_35_35 U0 (Ci_0);
  UBOne_35 U1 (Ci_1);
  UBFA_35 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_35 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_35_34(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [35:34] S_0;
  output [35:34] S_1;
  input [35:34] X;
  input [35:34] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[35] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[35] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_34_34 U0 (Ci_0, Ci_1, S_0[34], S_1[34], X[34], Y[34]);
  UBCSuB_35_35 U1 (Co_0, Co_1, So_0, So_1, X[35], Y[35]);
endmodule

module UBCSuB_35_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [35:32] S_0;
  output [35:32] S_1;
  input [35:32] X;
  input [35:32] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [35:34] So_0;
  wire [35:34] So_1;
  assign S_0[34] = ( So_0[34] & ( ~ Ci_0 ) ) | ( So_1[34] & Ci_0 );
  assign S_0[35] = ( So_0[35] & ( ~ Ci_0 ) ) | ( So_1[35] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[34] = ( So_0[34] & ( ~ Ci_1 ) ) | ( So_1[34] & Ci_1 );
  assign S_1[35] = ( So_0[35] & ( ~ Ci_1 ) ) | ( So_1[35] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_33_32 U0 (Ci_0, Ci_1, S_0[33:32], S_1[33:32], X[33:32], Y[33:32]);
  UBCSuB_35_34 U1 (Co_0, Co_1, So_0, So_1, X[35:34], Y[35:34]);
endmodule

module UBZero_36_36(O);
  output [36:36] O;
  assign O[36] = 0;
endmodule

module UBOne_36(O);
  output O;
  assign O = 1;
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

module UBCSuB_36_36(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_36_36 U0 (Ci_0);
  UBOne_36 U1 (Ci_1);
  UBFA_36 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_36 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_37_37(O);
  output [37:37] O;
  assign O[37] = 0;
endmodule

module UBOne_37(O);
  output O;
  assign O = 1;
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

module UBCSuB_37_37(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_37_37 U0 (Ci_0);
  UBOne_37 U1 (Ci_1);
  UBFA_37 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_37 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_37_36(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [37:36] S_0;
  output [37:36] S_1;
  input [37:36] X;
  input [37:36] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[37] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[37] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_36_36 U0 (Ci_0, Ci_1, S_0[36], S_1[36], X[36], Y[36]);
  UBCSuB_37_37 U1 (Co_0, Co_1, So_0, So_1, X[37], Y[37]);
endmodule

module UBZero_38_38(O);
  output [38:38] O;
  assign O[38] = 0;
endmodule

module UBOne_38(O);
  output O;
  assign O = 1;
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

module UBCSuB_38_38(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_38_38 U0 (Ci_0);
  UBOne_38 U1 (Ci_1);
  UBFA_38 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_38 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_39_39(O);
  output [39:39] O;
  assign O[39] = 0;
endmodule

module UBOne_39(O);
  output O;
  assign O = 1;
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

module UBCSuB_39_39(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_39_39 U0 (Ci_0);
  UBOne_39 U1 (Ci_1);
  UBFA_39 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_39 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_39_38(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [39:38] S_0;
  output [39:38] S_1;
  input [39:38] X;
  input [39:38] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[39] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[39] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_38_38 U0 (Ci_0, Ci_1, S_0[38], S_1[38], X[38], Y[38]);
  UBCSuB_39_39 U1 (Co_0, Co_1, So_0, So_1, X[39], Y[39]);
endmodule

module UBCSuB_39_36(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [39:36] S_0;
  output [39:36] S_1;
  input [39:36] X;
  input [39:36] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [39:38] So_0;
  wire [39:38] So_1;
  assign S_0[38] = ( So_0[38] & ( ~ Ci_0 ) ) | ( So_1[38] & Ci_0 );
  assign S_0[39] = ( So_0[39] & ( ~ Ci_0 ) ) | ( So_1[39] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[38] = ( So_0[38] & ( ~ Ci_1 ) ) | ( So_1[38] & Ci_1 );
  assign S_1[39] = ( So_0[39] & ( ~ Ci_1 ) ) | ( So_1[39] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_37_36 U0 (Ci_0, Ci_1, S_0[37:36], S_1[37:36], X[37:36], Y[37:36]);
  UBCSuB_39_38 U1 (Co_0, Co_1, So_0, So_1, X[39:38], Y[39:38]);
endmodule

module UBCSuB_39_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [39:32] S_0;
  output [39:32] S_1;
  input [39:32] X;
  input [39:32] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [39:36] So_0;
  wire [39:36] So_1;
  assign S_0[36] = ( So_0[36] & ( ~ Ci_0 ) ) | ( So_1[36] & Ci_0 );
  assign S_0[37] = ( So_0[37] & ( ~ Ci_0 ) ) | ( So_1[37] & Ci_0 );
  assign S_0[38] = ( So_0[38] & ( ~ Ci_0 ) ) | ( So_1[38] & Ci_0 );
  assign S_0[39] = ( So_0[39] & ( ~ Ci_0 ) ) | ( So_1[39] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[36] = ( So_0[36] & ( ~ Ci_1 ) ) | ( So_1[36] & Ci_1 );
  assign S_1[37] = ( So_0[37] & ( ~ Ci_1 ) ) | ( So_1[37] & Ci_1 );
  assign S_1[38] = ( So_0[38] & ( ~ Ci_1 ) ) | ( So_1[38] & Ci_1 );
  assign S_1[39] = ( So_0[39] & ( ~ Ci_1 ) ) | ( So_1[39] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_35_32 U0 (Ci_0, Ci_1, S_0[35:32], S_1[35:32], X[35:32], Y[35:32]);
  UBCSuB_39_36 U1 (Co_0, Co_1, So_0, So_1, X[39:36], Y[39:36]);
endmodule

module UBZero_40_40(O);
  output [40:40] O;
  assign O[40] = 0;
endmodule

module UBOne_40(O);
  output O;
  assign O = 1;
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

module UBCSuB_40_40(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_40_40 U0 (Ci_0);
  UBOne_40 U1 (Ci_1);
  UBFA_40 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_40 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_41_41(O);
  output [41:41] O;
  assign O[41] = 0;
endmodule

module UBOne_41(O);
  output O;
  assign O = 1;
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

module UBCSuB_41_41(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_41_41 U0 (Ci_0);
  UBOne_41 U1 (Ci_1);
  UBFA_41 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_41 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_41_40(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [41:40] S_0;
  output [41:40] S_1;
  input [41:40] X;
  input [41:40] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[41] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[41] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_40_40 U0 (Ci_0, Ci_1, S_0[40], S_1[40], X[40], Y[40]);
  UBCSuB_41_41 U1 (Co_0, Co_1, So_0, So_1, X[41], Y[41]);
endmodule

module UBZero_42_42(O);
  output [42:42] O;
  assign O[42] = 0;
endmodule

module UBOne_42(O);
  output O;
  assign O = 1;
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

module UBCSuB_42_42(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_42_42 U0 (Ci_0);
  UBOne_42 U1 (Ci_1);
  UBFA_42 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_42 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_43_43(O);
  output [43:43] O;
  assign O[43] = 0;
endmodule

module UBOne_43(O);
  output O;
  assign O = 1;
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

module UBCSuB_43_43(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_43_43 U0 (Ci_0);
  UBOne_43 U1 (Ci_1);
  UBFA_43 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_43 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_43_42(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [43:42] S_0;
  output [43:42] S_1;
  input [43:42] X;
  input [43:42] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[43] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[43] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_42_42 U0 (Ci_0, Ci_1, S_0[42], S_1[42], X[42], Y[42]);
  UBCSuB_43_43 U1 (Co_0, Co_1, So_0, So_1, X[43], Y[43]);
endmodule

module UBCSuB_43_40(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [43:40] S_0;
  output [43:40] S_1;
  input [43:40] X;
  input [43:40] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [43:42] So_0;
  wire [43:42] So_1;
  assign S_0[42] = ( So_0[42] & ( ~ Ci_0 ) ) | ( So_1[42] & Ci_0 );
  assign S_0[43] = ( So_0[43] & ( ~ Ci_0 ) ) | ( So_1[43] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[42] = ( So_0[42] & ( ~ Ci_1 ) ) | ( So_1[42] & Ci_1 );
  assign S_1[43] = ( So_0[43] & ( ~ Ci_1 ) ) | ( So_1[43] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_41_40 U0 (Ci_0, Ci_1, S_0[41:40], S_1[41:40], X[41:40], Y[41:40]);
  UBCSuB_43_42 U1 (Co_0, Co_1, So_0, So_1, X[43:42], Y[43:42]);
endmodule

module UBZero_44_44(O);
  output [44:44] O;
  assign O[44] = 0;
endmodule

module UBOne_44(O);
  output O;
  assign O = 1;
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

module UBCSuB_44_44(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_44_44 U0 (Ci_0);
  UBOne_44 U1 (Ci_1);
  UBFA_44 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_44 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_45_45(O);
  output [45:45] O;
  assign O[45] = 0;
endmodule

module UBOne_45(O);
  output O;
  assign O = 1;
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

module UBCSuB_45_45(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_45_45 U0 (Ci_0);
  UBOne_45 U1 (Ci_1);
  UBFA_45 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_45 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_45_44(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [45:44] S_0;
  output [45:44] S_1;
  input [45:44] X;
  input [45:44] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[45] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[45] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_44_44 U0 (Ci_0, Ci_1, S_0[44], S_1[44], X[44], Y[44]);
  UBCSuB_45_45 U1 (Co_0, Co_1, So_0, So_1, X[45], Y[45]);
endmodule

module UBZero_46_46(O);
  output [46:46] O;
  assign O[46] = 0;
endmodule

module UBOne_46(O);
  output O;
  assign O = 1;
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

module UBCSuB_46_46(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_46_46 U0 (Ci_0);
  UBOne_46 U1 (Ci_1);
  UBFA_46 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_46 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_47_47(O);
  output [47:47] O;
  assign O[47] = 0;
endmodule

module UBOne_47(O);
  output O;
  assign O = 1;
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

module UBCSuB_47_47(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_47_47 U0 (Ci_0);
  UBOne_47 U1 (Ci_1);
  UBFA_47 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_47 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_47_46(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [47:46] S_0;
  output [47:46] S_1;
  input [47:46] X;
  input [47:46] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[47] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[47] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_46_46 U0 (Ci_0, Ci_1, S_0[46], S_1[46], X[46], Y[46]);
  UBCSuB_47_47 U1 (Co_0, Co_1, So_0, So_1, X[47], Y[47]);
endmodule

module UBCSuB_47_44(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [47:44] S_0;
  output [47:44] S_1;
  input [47:44] X;
  input [47:44] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [47:46] So_0;
  wire [47:46] So_1;
  assign S_0[46] = ( So_0[46] & ( ~ Ci_0 ) ) | ( So_1[46] & Ci_0 );
  assign S_0[47] = ( So_0[47] & ( ~ Ci_0 ) ) | ( So_1[47] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[46] = ( So_0[46] & ( ~ Ci_1 ) ) | ( So_1[46] & Ci_1 );
  assign S_1[47] = ( So_0[47] & ( ~ Ci_1 ) ) | ( So_1[47] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_45_44 U0 (Ci_0, Ci_1, S_0[45:44], S_1[45:44], X[45:44], Y[45:44]);
  UBCSuB_47_46 U1 (Co_0, Co_1, So_0, So_1, X[47:46], Y[47:46]);
endmodule

module UBCSuB_47_40(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [47:40] S_0;
  output [47:40] S_1;
  input [47:40] X;
  input [47:40] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [47:44] So_0;
  wire [47:44] So_1;
  assign S_0[44] = ( So_0[44] & ( ~ Ci_0 ) ) | ( So_1[44] & Ci_0 );
  assign S_0[45] = ( So_0[45] & ( ~ Ci_0 ) ) | ( So_1[45] & Ci_0 );
  assign S_0[46] = ( So_0[46] & ( ~ Ci_0 ) ) | ( So_1[46] & Ci_0 );
  assign S_0[47] = ( So_0[47] & ( ~ Ci_0 ) ) | ( So_1[47] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[44] = ( So_0[44] & ( ~ Ci_1 ) ) | ( So_1[44] & Ci_1 );
  assign S_1[45] = ( So_0[45] & ( ~ Ci_1 ) ) | ( So_1[45] & Ci_1 );
  assign S_1[46] = ( So_0[46] & ( ~ Ci_1 ) ) | ( So_1[46] & Ci_1 );
  assign S_1[47] = ( So_0[47] & ( ~ Ci_1 ) ) | ( So_1[47] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_43_40 U0 (Ci_0, Ci_1, S_0[43:40], S_1[43:40], X[43:40], Y[43:40]);
  UBCSuB_47_44 U1 (Co_0, Co_1, So_0, So_1, X[47:44], Y[47:44]);
endmodule

module UBCSuB_47_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [47:32] S_0;
  output [47:32] S_1;
  input [47:32] X;
  input [47:32] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [47:40] So_0;
  wire [47:40] So_1;
  assign S_0[40] = ( So_0[40] & ( ~ Ci_0 ) ) | ( So_1[40] & Ci_0 );
  assign S_0[41] = ( So_0[41] & ( ~ Ci_0 ) ) | ( So_1[41] & Ci_0 );
  assign S_0[42] = ( So_0[42] & ( ~ Ci_0 ) ) | ( So_1[42] & Ci_0 );
  assign S_0[43] = ( So_0[43] & ( ~ Ci_0 ) ) | ( So_1[43] & Ci_0 );
  assign S_0[44] = ( So_0[44] & ( ~ Ci_0 ) ) | ( So_1[44] & Ci_0 );
  assign S_0[45] = ( So_0[45] & ( ~ Ci_0 ) ) | ( So_1[45] & Ci_0 );
  assign S_0[46] = ( So_0[46] & ( ~ Ci_0 ) ) | ( So_1[46] & Ci_0 );
  assign S_0[47] = ( So_0[47] & ( ~ Ci_0 ) ) | ( So_1[47] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[40] = ( So_0[40] & ( ~ Ci_1 ) ) | ( So_1[40] & Ci_1 );
  assign S_1[41] = ( So_0[41] & ( ~ Ci_1 ) ) | ( So_1[41] & Ci_1 );
  assign S_1[42] = ( So_0[42] & ( ~ Ci_1 ) ) | ( So_1[42] & Ci_1 );
  assign S_1[43] = ( So_0[43] & ( ~ Ci_1 ) ) | ( So_1[43] & Ci_1 );
  assign S_1[44] = ( So_0[44] & ( ~ Ci_1 ) ) | ( So_1[44] & Ci_1 );
  assign S_1[45] = ( So_0[45] & ( ~ Ci_1 ) ) | ( So_1[45] & Ci_1 );
  assign S_1[46] = ( So_0[46] & ( ~ Ci_1 ) ) | ( So_1[46] & Ci_1 );
  assign S_1[47] = ( So_0[47] & ( ~ Ci_1 ) ) | ( So_1[47] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_39_32 U0 (Ci_0, Ci_1, S_0[39:32], S_1[39:32], X[39:32], Y[39:32]);
  UBCSuB_47_40 U1 (Co_0, Co_1, So_0, So_1, X[47:40], Y[47:40]);
endmodule

module UBZero_48_48(O);
  output [48:48] O;
  assign O[48] = 0;
endmodule

module UBOne_48(O);
  output O;
  assign O = 1;
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

module UBCSuB_48_48(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_48_48 U0 (Ci_0);
  UBOne_48 U1 (Ci_1);
  UBFA_48 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_48 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_49_49(O);
  output [49:49] O;
  assign O[49] = 0;
endmodule

module UBOne_49(O);
  output O;
  assign O = 1;
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

module UBCSuB_49_49(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_49_49 U0 (Ci_0);
  UBOne_49 U1 (Ci_1);
  UBFA_49 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_49 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_49_48(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [49:48] S_0;
  output [49:48] S_1;
  input [49:48] X;
  input [49:48] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[49] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[49] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_48_48 U0 (Ci_0, Ci_1, S_0[48], S_1[48], X[48], Y[48]);
  UBCSuB_49_49 U1 (Co_0, Co_1, So_0, So_1, X[49], Y[49]);
endmodule

module UBZero_50_50(O);
  output [50:50] O;
  assign O[50] = 0;
endmodule

module UBOne_50(O);
  output O;
  assign O = 1;
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

module UBCSuB_50_50(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_50_50 U0 (Ci_0);
  UBOne_50 U1 (Ci_1);
  UBFA_50 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_50 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_51_51(O);
  output [51:51] O;
  assign O[51] = 0;
endmodule

module UBOne_51(O);
  output O;
  assign O = 1;
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

module UBCSuB_51_51(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_51_51 U0 (Ci_0);
  UBOne_51 U1 (Ci_1);
  UBFA_51 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_51 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_51_50(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [51:50] S_0;
  output [51:50] S_1;
  input [51:50] X;
  input [51:50] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[51] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[51] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_50_50 U0 (Ci_0, Ci_1, S_0[50], S_1[50], X[50], Y[50]);
  UBCSuB_51_51 U1 (Co_0, Co_1, So_0, So_1, X[51], Y[51]);
endmodule

module UBCSuB_51_48(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [51:48] S_0;
  output [51:48] S_1;
  input [51:48] X;
  input [51:48] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [51:50] So_0;
  wire [51:50] So_1;
  assign S_0[50] = ( So_0[50] & ( ~ Ci_0 ) ) | ( So_1[50] & Ci_0 );
  assign S_0[51] = ( So_0[51] & ( ~ Ci_0 ) ) | ( So_1[51] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[50] = ( So_0[50] & ( ~ Ci_1 ) ) | ( So_1[50] & Ci_1 );
  assign S_1[51] = ( So_0[51] & ( ~ Ci_1 ) ) | ( So_1[51] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_49_48 U0 (Ci_0, Ci_1, S_0[49:48], S_1[49:48], X[49:48], Y[49:48]);
  UBCSuB_51_50 U1 (Co_0, Co_1, So_0, So_1, X[51:50], Y[51:50]);
endmodule

module UBZero_52_52(O);
  output [52:52] O;
  assign O[52] = 0;
endmodule

module UBOne_52(O);
  output O;
  assign O = 1;
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

module UBCSuB_52_52(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_52_52 U0 (Ci_0);
  UBOne_52 U1 (Ci_1);
  UBFA_52 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_52 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_53_53(O);
  output [53:53] O;
  assign O[53] = 0;
endmodule

module UBOne_53(O);
  output O;
  assign O = 1;
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

module UBCSuB_53_53(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_53_53 U0 (Ci_0);
  UBOne_53 U1 (Ci_1);
  UBFA_53 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_53 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_53_52(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [53:52] S_0;
  output [53:52] S_1;
  input [53:52] X;
  input [53:52] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[53] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[53] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_52_52 U0 (Ci_0, Ci_1, S_0[52], S_1[52], X[52], Y[52]);
  UBCSuB_53_53 U1 (Co_0, Co_1, So_0, So_1, X[53], Y[53]);
endmodule

module UBZero_54_54(O);
  output [54:54] O;
  assign O[54] = 0;
endmodule

module UBOne_54(O);
  output O;
  assign O = 1;
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

module UBCSuB_54_54(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_54_54 U0 (Ci_0);
  UBOne_54 U1 (Ci_1);
  UBFA_54 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_54 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_55_55(O);
  output [55:55] O;
  assign O[55] = 0;
endmodule

module UBOne_55(O);
  output O;
  assign O = 1;
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

module UBCSuB_55_55(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_55_55 U0 (Ci_0);
  UBOne_55 U1 (Ci_1);
  UBFA_55 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_55 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_55_54(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [55:54] S_0;
  output [55:54] S_1;
  input [55:54] X;
  input [55:54] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[55] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[55] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_54_54 U0 (Ci_0, Ci_1, S_0[54], S_1[54], X[54], Y[54]);
  UBCSuB_55_55 U1 (Co_0, Co_1, So_0, So_1, X[55], Y[55]);
endmodule

module UBCSuB_55_52(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [55:52] S_0;
  output [55:52] S_1;
  input [55:52] X;
  input [55:52] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [55:54] So_0;
  wire [55:54] So_1;
  assign S_0[54] = ( So_0[54] & ( ~ Ci_0 ) ) | ( So_1[54] & Ci_0 );
  assign S_0[55] = ( So_0[55] & ( ~ Ci_0 ) ) | ( So_1[55] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[54] = ( So_0[54] & ( ~ Ci_1 ) ) | ( So_1[54] & Ci_1 );
  assign S_1[55] = ( So_0[55] & ( ~ Ci_1 ) ) | ( So_1[55] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_53_52 U0 (Ci_0, Ci_1, S_0[53:52], S_1[53:52], X[53:52], Y[53:52]);
  UBCSuB_55_54 U1 (Co_0, Co_1, So_0, So_1, X[55:54], Y[55:54]);
endmodule

module UBCSuB_55_48(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [55:48] S_0;
  output [55:48] S_1;
  input [55:48] X;
  input [55:48] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [55:52] So_0;
  wire [55:52] So_1;
  assign S_0[52] = ( So_0[52] & ( ~ Ci_0 ) ) | ( So_1[52] & Ci_0 );
  assign S_0[53] = ( So_0[53] & ( ~ Ci_0 ) ) | ( So_1[53] & Ci_0 );
  assign S_0[54] = ( So_0[54] & ( ~ Ci_0 ) ) | ( So_1[54] & Ci_0 );
  assign S_0[55] = ( So_0[55] & ( ~ Ci_0 ) ) | ( So_1[55] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[52] = ( So_0[52] & ( ~ Ci_1 ) ) | ( So_1[52] & Ci_1 );
  assign S_1[53] = ( So_0[53] & ( ~ Ci_1 ) ) | ( So_1[53] & Ci_1 );
  assign S_1[54] = ( So_0[54] & ( ~ Ci_1 ) ) | ( So_1[54] & Ci_1 );
  assign S_1[55] = ( So_0[55] & ( ~ Ci_1 ) ) | ( So_1[55] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_51_48 U0 (Ci_0, Ci_1, S_0[51:48], S_1[51:48], X[51:48], Y[51:48]);
  UBCSuB_55_52 U1 (Co_0, Co_1, So_0, So_1, X[55:52], Y[55:52]);
endmodule

module UBZero_56_56(O);
  output [56:56] O;
  assign O[56] = 0;
endmodule

module UBOne_56(O);
  output O;
  assign O = 1;
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

module UBCSuB_56_56(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_56_56 U0 (Ci_0);
  UBOne_56 U1 (Ci_1);
  UBFA_56 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_56 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_57_57(O);
  output [57:57] O;
  assign O[57] = 0;
endmodule

module UBOne_57(O);
  output O;
  assign O = 1;
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

module UBCSuB_57_57(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_57_57 U0 (Ci_0);
  UBOne_57 U1 (Ci_1);
  UBFA_57 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_57 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_57_56(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [57:56] S_0;
  output [57:56] S_1;
  input [57:56] X;
  input [57:56] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[57] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[57] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_56_56 U0 (Ci_0, Ci_1, S_0[56], S_1[56], X[56], Y[56]);
  UBCSuB_57_57 U1 (Co_0, Co_1, So_0, So_1, X[57], Y[57]);
endmodule

module UBZero_58_58(O);
  output [58:58] O;
  assign O[58] = 0;
endmodule

module UBOne_58(O);
  output O;
  assign O = 1;
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

module UBCSuB_58_58(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_58_58 U0 (Ci_0);
  UBOne_58 U1 (Ci_1);
  UBFA_58 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_58 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_59_59(O);
  output [59:59] O;
  assign O[59] = 0;
endmodule

module UBOne_59(O);
  output O;
  assign O = 1;
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

module UBCSuB_59_59(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_59_59 U0 (Ci_0);
  UBOne_59 U1 (Ci_1);
  UBFA_59 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_59 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_59_58(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [59:58] S_0;
  output [59:58] S_1;
  input [59:58] X;
  input [59:58] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[59] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[59] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_58_58 U0 (Ci_0, Ci_1, S_0[58], S_1[58], X[58], Y[58]);
  UBCSuB_59_59 U1 (Co_0, Co_1, So_0, So_1, X[59], Y[59]);
endmodule

module UBCSuB_59_56(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [59:56] S_0;
  output [59:56] S_1;
  input [59:56] X;
  input [59:56] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [59:58] So_0;
  wire [59:58] So_1;
  assign S_0[58] = ( So_0[58] & ( ~ Ci_0 ) ) | ( So_1[58] & Ci_0 );
  assign S_0[59] = ( So_0[59] & ( ~ Ci_0 ) ) | ( So_1[59] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[58] = ( So_0[58] & ( ~ Ci_1 ) ) | ( So_1[58] & Ci_1 );
  assign S_1[59] = ( So_0[59] & ( ~ Ci_1 ) ) | ( So_1[59] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_57_56 U0 (Ci_0, Ci_1, S_0[57:56], S_1[57:56], X[57:56], Y[57:56]);
  UBCSuB_59_58 U1 (Co_0, Co_1, So_0, So_1, X[59:58], Y[59:58]);
endmodule

module UBZero_60_60(O);
  output [60:60] O;
  assign O[60] = 0;
endmodule

module UBOne_60(O);
  output O;
  assign O = 1;
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

module UBCSuB_60_60(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_60_60 U0 (Ci_0);
  UBOne_60 U1 (Ci_1);
  UBFA_60 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_60 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_61_61(O);
  output [61:61] O;
  assign O[61] = 0;
endmodule

module UBOne_61(O);
  output O;
  assign O = 1;
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

module UBCSuB_61_61(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_61_61 U0 (Ci_0);
  UBOne_61 U1 (Ci_1);
  UBFA_61 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_61 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_61_60(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [61:60] S_0;
  output [61:60] S_1;
  input [61:60] X;
  input [61:60] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[61] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[61] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_60_60 U0 (Ci_0, Ci_1, S_0[60], S_1[60], X[60], Y[60]);
  UBCSuB_61_61 U1 (Co_0, Co_1, So_0, So_1, X[61], Y[61]);
endmodule

module UBZero_62_62(O);
  output [62:62] O;
  assign O[62] = 0;
endmodule

module UBOne_62(O);
  output O;
  assign O = 1;
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

module UBCSuB_62_62(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_62_62 U0 (Ci_0);
  UBOne_62 U1 (Ci_1);
  UBFA_62 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_62 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_63_63(O);
  output [63:63] O;
  assign O[63] = 0;
endmodule

module UBOne_63(O);
  output O;
  assign O = 1;
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

module UBCSuB_63_63(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_63_63 U0 (Ci_0);
  UBOne_63 U1 (Ci_1);
  UBFA_63 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_63 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_63_62(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [63:62] S_0;
  output [63:62] S_1;
  input [63:62] X;
  input [63:62] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[63] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[63] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_62_62 U0 (Ci_0, Ci_1, S_0[62], S_1[62], X[62], Y[62]);
  UBCSuB_63_63 U1 (Co_0, Co_1, So_0, So_1, X[63], Y[63]);
endmodule

module UBCSuB_63_60(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [63:60] S_0;
  output [63:60] S_1;
  input [63:60] X;
  input [63:60] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [63:62] So_0;
  wire [63:62] So_1;
  assign S_0[62] = ( So_0[62] & ( ~ Ci_0 ) ) | ( So_1[62] & Ci_0 );
  assign S_0[63] = ( So_0[63] & ( ~ Ci_0 ) ) | ( So_1[63] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[62] = ( So_0[62] & ( ~ Ci_1 ) ) | ( So_1[62] & Ci_1 );
  assign S_1[63] = ( So_0[63] & ( ~ Ci_1 ) ) | ( So_1[63] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_61_60 U0 (Ci_0, Ci_1, S_0[61:60], S_1[61:60], X[61:60], Y[61:60]);
  UBCSuB_63_62 U1 (Co_0, Co_1, So_0, So_1, X[63:62], Y[63:62]);
endmodule

module UBCSuB_63_56(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [63:56] S_0;
  output [63:56] S_1;
  input [63:56] X;
  input [63:56] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [63:60] So_0;
  wire [63:60] So_1;
  assign S_0[60] = ( So_0[60] & ( ~ Ci_0 ) ) | ( So_1[60] & Ci_0 );
  assign S_0[61] = ( So_0[61] & ( ~ Ci_0 ) ) | ( So_1[61] & Ci_0 );
  assign S_0[62] = ( So_0[62] & ( ~ Ci_0 ) ) | ( So_1[62] & Ci_0 );
  assign S_0[63] = ( So_0[63] & ( ~ Ci_0 ) ) | ( So_1[63] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[60] = ( So_0[60] & ( ~ Ci_1 ) ) | ( So_1[60] & Ci_1 );
  assign S_1[61] = ( So_0[61] & ( ~ Ci_1 ) ) | ( So_1[61] & Ci_1 );
  assign S_1[62] = ( So_0[62] & ( ~ Ci_1 ) ) | ( So_1[62] & Ci_1 );
  assign S_1[63] = ( So_0[63] & ( ~ Ci_1 ) ) | ( So_1[63] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_59_56 U0 (Ci_0, Ci_1, S_0[59:56], S_1[59:56], X[59:56], Y[59:56]);
  UBCSuB_63_60 U1 (Co_0, Co_1, So_0, So_1, X[63:60], Y[63:60]);
endmodule

module UBCSuB_63_48(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [63:48] S_0;
  output [63:48] S_1;
  input [63:48] X;
  input [63:48] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [63:56] So_0;
  wire [63:56] So_1;
  assign S_0[56] = ( So_0[56] & ( ~ Ci_0 ) ) | ( So_1[56] & Ci_0 );
  assign S_0[57] = ( So_0[57] & ( ~ Ci_0 ) ) | ( So_1[57] & Ci_0 );
  assign S_0[58] = ( So_0[58] & ( ~ Ci_0 ) ) | ( So_1[58] & Ci_0 );
  assign S_0[59] = ( So_0[59] & ( ~ Ci_0 ) ) | ( So_1[59] & Ci_0 );
  assign S_0[60] = ( So_0[60] & ( ~ Ci_0 ) ) | ( So_1[60] & Ci_0 );
  assign S_0[61] = ( So_0[61] & ( ~ Ci_0 ) ) | ( So_1[61] & Ci_0 );
  assign S_0[62] = ( So_0[62] & ( ~ Ci_0 ) ) | ( So_1[62] & Ci_0 );
  assign S_0[63] = ( So_0[63] & ( ~ Ci_0 ) ) | ( So_1[63] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[56] = ( So_0[56] & ( ~ Ci_1 ) ) | ( So_1[56] & Ci_1 );
  assign S_1[57] = ( So_0[57] & ( ~ Ci_1 ) ) | ( So_1[57] & Ci_1 );
  assign S_1[58] = ( So_0[58] & ( ~ Ci_1 ) ) | ( So_1[58] & Ci_1 );
  assign S_1[59] = ( So_0[59] & ( ~ Ci_1 ) ) | ( So_1[59] & Ci_1 );
  assign S_1[60] = ( So_0[60] & ( ~ Ci_1 ) ) | ( So_1[60] & Ci_1 );
  assign S_1[61] = ( So_0[61] & ( ~ Ci_1 ) ) | ( So_1[61] & Ci_1 );
  assign S_1[62] = ( So_0[62] & ( ~ Ci_1 ) ) | ( So_1[62] & Ci_1 );
  assign S_1[63] = ( So_0[63] & ( ~ Ci_1 ) ) | ( So_1[63] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_55_48 U0 (Ci_0, Ci_1, S_0[55:48], S_1[55:48], X[55:48], Y[55:48]);
  UBCSuB_63_56 U1 (Co_0, Co_1, So_0, So_1, X[63:56], Y[63:56]);
endmodule

module UBCSuB_63_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [63:32] S_0;
  output [63:32] S_1;
  input [63:32] X;
  input [63:32] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [63:48] So_0;
  wire [63:48] So_1;
  assign S_0[48] = ( So_0[48] & ( ~ Ci_0 ) ) | ( So_1[48] & Ci_0 );
  assign S_0[49] = ( So_0[49] & ( ~ Ci_0 ) ) | ( So_1[49] & Ci_0 );
  assign S_0[50] = ( So_0[50] & ( ~ Ci_0 ) ) | ( So_1[50] & Ci_0 );
  assign S_0[51] = ( So_0[51] & ( ~ Ci_0 ) ) | ( So_1[51] & Ci_0 );
  assign S_0[52] = ( So_0[52] & ( ~ Ci_0 ) ) | ( So_1[52] & Ci_0 );
  assign S_0[53] = ( So_0[53] & ( ~ Ci_0 ) ) | ( So_1[53] & Ci_0 );
  assign S_0[54] = ( So_0[54] & ( ~ Ci_0 ) ) | ( So_1[54] & Ci_0 );
  assign S_0[55] = ( So_0[55] & ( ~ Ci_0 ) ) | ( So_1[55] & Ci_0 );
  assign S_0[56] = ( So_0[56] & ( ~ Ci_0 ) ) | ( So_1[56] & Ci_0 );
  assign S_0[57] = ( So_0[57] & ( ~ Ci_0 ) ) | ( So_1[57] & Ci_0 );
  assign S_0[58] = ( So_0[58] & ( ~ Ci_0 ) ) | ( So_1[58] & Ci_0 );
  assign S_0[59] = ( So_0[59] & ( ~ Ci_0 ) ) | ( So_1[59] & Ci_0 );
  assign S_0[60] = ( So_0[60] & ( ~ Ci_0 ) ) | ( So_1[60] & Ci_0 );
  assign S_0[61] = ( So_0[61] & ( ~ Ci_0 ) ) | ( So_1[61] & Ci_0 );
  assign S_0[62] = ( So_0[62] & ( ~ Ci_0 ) ) | ( So_1[62] & Ci_0 );
  assign S_0[63] = ( So_0[63] & ( ~ Ci_0 ) ) | ( So_1[63] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[48] = ( So_0[48] & ( ~ Ci_1 ) ) | ( So_1[48] & Ci_1 );
  assign S_1[49] = ( So_0[49] & ( ~ Ci_1 ) ) | ( So_1[49] & Ci_1 );
  assign S_1[50] = ( So_0[50] & ( ~ Ci_1 ) ) | ( So_1[50] & Ci_1 );
  assign S_1[51] = ( So_0[51] & ( ~ Ci_1 ) ) | ( So_1[51] & Ci_1 );
  assign S_1[52] = ( So_0[52] & ( ~ Ci_1 ) ) | ( So_1[52] & Ci_1 );
  assign S_1[53] = ( So_0[53] & ( ~ Ci_1 ) ) | ( So_1[53] & Ci_1 );
  assign S_1[54] = ( So_0[54] & ( ~ Ci_1 ) ) | ( So_1[54] & Ci_1 );
  assign S_1[55] = ( So_0[55] & ( ~ Ci_1 ) ) | ( So_1[55] & Ci_1 );
  assign S_1[56] = ( So_0[56] & ( ~ Ci_1 ) ) | ( So_1[56] & Ci_1 );
  assign S_1[57] = ( So_0[57] & ( ~ Ci_1 ) ) | ( So_1[57] & Ci_1 );
  assign S_1[58] = ( So_0[58] & ( ~ Ci_1 ) ) | ( So_1[58] & Ci_1 );
  assign S_1[59] = ( So_0[59] & ( ~ Ci_1 ) ) | ( So_1[59] & Ci_1 );
  assign S_1[60] = ( So_0[60] & ( ~ Ci_1 ) ) | ( So_1[60] & Ci_1 );
  assign S_1[61] = ( So_0[61] & ( ~ Ci_1 ) ) | ( So_1[61] & Ci_1 );
  assign S_1[62] = ( So_0[62] & ( ~ Ci_1 ) ) | ( So_1[62] & Ci_1 );
  assign S_1[63] = ( So_0[63] & ( ~ Ci_1 ) ) | ( So_1[63] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_47_32 U0 (Ci_0, Ci_1, S_0[47:32], S_1[47:32], X[47:32], Y[47:32]);
  UBCSuB_63_48 U1 (Co_0, Co_1, So_0, So_1, X[63:48], Y[63:48]);
endmodule

module UBPriCSuA_63_0(S, X, Y, Cin);
  output [64:0] S;
  input Cin;
  input [63:0] X;
  input [63:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [63:32] S_0;
  wire [63:32] S_1;
  assign S[32] = ( S_0[32] & ( ~ Co ) ) | ( S_1[32] & Co );
  assign S[33] = ( S_0[33] & ( ~ Co ) ) | ( S_1[33] & Co );
  assign S[34] = ( S_0[34] & ( ~ Co ) ) | ( S_1[34] & Co );
  assign S[35] = ( S_0[35] & ( ~ Co ) ) | ( S_1[35] & Co );
  assign S[36] = ( S_0[36] & ( ~ Co ) ) | ( S_1[36] & Co );
  assign S[37] = ( S_0[37] & ( ~ Co ) ) | ( S_1[37] & Co );
  assign S[38] = ( S_0[38] & ( ~ Co ) ) | ( S_1[38] & Co );
  assign S[39] = ( S_0[39] & ( ~ Co ) ) | ( S_1[39] & Co );
  assign S[40] = ( S_0[40] & ( ~ Co ) ) | ( S_1[40] & Co );
  assign S[41] = ( S_0[41] & ( ~ Co ) ) | ( S_1[41] & Co );
  assign S[42] = ( S_0[42] & ( ~ Co ) ) | ( S_1[42] & Co );
  assign S[43] = ( S_0[43] & ( ~ Co ) ) | ( S_1[43] & Co );
  assign S[44] = ( S_0[44] & ( ~ Co ) ) | ( S_1[44] & Co );
  assign S[45] = ( S_0[45] & ( ~ Co ) ) | ( S_1[45] & Co );
  assign S[46] = ( S_0[46] & ( ~ Co ) ) | ( S_1[46] & Co );
  assign S[47] = ( S_0[47] & ( ~ Co ) ) | ( S_1[47] & Co );
  assign S[48] = ( S_0[48] & ( ~ Co ) ) | ( S_1[48] & Co );
  assign S[49] = ( S_0[49] & ( ~ Co ) ) | ( S_1[49] & Co );
  assign S[50] = ( S_0[50] & ( ~ Co ) ) | ( S_1[50] & Co );
  assign S[51] = ( S_0[51] & ( ~ Co ) ) | ( S_1[51] & Co );
  assign S[52] = ( S_0[52] & ( ~ Co ) ) | ( S_1[52] & Co );
  assign S[53] = ( S_0[53] & ( ~ Co ) ) | ( S_1[53] & Co );
  assign S[54] = ( S_0[54] & ( ~ Co ) ) | ( S_1[54] & Co );
  assign S[55] = ( S_0[55] & ( ~ Co ) ) | ( S_1[55] & Co );
  assign S[56] = ( S_0[56] & ( ~ Co ) ) | ( S_1[56] & Co );
  assign S[57] = ( S_0[57] & ( ~ Co ) ) | ( S_1[57] & Co );
  assign S[58] = ( S_0[58] & ( ~ Co ) ) | ( S_1[58] & Co );
  assign S[59] = ( S_0[59] & ( ~ Co ) ) | ( S_1[59] & Co );
  assign S[60] = ( S_0[60] & ( ~ Co ) ) | ( S_1[60] & Co );
  assign S[61] = ( S_0[61] & ( ~ Co ) ) | ( S_1[61] & Co );
  assign S[62] = ( S_0[62] & ( ~ Co ) ) | ( S_1[62] & Co );
  assign S[63] = ( S_0[63] & ( ~ Co ) ) | ( S_1[63] & Co );
  assign S[64] = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_31_0 U0 (Co, S[31:0], X[31:0], Y[31:0], Cin);
  UBCSuB_63_32 U1 (C_0, C_1, S_0, S_1, X[63:32], Y[63:32]);
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

module UBCSu_15_0_63_0 (S, X, Y);
  output [64:0] S;
  input [15:0] X;
  input [63:0] Y;
  wire [63:0] Z;
  UBExtender_15_0_6000 U0 (Z[63:0], X[15:0]);
  UBPureCSu_63_0 U1 (S[64:0], Z[63:0], Y[63:0]);
endmodule

module UBExtender_15_0_6000 (O, I);
  output [63:0] O;
  input [15:0] I;
  UBCON_15_0 U0 (O[15:0], I[15:0]);
  UBZero_63_16 U1 (O[63:16]);
endmodule

module UBPureCSu_63_0 (S, X, Y);
  output [64:0] S;
  input [63:0] X;
  input [63:0] Y;
  wire C;
  UBPriCSuA_63_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

