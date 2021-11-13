/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_6_0_3_000

  Number system: Unsigned binary
  Multiplicand length: 7
  Multiplier length: 4
  Partial product generation: Simple PPG
  Partial product accumulation: Wallace tree
  Final stage addition: Carry-skip adder (fixed-block-size)
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

module UBHA_7(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UB1DCON_8(O, I);
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

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
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

module UBCSkB_3_3(Co, S, X, Y, Ci);
  output Co;
  output [3:3] S;
  input Ci;
  input [3:3] X;
  input [3:3] Y;
  wire C4;
  wire P3;
  wire Sk;
  assign Sk = P3 & Ci;
  assign Co = C4 | Sk;
  UBPFA_3 U0 (C4, S[3], P3, X[3], Y[3], Ci);
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

module UBCSkB_4_4(Co, S, X, Y, Ci);
  output Co;
  output [4:4] S;
  input Ci;
  input [4:4] X;
  input [4:4] Y;
  wire C5;
  wire P4;
  wire Sk;
  assign Sk = P4 & Ci;
  assign Co = C5 | Sk;
  UBPFA_4 U0 (C5, S[4], P4, X[4], Y[4], Ci);
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

module UBCSkB_5_5(Co, S, X, Y, Ci);
  output Co;
  output [5:5] S;
  input Ci;
  input [5:5] X;
  input [5:5] Y;
  wire C6;
  wire P5;
  wire Sk;
  assign Sk = P5 & Ci;
  assign Co = C6 | Sk;
  UBPFA_5 U0 (C6, S[5], P5, X[5], Y[5], Ci);
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

module UBCSkB_6_6(Co, S, X, Y, Ci);
  output Co;
  output [6:6] S;
  input Ci;
  input [6:6] X;
  input [6:6] Y;
  wire C7;
  wire P6;
  wire Sk;
  assign Sk = P6 & Ci;
  assign Co = C7 | Sk;
  UBPFA_6 U0 (C7, S[6], P6, X[6], Y[6], Ci);
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

module UBCSkB_7_7(Co, S, X, Y, Ci);
  output Co;
  output [7:7] S;
  input Ci;
  input [7:7] X;
  input [7:7] Y;
  wire C8;
  wire P7;
  wire Sk;
  assign Sk = P7 & Ci;
  assign Co = C8 | Sk;
  UBPFA_7 U0 (C8, S[7], P7, X[7], Y[7], Ci);
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

module UBCSkB_8_8(Co, S, X, Y, Ci);
  output Co;
  output [8:8] S;
  input Ci;
  input [8:8] X;
  input [8:8] Y;
  wire C9;
  wire P8;
  wire Sk;
  assign Sk = P8 & Ci;
  assign Co = C9 | Sk;
  UBPFA_8 U0 (C9, S[8], P8, X[8], Y[8], Ci);
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

module UBCSkB_9_9(Co, S, X, Y, Ci);
  output Co;
  output [9:9] S;
  input Ci;
  input [9:9] X;
  input [9:9] Y;
  wire C10;
  wire P9;
  wire Sk;
  assign Sk = P9 & Ci;
  assign Co = C10 | Sk;
  UBPFA_9 U0 (C10, S[9], P9, X[9], Y[9], Ci);
endmodule

module UBPriFCSkA_9_3(S, X, Y, Cin);
  output [10:3] S;
  input Cin;
  input [9:3] X;
  input [9:3] Y;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  wire C9;
  UBCSkB_3_3 U0 (C4, S[3], X[3], Y[3], Cin);
  UBCSkB_4_4 U1 (C5, S[4], X[4], Y[4], C4);
  UBCSkB_5_5 U2 (C6, S[5], X[5], Y[5], C5);
  UBCSkB_6_6 U3 (C7, S[6], X[6], Y[6], C6);
  UBCSkB_7_7 U4 (C8, S[7], X[7], Y[7], C7);
  UBCSkB_8_8 U5 (C9, S[8], X[8], Y[8], C8);
  UBCSkB_9_9 U6 (S[10], S[9], X[9], Y[9], C9);
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

module Multiplier_6_0_3_000(P, IN1, IN2);
  output [10:0] P;
  input [6:0] IN1;
  input [3:0] IN2;
  wire [10:0] W;
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
  MultUB_STD_WAL_FC000 U0 (W, IN1, IN2);
endmodule

module CSA_6_0_7_1_8_2 (C, S, X, Y, Z);
  output [8:2] C;
  output [8:0] S;
  input [6:0] X;
  input [7:1] Y;
  input [8:2] Z;
  UB1DCON_0 U0 (S[0], X[0]);
  UBHA_1 U1 (C[2], S[1], Y[1], X[1]);
  PureCSA_6_2 U2 (C[7:3], S[6:2], Z[6:2], Y[6:2], X[6:2]);
  UBHA_7 U3 (C[8], S[7], Z[7], Y[7]);
  UB1DCON_8 U4 (S[8], Z[8]);
endmodule

module CSA_8_0_8_2_9_3 (C, S, X, Y, Z);
  output [9:3] C;
  output [9:0] S;
  input [8:0] X;
  input [8:2] Y;
  input [9:3] Z;
  UBCON_1_0 U0 (S[1:0], X[1:0]);
  UBHA_2 U1 (C[3], S[2], Y[2], X[2]);
  PureCSA_8_3 U2 (C[9:4], S[8:3], Z[8:3], Y[8:3], X[8:3]);
  UB1DCON_9 U3 (S[9], Z[9]);
endmodule

module MultUB_STD_WAL_FC000 (P, IN1, IN2);
  output [10:0] P;
  input [6:0] IN1;
  input [3:0] IN2;
  wire [6:0] PP0;
  wire [7:1] PP1;
  wire [8:2] PP2;
  wire [9:3] PP3;
  wire [9:3] S1;
  wire [9:0] S2;
  UBPPG_6_0_3_0 U0 (PP0, PP1, PP2, PP3, IN1, IN2);
  WLCTR_6_0_7_1_8_2000 U1 (S1, S2, PP0, PP1, PP2, PP3);
  UBFCSkA_9_3_9_0 U2 (P, S1, S2);
endmodule

module PureCSA_6_2 (C, S, X, Y, Z);
  output [7:3] C;
  output [6:2] S;
  input [6:2] X;
  input [6:2] Y;
  input [6:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
endmodule

module PureCSA_8_3 (C, S, X, Y, Z);
  output [9:4] C;
  output [8:3] S;
  input [8:3] X;
  input [8:3] Y;
  input [8:3] Z;
  UBFA_3 U0 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U1 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U2 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U3 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U4 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U5 (C[9], S[8], X[8], Y[8], Z[8]);
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

module UBFCSkA_9_3_9_0 (S, X, Y);
  output [10:0] S;
  input [9:3] X;
  input [9:0] Y;
  UBPureFCSkA_9_3 U0 (S[10:3], X[9:3], Y[9:3]);
  UBCON_2_0 U1 (S[2:0], Y[2:0]);
endmodule

module UBPPG_6_0_3_0 (PP0, PP1, PP2, PP3, IN1, IN2);
  output [6:0] PP0;
  output [7:1] PP1;
  output [8:2] PP2;
  output [9:3] PP3;
  input [6:0] IN1;
  input [3:0] IN2;
  UBVPPG_6_0_0 U0 (PP0, IN1, IN2[0]);
  UBVPPG_6_0_1 U1 (PP1, IN1, IN2[1]);
  UBVPPG_6_0_2 U2 (PP2, IN1, IN2[2]);
  UBVPPG_6_0_3 U3 (PP3, IN1, IN2[3]);
endmodule

module UBPureFCSkA_9_3 (S, X, Y);
  output [10:3] S;
  input [9:3] X;
  input [9:3] Y;
  wire C;
  UBPriFCSkA_9_3 U0 (S, X, Y, C);
  UBZero_3_3 U1 (C);
endmodule

module UBVPPG_6_0_0 (O, IN1, IN2);
  output [6:0] O;
  input [6:0] IN1;
  input IN2;
  UB1BPPG_0_0 U0 (O[0], IN1[0], IN2);
  UB1BPPG_1_0 U1 (O[1], IN1[1], IN2);
  UB1BPPG_2_0 U2 (O[2], IN1[2], IN2);
  UB1BPPG_3_0 U3 (O[3], IN1[3], IN2);
  UB1BPPG_4_0 U4 (O[4], IN1[4], IN2);
  UB1BPPG_5_0 U5 (O[5], IN1[5], IN2);
  UB1BPPG_6_0 U6 (O[6], IN1[6], IN2);
endmodule

module UBVPPG_6_0_1 (O, IN1, IN2);
  output [7:1] O;
  input [6:0] IN1;
  input IN2;
  UB1BPPG_0_1 U0 (O[1], IN1[0], IN2);
  UB1BPPG_1_1 U1 (O[2], IN1[1], IN2);
  UB1BPPG_2_1 U2 (O[3], IN1[2], IN2);
  UB1BPPG_3_1 U3 (O[4], IN1[3], IN2);
  UB1BPPG_4_1 U4 (O[5], IN1[4], IN2);
  UB1BPPG_5_1 U5 (O[6], IN1[5], IN2);
  UB1BPPG_6_1 U6 (O[7], IN1[6], IN2);
endmodule

module UBVPPG_6_0_2 (O, IN1, IN2);
  output [8:2] O;
  input [6:0] IN1;
  input IN2;
  UB1BPPG_0_2 U0 (O[2], IN1[0], IN2);
  UB1BPPG_1_2 U1 (O[3], IN1[1], IN2);
  UB1BPPG_2_2 U2 (O[4], IN1[2], IN2);
  UB1BPPG_3_2 U3 (O[5], IN1[3], IN2);
  UB1BPPG_4_2 U4 (O[6], IN1[4], IN2);
  UB1BPPG_5_2 U5 (O[7], IN1[5], IN2);
  UB1BPPG_6_2 U6 (O[8], IN1[6], IN2);
endmodule

module UBVPPG_6_0_3 (O, IN1, IN2);
  output [9:3] O;
  input [6:0] IN1;
  input IN2;
  UB1BPPG_0_3 U0 (O[3], IN1[0], IN2);
  UB1BPPG_1_3 U1 (O[4], IN1[1], IN2);
  UB1BPPG_2_3 U2 (O[5], IN1[2], IN2);
  UB1BPPG_3_3 U3 (O[6], IN1[3], IN2);
  UB1BPPG_4_3 U4 (O[7], IN1[4], IN2);
  UB1BPPG_5_3 U5 (O[8], IN1[5], IN2);
  UB1BPPG_6_3 U6 (O[9], IN1[6], IN2);
endmodule

module WLCTR_6_0_7_1_8_2000 (S1, S2, PP0, PP1, PP2, PP3);
  output [9:3] S1;
  output [9:0] S2;
  input [6:0] PP0;
  input [7:1] PP1;
  input [8:2] PP2;
  input [9:3] PP3;
  wire [8:2] IC0;
  wire [8:0] IS0;
  CSA_6_0_7_1_8_2 U0 (IC0, IS0, PP0, PP1, PP2);
  CSA_8_0_8_2_9_3 U1 (S1, S2, IS0, IC0, PP3);
endmodule

