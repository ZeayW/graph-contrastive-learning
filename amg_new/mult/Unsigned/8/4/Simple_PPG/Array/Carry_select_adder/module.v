/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_7_0_3_000

  Number system: Unsigned binary
  Multiplicand length: 8
  Multiplier length: 4
  Partial product generation: Simple PPG
  Partial product accumulation: Array
  Final stage addition: Carry select adder
----------------------------------------------------------------------------*/

module UB1BPPG_0_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1DCON_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBHA_1(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBFA_7(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_8(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBHA_2(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBOne_4(O);
  output O;
  assign O = 1;
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBCSlB_4_4(Co, S, X, Y, Ci);
  output Co;
  output [4:4] S;
  input Ci;
  input [4:4] X;
  input [4:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [4:4] S_0;
  wire [4:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Ci ) ) | ( S_1[4] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_4 U0 (Ci_1);
  UBZero_4_4 U1 (Ci_0);
  UBRCB_4_4 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_4_4 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_5(O);
  output O;
  assign O = 1;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBCSlB_6_5(Co, S, X, Y, Ci);
  output Co;
  output [6:5] S;
  input Ci;
  input [6:5] X;
  input [6:5] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [6:5] S_0;
  wire [6:5] S_1;
  assign S[5] = ( S_0[5] & ( ~ Ci ) ) | ( S_1[5] & Ci );
  assign S[6] = ( S_0[6] & ( ~ Ci ) ) | ( S_1[6] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_5 U0 (Ci_1);
  UBZero_5_5 U1 (Ci_0);
  UBRCB_6_5 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_6_5 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBCSlB_9_7(Co, S, X, Y, Ci);
  output Co;
  output [9:7] S;
  input Ci;
  input [9:7] X;
  input [9:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [9:7] S_0;
  wire [9:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Ci ) ) | ( S_1[7] & Ci );
  assign S[8] = ( S_0[8] & ( ~ Ci ) ) | ( S_1[8] & Ci );
  assign S[9] = ( S_0[9] & ( ~ Ci ) ) | ( S_1[9] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_7 U0 (Ci_1);
  UBZero_7_7 U1 (Ci_0);
  UBRCB_9_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_9_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_10(O);
  output O;
  assign O = 1;
endmodule

module UBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
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

module UBCSlB_10_10(Co, S, X, Y, Ci);
  output Co;
  output [10:10] S;
  input Ci;
  input [10:10] X;
  input [10:10] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [10:10] S_0;
  wire [10:10] S_1;
  assign S[10] = ( S_0[10] & ( ~ Ci ) ) | ( S_1[10] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_10 U0 (Ci_1);
  UBZero_10_10 U1 (Ci_0);
  UBRCB_10_10 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_10_10 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBPriCSlA_10_3(S, X, Y, Cin);
  output [11:3] S;
  input Cin;
  input [10:3] X;
  input [10:3] Y;
  wire C0;
  wire C1;
  wire C2;
  wire C3;
  UBRCB_3_3 U0 (C0, S[3], X[3], Y[3], Cin);
  UBCSlB_4_4 U1 (C1, S[4], X[4], Y[4], C0);
  UBCSlB_6_5 U2 (C2, S[6:5], X[6:5], Y[6:5], C1);
  UBCSlB_9_7 U3 (C3, S[9:7], X[9:7], Y[9:7], C2);
  UBCSlB_10_10 U4 (S[11], S[10], X[10], Y[10], C3);
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UB1DCON_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module Multiplier_7_0_3_000(P, IN1, IN2);
  output [11:0] P;
  input [7:0] IN1;
  input [3:0] IN2;
  wire [11:0] W;
  assign P[0] = W[0];
  assign P[1] = W[1];
  assign P[2] = W[2];
  assign P[3] = W[3];
  assign P[4] = W[4];
  assign P[5] = W[5];
  assign P[6] = W[6];
  assign P[7] = W[7];
  assign P[8] = W[8];
  assign P[9] = W[9];
  assign P[10] = W[10];
  assign P[11] = W[11];
  MultUB_STD_ARY_CS000 U0 (W, IN1, IN2);
endmodule

module CSA_7_0_8_1_9_2 (C, S, X, Y, Z);
  output [9:2] C;
  output [9:0] S;
  input [7:0] X;
  input [8:1] Y;
  input [9:2] Z;
  UB1DCON_0 U0 (S[0], X[0]);
  UBHA_1 U1 (C[2], S[1], Y[1], X[1]);
  PureCSA_7_2 U2 (C[8:3], S[7:2], Z[7:2], Y[7:2], X[7:2]);
  UBHA_8 U3 (C[9], S[8], Z[8], Y[8]);
  UB1DCON_9 U4 (S[9], Z[9]);
endmodule

module CSA_9_0_9_2_10_3 (C, S, X, Y, Z);
  output [10:3] C;
  output [10:0] S;
  input [9:0] X;
  input [9:2] Y;
  input [10:3] Z;
  UBCON_1_0 U0 (S[1:0], X[1:0]);
  UBHA_2 U1 (C[3], S[2], Y[2], X[2]);
  PureCSA_9_3 U2 (C[10:4], S[9:3], Z[9:3], Y[9:3], X[9:3]);
  UB1DCON_10 U3 (S[10], Z[10]);
endmodule

module MultUB_STD_ARY_CS000 (P, IN1, IN2);
  output [11:0] P;
  input [7:0] IN1;
  input [3:0] IN2;
  wire [7:0] PP0;
  wire [8:1] PP1;
  wire [9:2] PP2;
  wire [10:3] PP3;
  wire [10:3] S1;
  wire [10:0] S2;
  UBPPG_7_0_3_0 U0 (PP0, PP1, PP2, PP3, IN1, IN2);
  UBARYACC_7_0_8_1_000 U1 (S1, S2, PP0, PP1, PP2, PP3);
  UBCSe_10_3_10_0 U2 (P, S1, S2);
endmodule

module PureCSA_7_2 (C, S, X, Y, Z);
  output [8:3] C;
  output [7:2] S;
  input [7:2] X;
  input [7:2] Y;
  input [7:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U5 (C[8], S[7], X[7], Y[7], Z[7]);
endmodule

module PureCSA_9_3 (C, S, X, Y, Z);
  output [10:4] C;
  output [9:3] S;
  input [9:3] X;
  input [9:3] Y;
  input [9:3] Z;
  UBFA_3 U0 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U1 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U2 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U3 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U4 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U5 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U6 (C[10], S[9], X[9], Y[9], Z[9]);
endmodule

module UBARYACC_7_0_8_1_000 (S1, S2, PP0, PP1, PP2, PP3);
  output [10:3] S1;
  output [10:0] S2;
  input [7:0] PP0;
  input [8:1] PP1;
  input [9:2] PP2;
  input [10:3] PP3;
  wire [9:2] IC0;
  wire [9:0] IS0;
  CSA_7_0_8_1_9_2 U0 (IC0, IS0, PP0, PP1, PP2);
  CSA_9_0_9_2_10_3 U1 (S1, S2, IS0, IC0, PP3);
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_2_0 (O, I);
  output [2:0] O;
  input [2:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
endmodule

module UBCSe_10_3_10_0 (S, X, Y);
  output [11:0] S;
  input [10:3] X;
  input [10:0] Y;
  UBPureCSe_10_3 U0 (S[11:3], X[10:3], Y[10:3]);
  UBCON_2_0 U1 (S[2:0], Y[2:0]);
endmodule

module UBPPG_7_0_3_0 (PP0, PP1, PP2, PP3, IN1, IN2);
  output [7:0] PP0;
  output [8:1] PP1;
  output [9:2] PP2;
  output [10:3] PP3;
  input [7:0] IN1;
  input [3:0] IN2;
  UBVPPG_7_0_0 U0 (PP0, IN1, IN2[0]);
  UBVPPG_7_0_1 U1 (PP1, IN1, IN2[1]);
  UBVPPG_7_0_2 U2 (PP2, IN1, IN2[2]);
  UBVPPG_7_0_3 U3 (PP3, IN1, IN2[3]);
endmodule

module UBPureCSe_10_3 (S, X, Y);
  output [11:3] S;
  input [10:3] X;
  input [10:3] Y;
  wire C;
  UBPriCSlA_10_3 U0 (S, X, Y, C);
  UBZero_3_3 U1 (C);
endmodule

module UBRCB_10_10 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_10 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_3_3 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_3 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_4_4 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_4 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_6_5 (Co, S, X, Y, Ci);
  output Co;
  output [6:5] S;
  input Ci;
  input [6:5] X;
  input [6:5] Y;
  wire C6;
  UBFA_5 U0 (C6, S[5], X[5], Y[5], Ci);
  UBFA_6 U1 (Co, S[6], X[6], Y[6], C6);
endmodule

module UBRCB_9_7 (Co, S, X, Y, Ci);
  output Co;
  output [9:7] S;
  input Ci;
  input [9:7] X;
  input [9:7] Y;
  wire C8;
  wire C9;
  UBFA_7 U0 (C8, S[7], X[7], Y[7], Ci);
  UBFA_8 U1 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U2 (Co, S[9], X[9], Y[9], C9);
endmodule

module UBVPPG_7_0_0 (O, IN1, IN2);
  output [7:0] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_0 U0 (O[0], IN1[0], IN2);
  UB1BPPG_1_0 U1 (O[1], IN1[1], IN2);
  UB1BPPG_2_0 U2 (O[2], IN1[2], IN2);
  UB1BPPG_3_0 U3 (O[3], IN1[3], IN2);
  UB1BPPG_4_0 U4 (O[4], IN1[4], IN2);
  UB1BPPG_5_0 U5 (O[5], IN1[5], IN2);
  UB1BPPG_6_0 U6 (O[6], IN1[6], IN2);
  UB1BPPG_7_0 U7 (O[7], IN1[7], IN2);
endmodule

module UBVPPG_7_0_1 (O, IN1, IN2);
  output [8:1] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_1 U0 (O[1], IN1[0], IN2);
  UB1BPPG_1_1 U1 (O[2], IN1[1], IN2);
  UB1BPPG_2_1 U2 (O[3], IN1[2], IN2);
  UB1BPPG_3_1 U3 (O[4], IN1[3], IN2);
  UB1BPPG_4_1 U4 (O[5], IN1[4], IN2);
  UB1BPPG_5_1 U5 (O[6], IN1[5], IN2);
  UB1BPPG_6_1 U6 (O[7], IN1[6], IN2);
  UB1BPPG_7_1 U7 (O[8], IN1[7], IN2);
endmodule

module UBVPPG_7_0_2 (O, IN1, IN2);
  output [9:2] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_2 U0 (O[2], IN1[0], IN2);
  UB1BPPG_1_2 U1 (O[3], IN1[1], IN2);
  UB1BPPG_2_2 U2 (O[4], IN1[2], IN2);
  UB1BPPG_3_2 U3 (O[5], IN1[3], IN2);
  UB1BPPG_4_2 U4 (O[6], IN1[4], IN2);
  UB1BPPG_5_2 U5 (O[7], IN1[5], IN2);
  UB1BPPG_6_2 U6 (O[8], IN1[6], IN2);
  UB1BPPG_7_2 U7 (O[9], IN1[7], IN2);
endmodule

module UBVPPG_7_0_3 (O, IN1, IN2);
  output [10:3] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_3 U0 (O[3], IN1[0], IN2);
  UB1BPPG_1_3 U1 (O[4], IN1[1], IN2);
  UB1BPPG_2_3 U2 (O[5], IN1[2], IN2);
  UB1BPPG_3_3 U3 (O[6], IN1[3], IN2);
  UB1BPPG_4_3 U4 (O[7], IN1[4], IN2);
  UB1BPPG_5_3 U5 (O[8], IN1[5], IN2);
  UB1BPPG_6_3 U6 (O[9], IN1[6], IN2);
  UB1BPPG_7_3 U7 (O[10], IN1[7], IN2);
endmodule

