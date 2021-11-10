/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCSu_26_0_26_0

  Operand-1 length: 27
  Operand-2 length: 27
  Two-operand addition algorithm: Conditional sum adder
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

module UBCSuB_6_4(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [6:4] S_0;
  output [6:4] S_1;
  input [6:4] X;
  input [6:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [6:6] So_0;
  wire [6:6] So_1;
  assign S_0[6] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[6] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_5_4 U0 (Ci_0, Ci_1, S_0[5:4], S_1[5:4], X[5:4], Y[5:4]);
  UBCSuB_6_6 U1 (Co_0, Co_1, So_0, So_1, X[6], Y[6]);
endmodule

module UBHCSuB_6_0(C, S, X, Y, Ci);
  output C;
  output [6:0] S;
  input Ci;
  input [6:0] X;
  input [6:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [6:4] S_0;
  wire [6:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Co ) ) | ( S_1[4] & Co );
  assign S[5] = ( S_0[5] & ( ~ Co ) ) | ( S_1[5] & Co );
  assign S[6] = ( S_0[6] & ( ~ Co ) ) | ( S_1[6] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_3_0 U0 (Co, S[3:0], X[3:0], Y[3:0], Ci);
  UBCSuB_6_4 U1 (C_0, C_1, S_0, S_1, X[6:4], Y[6:4]);
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

module UBCSuB_8_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [8:7] S_0;
  output [8:7] S_1;
  input [8:7] X;
  input [8:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[8] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[8] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_7_7 U0 (Ci_0, Ci_1, S_0[7], S_1[7], X[7], Y[7]);
  UBCSuB_8_8 U1 (Co_0, Co_1, So_0, So_1, X[8], Y[8]);
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

module UBCSuB_10_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [10:9] S_0;
  output [10:9] S_1;
  input [10:9] X;
  input [10:9] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[10] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[10] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_9_9 U0 (Ci_0, Ci_1, S_0[9], S_1[9], X[9], Y[9]);
  UBCSuB_10_10 U1 (Co_0, Co_1, So_0, So_1, X[10], Y[10]);
endmodule

module UBCSuB_10_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [10:7] S_0;
  output [10:7] S_1;
  input [10:7] X;
  input [10:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [10:9] So_0;
  wire [10:9] So_1;
  assign S_0[9] = ( So_0[9] & ( ~ Ci_0 ) ) | ( So_1[9] & Ci_0 );
  assign S_0[10] = ( So_0[10] & ( ~ Ci_0 ) ) | ( So_1[10] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[9] = ( So_0[9] & ( ~ Ci_1 ) ) | ( So_1[9] & Ci_1 );
  assign S_1[10] = ( So_0[10] & ( ~ Ci_1 ) ) | ( So_1[10] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_8_7 U0 (Ci_0, Ci_1, S_0[8:7], S_1[8:7], X[8:7], Y[8:7]);
  UBCSuB_10_9 U1 (Co_0, Co_1, So_0, So_1, X[10:9], Y[10:9]);
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

module UBCSuB_12_11(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [12:11] S_0;
  output [12:11] S_1;
  input [12:11] X;
  input [12:11] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[12] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[12] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_11_11 U0 (Ci_0, Ci_1, S_0[11], S_1[11], X[11], Y[11]);
  UBCSuB_12_12 U1 (Co_0, Co_1, So_0, So_1, X[12], Y[12]);
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

module UBCSuB_13_11(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [13:11] S_0;
  output [13:11] S_1;
  input [13:11] X;
  input [13:11] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [13:13] So_0;
  wire [13:13] So_1;
  assign S_0[13] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[13] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_12_11 U0 (Ci_0, Ci_1, S_0[12:11], S_1[12:11], X[12:11], Y[12:11]);
  UBCSuB_13_13 U1 (Co_0, Co_1, So_0, So_1, X[13], Y[13]);
endmodule

module UBCSuB_13_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [13:7] S_0;
  output [13:7] S_1;
  input [13:7] X;
  input [13:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [13:11] So_0;
  wire [13:11] So_1;
  assign S_0[11] = ( So_0[11] & ( ~ Ci_0 ) ) | ( So_1[11] & Ci_0 );
  assign S_0[12] = ( So_0[12] & ( ~ Ci_0 ) ) | ( So_1[12] & Ci_0 );
  assign S_0[13] = ( So_0[13] & ( ~ Ci_0 ) ) | ( So_1[13] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[11] = ( So_0[11] & ( ~ Ci_1 ) ) | ( So_1[11] & Ci_1 );
  assign S_1[12] = ( So_0[12] & ( ~ Ci_1 ) ) | ( So_1[12] & Ci_1 );
  assign S_1[13] = ( So_0[13] & ( ~ Ci_1 ) ) | ( So_1[13] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_10_7 U0 (Ci_0, Ci_1, S_0[10:7], S_1[10:7], X[10:7], Y[10:7]);
  UBCSuB_13_11 U1 (Co_0, Co_1, So_0, So_1, X[13:11], Y[13:11]);
endmodule

module UBHCSuB_13_0(C, S, X, Y, Ci);
  output C;
  output [13:0] S;
  input Ci;
  input [13:0] X;
  input [13:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [13:7] S_0;
  wire [13:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Co ) ) | ( S_1[7] & Co );
  assign S[8] = ( S_0[8] & ( ~ Co ) ) | ( S_1[8] & Co );
  assign S[9] = ( S_0[9] & ( ~ Co ) ) | ( S_1[9] & Co );
  assign S[10] = ( S_0[10] & ( ~ Co ) ) | ( S_1[10] & Co );
  assign S[11] = ( S_0[11] & ( ~ Co ) ) | ( S_1[11] & Co );
  assign S[12] = ( S_0[12] & ( ~ Co ) ) | ( S_1[12] & Co );
  assign S[13] = ( S_0[13] & ( ~ Co ) ) | ( S_1[13] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_6_0 U0 (Co, S[6:0], X[6:0], Y[6:0], Ci);
  UBCSuB_13_7 U1 (C_0, C_1, S_0, S_1, X[13:7], Y[13:7]);
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

module UBCSuB_17_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [17:14] S_0;
  output [17:14] S_1;
  input [17:14] X;
  input [17:14] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [17:16] So_0;
  wire [17:16] So_1;
  assign S_0[16] = ( So_0[16] & ( ~ Ci_0 ) ) | ( So_1[16] & Ci_0 );
  assign S_0[17] = ( So_0[17] & ( ~ Ci_0 ) ) | ( So_1[17] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[16] = ( So_0[16] & ( ~ Ci_1 ) ) | ( So_1[16] & Ci_1 );
  assign S_1[17] = ( So_0[17] & ( ~ Ci_1 ) ) | ( So_1[17] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_15_14 U0 (Ci_0, Ci_1, S_0[15:14], S_1[15:14], X[15:14], Y[15:14]);
  UBCSuB_17_16 U1 (Co_0, Co_1, So_0, So_1, X[17:16], Y[17:16]);
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

module UBCSuB_20_18(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [20:18] S_0;
  output [20:18] S_1;
  input [20:18] X;
  input [20:18] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [20:20] So_0;
  wire [20:20] So_1;
  assign S_0[20] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[20] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_19_18 U0 (Ci_0, Ci_1, S_0[19:18], S_1[19:18], X[19:18], Y[19:18]);
  UBCSuB_20_20 U1 (Co_0, Co_1, So_0, So_1, X[20], Y[20]);
endmodule

module UBCSuB_20_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [20:14] S_0;
  output [20:14] S_1;
  input [20:14] X;
  input [20:14] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [20:18] So_0;
  wire [20:18] So_1;
  assign S_0[18] = ( So_0[18] & ( ~ Ci_0 ) ) | ( So_1[18] & Ci_0 );
  assign S_0[19] = ( So_0[19] & ( ~ Ci_0 ) ) | ( So_1[19] & Ci_0 );
  assign S_0[20] = ( So_0[20] & ( ~ Ci_0 ) ) | ( So_1[20] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[18] = ( So_0[18] & ( ~ Ci_1 ) ) | ( So_1[18] & Ci_1 );
  assign S_1[19] = ( So_0[19] & ( ~ Ci_1 ) ) | ( So_1[19] & Ci_1 );
  assign S_1[20] = ( So_0[20] & ( ~ Ci_1 ) ) | ( So_1[20] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_17_14 U0 (Ci_0, Ci_1, S_0[17:14], S_1[17:14], X[17:14], Y[17:14]);
  UBCSuB_20_18 U1 (Co_0, Co_1, So_0, So_1, X[20:18], Y[20:18]);
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

module UBCSuB_22_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [22:21] S_0;
  output [22:21] S_1;
  input [22:21] X;
  input [22:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[22] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[22] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_21_21 U0 (Ci_0, Ci_1, S_0[21], S_1[21], X[21], Y[21]);
  UBCSuB_22_22 U1 (Co_0, Co_1, So_0, So_1, X[22], Y[22]);
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

module UBCSuB_23_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [23:21] S_0;
  output [23:21] S_1;
  input [23:21] X;
  input [23:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [23:23] So_0;
  wire [23:23] So_1;
  assign S_0[23] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[23] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_22_21 U0 (Ci_0, Ci_1, S_0[22:21], S_1[22:21], X[22:21], Y[22:21]);
  UBCSuB_23_23 U1 (Co_0, Co_1, So_0, So_1, X[23], Y[23]);
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

module UBCSuB_26_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [26:24] S_0;
  output [26:24] S_1;
  input [26:24] X;
  input [26:24] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [26:26] So_0;
  wire [26:26] So_1;
  assign S_0[26] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[26] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_25_24 U0 (Ci_0, Ci_1, S_0[25:24], S_1[25:24], X[25:24], Y[25:24]);
  UBCSuB_26_26 U1 (Co_0, Co_1, So_0, So_1, X[26], Y[26]);
endmodule

module UBCSuB_26_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [26:21] S_0;
  output [26:21] S_1;
  input [26:21] X;
  input [26:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [26:24] So_0;
  wire [26:24] So_1;
  assign S_0[24] = ( So_0[24] & ( ~ Ci_0 ) ) | ( So_1[24] & Ci_0 );
  assign S_0[25] = ( So_0[25] & ( ~ Ci_0 ) ) | ( So_1[25] & Ci_0 );
  assign S_0[26] = ( So_0[26] & ( ~ Ci_0 ) ) | ( So_1[26] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[24] = ( So_0[24] & ( ~ Ci_1 ) ) | ( So_1[24] & Ci_1 );
  assign S_1[25] = ( So_0[25] & ( ~ Ci_1 ) ) | ( So_1[25] & Ci_1 );
  assign S_1[26] = ( So_0[26] & ( ~ Ci_1 ) ) | ( So_1[26] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_23_21 U0 (Ci_0, Ci_1, S_0[23:21], S_1[23:21], X[23:21], Y[23:21]);
  UBCSuB_26_24 U1 (Co_0, Co_1, So_0, So_1, X[26:24], Y[26:24]);
endmodule

module UBCSuB_26_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [26:14] S_0;
  output [26:14] S_1;
  input [26:14] X;
  input [26:14] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [26:21] So_0;
  wire [26:21] So_1;
  assign S_0[21] = ( So_0[21] & ( ~ Ci_0 ) ) | ( So_1[21] & Ci_0 );
  assign S_0[22] = ( So_0[22] & ( ~ Ci_0 ) ) | ( So_1[22] & Ci_0 );
  assign S_0[23] = ( So_0[23] & ( ~ Ci_0 ) ) | ( So_1[23] & Ci_0 );
  assign S_0[24] = ( So_0[24] & ( ~ Ci_0 ) ) | ( So_1[24] & Ci_0 );
  assign S_0[25] = ( So_0[25] & ( ~ Ci_0 ) ) | ( So_1[25] & Ci_0 );
  assign S_0[26] = ( So_0[26] & ( ~ Ci_0 ) ) | ( So_1[26] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[21] = ( So_0[21] & ( ~ Ci_1 ) ) | ( So_1[21] & Ci_1 );
  assign S_1[22] = ( So_0[22] & ( ~ Ci_1 ) ) | ( So_1[22] & Ci_1 );
  assign S_1[23] = ( So_0[23] & ( ~ Ci_1 ) ) | ( So_1[23] & Ci_1 );
  assign S_1[24] = ( So_0[24] & ( ~ Ci_1 ) ) | ( So_1[24] & Ci_1 );
  assign S_1[25] = ( So_0[25] & ( ~ Ci_1 ) ) | ( So_1[25] & Ci_1 );
  assign S_1[26] = ( So_0[26] & ( ~ Ci_1 ) ) | ( So_1[26] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_20_14 U0 (Ci_0, Ci_1, S_0[20:14], S_1[20:14], X[20:14], Y[20:14]);
  UBCSuB_26_21 U1 (Co_0, Co_1, So_0, So_1, X[26:21], Y[26:21]);
endmodule

module UBPriCSuA_26_0(S, X, Y, Cin);
  output [27:0] S;
  input Cin;
  input [26:0] X;
  input [26:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [26:14] S_0;
  wire [26:14] S_1;
  assign S[14] = ( S_0[14] & ( ~ Co ) ) | ( S_1[14] & Co );
  assign S[15] = ( S_0[15] & ( ~ Co ) ) | ( S_1[15] & Co );
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
  assign S[27] = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_13_0 U0 (Co, S[13:0], X[13:0], Y[13:0], Cin);
  UBCSuB_26_14 U1 (C_0, C_1, S_0, S_1, X[26:14], Y[26:14]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCSu_26_0_26_0 (S, X, Y);
  output [27:0] S;
  input [26:0] X;
  input [26:0] Y;
  UBPureCSu_26_0 U0 (S[27:0], X[26:0], Y[26:0]);
endmodule

module UBPureCSu_26_0 (S, X, Y);
  output [27:0] S;
  input [26:0] X;
  input [26:0] Y;
  wire C;
  UBPriCSuA_26_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

