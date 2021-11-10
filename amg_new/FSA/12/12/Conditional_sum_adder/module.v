/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCSu_11_0_11_0

  Operand-1 length: 12
  Operand-2 length: 12
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

module UBHCSuB_2_0(C, S, X, Y, Ci);
  output C;
  output [2:0] S;
  input Ci;
  input [2:0] X;
  input [2:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire S_0;
  wire S_1;
  assign S[2] = ( S_0 & ( ~ Co ) ) | ( S_1 & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_1_0 U0 (Co, S[1:0], X[1:0], Y[1:0], Ci);
  UBCSuB_2_2 U1 (C_0, C_1, S_0, S_1, X[2], Y[2]);
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

module UBCSuB_4_3(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [4:3] S_0;
  output [4:3] S_1;
  input [4:3] X;
  input [4:3] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[4] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[4] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_3_3 U0 (Ci_0, Ci_1, S_0[3], S_1[3], X[3], Y[3]);
  UBCSuB_4_4 U1 (Co_0, Co_1, So_0, So_1, X[4], Y[4]);
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

module UBCSuB_5_3(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [5:3] S_0;
  output [5:3] S_1;
  input [5:3] X;
  input [5:3] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [5:5] So_0;
  wire [5:5] So_1;
  assign S_0[5] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[5] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_4_3 U0 (Ci_0, Ci_1, S_0[4:3], S_1[4:3], X[4:3], Y[4:3]);
  UBCSuB_5_5 U1 (Co_0, Co_1, So_0, So_1, X[5], Y[5]);
endmodule

module UBHCSuB_5_0(C, S, X, Y, Ci);
  output C;
  output [5:0] S;
  input Ci;
  input [5:0] X;
  input [5:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [5:3] S_0;
  wire [5:3] S_1;
  assign S[3] = ( S_0[3] & ( ~ Co ) ) | ( S_1[3] & Co );
  assign S[4] = ( S_0[4] & ( ~ Co ) ) | ( S_1[4] & Co );
  assign S[5] = ( S_0[5] & ( ~ Co ) ) | ( S_1[5] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_2_0 U0 (Co, S[2:0], X[2:0], Y[2:0], Ci);
  UBCSuB_5_3 U1 (C_0, C_1, S_0, S_1, X[5:3], Y[5:3]);
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

module UBCSuB_8_6(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [8:6] S_0;
  output [8:6] S_1;
  input [8:6] X;
  input [8:6] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [8:8] So_0;
  wire [8:8] So_1;
  assign S_0[8] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[8] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_7_6 U0 (Ci_0, Ci_1, S_0[7:6], S_1[7:6], X[7:6], Y[7:6]);
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

module UBCSuB_11_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [11:9] S_0;
  output [11:9] S_1;
  input [11:9] X;
  input [11:9] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [11:11] So_0;
  wire [11:11] So_1;
  assign S_0[11] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[11] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_10_9 U0 (Ci_0, Ci_1, S_0[10:9], S_1[10:9], X[10:9], Y[10:9]);
  UBCSuB_11_11 U1 (Co_0, Co_1, So_0, So_1, X[11], Y[11]);
endmodule

module UBCSuB_11_6(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [11:6] S_0;
  output [11:6] S_1;
  input [11:6] X;
  input [11:6] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [11:9] So_0;
  wire [11:9] So_1;
  assign S_0[9] = ( So_0[9] & ( ~ Ci_0 ) ) | ( So_1[9] & Ci_0 );
  assign S_0[10] = ( So_0[10] & ( ~ Ci_0 ) ) | ( So_1[10] & Ci_0 );
  assign S_0[11] = ( So_0[11] & ( ~ Ci_0 ) ) | ( So_1[11] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[9] = ( So_0[9] & ( ~ Ci_1 ) ) | ( So_1[9] & Ci_1 );
  assign S_1[10] = ( So_0[10] & ( ~ Ci_1 ) ) | ( So_1[10] & Ci_1 );
  assign S_1[11] = ( So_0[11] & ( ~ Ci_1 ) ) | ( So_1[11] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_8_6 U0 (Ci_0, Ci_1, S_0[8:6], S_1[8:6], X[8:6], Y[8:6]);
  UBCSuB_11_9 U1 (Co_0, Co_1, So_0, So_1, X[11:9], Y[11:9]);
endmodule

module UBPriCSuA_11_0(S, X, Y, Cin);
  output [12:0] S;
  input Cin;
  input [11:0] X;
  input [11:0] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [11:6] S_0;
  wire [11:6] S_1;
  assign S[6] = ( S_0[6] & ( ~ Co ) ) | ( S_1[6] & Co );
  assign S[7] = ( S_0[7] & ( ~ Co ) ) | ( S_1[7] & Co );
  assign S[8] = ( S_0[8] & ( ~ Co ) ) | ( S_1[8] & Co );
  assign S[9] = ( S_0[9] & ( ~ Co ) ) | ( S_1[9] & Co );
  assign S[10] = ( S_0[10] & ( ~ Co ) ) | ( S_1[10] & Co );
  assign S[11] = ( S_0[11] & ( ~ Co ) ) | ( S_1[11] & Co );
  assign S[12] = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_5_0 U0 (Co, S[5:0], X[5:0], Y[5:0], Cin);
  UBCSuB_11_6 U1 (C_0, C_1, S_0, S_1, X[11:6], Y[11:6]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCSu_11_0_11_0 (S, X, Y);
  output [12:0] S;
  input [11:0] X;
  input [11:0] Y;
  UBPureCSu_11_0 U0 (S[12:0], X[11:0], Y[11:0]);
endmodule

module UBPureCSu_11_0 (S, X, Y);
  output [12:0] S;
  input [11:0] X;
  input [11:0] Y;
  wire C;
  UBPriCSuA_11_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

