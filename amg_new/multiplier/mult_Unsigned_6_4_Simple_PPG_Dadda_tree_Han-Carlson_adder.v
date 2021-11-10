/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_5_0_3_000

  Number system: Unsigned binary
  Multiplicand length: 6
  Multiplier length: 4
  Partial product generation: Simple PPG
  Partial product accumulation: Dadda tree
  Final stage addition: Han-Carlson adder
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

module UBHA_3(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_6(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

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

module UBHA_2(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module GPGenerator(Go, Po, A, B);
  output Go;
  output Po;
  input A;
  input B;
  assign Go = A & B;
  assign Po = A ^ B;
endmodule

module CarryOperator(Go, Po, Gi1, Pi1, Gi2, Pi2);
  output Go;
  output Po;
  input Gi1;
  input Gi2;
  input Pi1;
  input Pi2;
  assign Go = Gi1 | ( Gi2 & Pi1 );
  assign Po = Pi1 & Pi2;
endmodule

module UBPriHCA_8_1(S, X, Y, Cin);
  output [9:1] S;
  input Cin;
  input [8:1] X;
  input [8:1] Y;
  wire [8:1] G0;
  wire [8:1] G1;
  wire [8:1] G2;
  wire [8:1] G3;
  wire [8:1] G4;
  wire [8:1] P0;
  wire [8:1] P1;
  wire [8:1] P2;
  wire [8:1] P3;
  wire [8:1] P4;
  assign P1[1] = P0[1];
  assign G1[1] = G0[1];
  assign P1[3] = P0[3];
  assign G1[3] = G0[3];
  assign P1[5] = P0[5];
  assign G1[5] = G0[5];
  assign P1[7] = P0[7];
  assign G1[7] = G0[7];
  assign P2[1] = P1[1];
  assign G2[1] = G1[1];
  assign P2[2] = P1[2];
  assign G2[2] = G1[2];
  assign P2[3] = P1[3];
  assign G2[3] = G1[3];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P2[7] = P1[7];
  assign G2[7] = G1[7];
  assign P3[1] = P2[1];
  assign G3[1] = G2[1];
  assign P3[2] = P2[2];
  assign G3[2] = G2[2];
  assign P3[3] = P2[3];
  assign G3[3] = G2[3];
  assign P3[4] = P2[4];
  assign G3[4] = G2[4];
  assign P3[5] = P2[5];
  assign G3[5] = G2[5];
  assign P3[7] = P2[7];
  assign G3[7] = G2[7];
  assign P4[1] = P3[1];
  assign G4[1] = G3[1];
  assign P4[2] = P3[2];
  assign G4[2] = G3[2];
  assign P4[4] = P3[4];
  assign G4[4] = G3[4];
  assign P4[6] = P3[6];
  assign G4[6] = G3[6];
  assign P4[8] = P3[8];
  assign G4[8] = G3[8];
  assign S[1] = Cin ^ P0[1];
  assign S[2] = ( G4[1] | ( P4[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G4[2] | ( P4[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G4[3] | ( P4[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G4[4] | ( P4[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G4[5] | ( P4[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G4[6] | ( P4[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G4[7] | ( P4[7] & Cin ) ) ^ P0[8];
  assign S[9] = G4[8] | ( P4[8] & Cin );
  GPGenerator U0 (G0[1], P0[1], X[1], Y[1]);
  GPGenerator U1 (G0[2], P0[2], X[2], Y[2]);
  GPGenerator U2 (G0[3], P0[3], X[3], Y[3]);
  GPGenerator U3 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U4 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U5 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U6 (G0[7], P0[7], X[7], Y[7]);
  GPGenerator U7 (G0[8], P0[8], X[8], Y[8]);
  CarryOperator U8 (G1[2], P1[2], G0[2], P0[2], G0[1], P0[1]);
  CarryOperator U9 (G1[4], P1[4], G0[4], P0[4], G0[3], P0[3]);
  CarryOperator U10 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U11 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U12 (G2[4], P2[4], G1[4], P1[4], G1[2], P1[2]);
  CarryOperator U13 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U14 (G2[8], P2[8], G1[8], P1[8], G1[6], P1[6]);
  CarryOperator U15 (G3[6], P3[6], G2[6], P2[6], G2[2], P2[2]);
  CarryOperator U16 (G3[8], P3[8], G2[8], P2[8], G2[4], P2[4]);
  CarryOperator U17 (G4[3], P4[3], G3[3], P3[3], G3[2], P3[2]);
  CarryOperator U18 (G4[5], P4[5], G3[5], P3[5], G3[4], P3[4]);
  CarryOperator U19 (G4[7], P4[7], G3[7], P3[7], G3[6], P3[6]);
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module Multiplier_5_0_3_000(P, IN1, IN2);
  output [9:0] P;
  input [5:0] IN1;
  input [3:0] IN2;
  wire [9:0] W;
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
  MultUB_STD_DAD_HC000 U0 (W, IN1, IN2);
endmodule

module DADTR_5_0_6_1_7_2000 (S1, S2, PP0, PP1, PP2, PP3);
  output [8:0] S1;
  output [8:1] S2;
  input [5:0] PP0;
  input [6:1] PP1;
  input [7:2] PP2;
  input [8:3] PP3;
  wire [8:0] W0;
  wire [7:1] W1;
  wire [7:2] W2;
  UBHA_3 U0 (W1[4], W2[3], PP0[3], PP1[3]);
  UBFA_4 U1 (W1[5], W2[4], PP0[4], PP1[4], PP2[4]);
  UBFA_5 U2 (W1[6], W2[5], PP0[5], PP1[5], PP2[5]);
  UBHA_6 U3 (W2[7], W2[6], PP1[6], PP2[6]);
  UBCON_2_0 U4 (W0[2:0], PP0[2:0]);
  UB1DCON_3 U5 (W0[3], PP2[3]);
  UBCON_6_4 U6 (W0[6:4], PP3[6:4]);
  UB1DCON_7 U7 (W0[7], PP2[7]);
  UB1DCON_8 U8 (W0[8], PP3[8]);
  UBCON_2_1 U9 (W1[2:1], PP1[2:1]);
  UB1DCON_3 U10 (W1[3], PP3[3]);
  UB1DCON_7 U11 (W1[7], PP3[7]);
  UB1DCON_2 U12 (W2[2], PP2[2]);
  DADTR_8_0_7_1_7_2 U13 (S1, S2, W0, W1, W2);
endmodule

module DADTR_8_0_7_1_7_2 (S1, S2, PP0, PP1, PP2);
  output [8:0] S1;
  output [8:1] S2;
  input [8:0] PP0;
  input [7:1] PP1;
  input [7:2] PP2;
  wire [8:0] W0;
  wire [8:1] W1;
  UBHA_2 U0 (W0[3], W1[2], PP0[2], PP1[2]);
  UBFA_3 U1 (W0[4], W1[3], PP0[3], PP1[3], PP2[3]);
  UBFA_4 U2 (W0[5], W1[4], PP0[4], PP1[4], PP2[4]);
  UBFA_5 U3 (W0[6], W1[5], PP0[5], PP1[5], PP2[5]);
  UBFA_6 U4 (W0[7], W1[6], PP0[6], PP1[6], PP2[6]);
  UBFA_7 U5 (W1[8], W1[7], PP0[7], PP1[7], PP2[7]);
  UBCON_1_0 U6 (W0[1:0], PP0[1:0]);
  UB1DCON_2 U7 (W0[2], PP2[2]);
  UB1DCON_8 U8 (W0[8], PP0[8]);
  UB1DCON_1 U9 (W1[1], PP1[1]);
  DADTR_8_0_8_1 U10 (S1, S2, W0, W1);
endmodule

module DADTR_8_0_8_1 (S1, S2, PP0, PP1);
  output [8:0] S1;
  output [8:1] S2;
  input [8:0] PP0;
  input [8:1] PP1;
  UBCON_8_0 U0 (S1, PP0);
  UBCON_8_1 U1 (S2, PP1);
endmodule

module MultUB_STD_DAD_HC000 (P, IN1, IN2);
  output [9:0] P;
  input [5:0] IN1;
  input [3:0] IN2;
  wire [5:0] PP0;
  wire [6:1] PP1;
  wire [7:2] PP2;
  wire [8:3] PP3;
  wire [8:0] S1;
  wire [8:1] S2;
  UBPPG_5_0_3_0 U0 (PP0, PP1, PP2, PP3, IN1, IN2);
  DADTR_5_0_6_1_7_2000 U1 (S1, S2, PP0, PP1, PP2, PP3);
  UBHCA_8_0_8_1 U2 (P, S1, S2);
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

module UBCON_2_1 (O, I);
  output [2:1] O;
  input [2:1] I;
  UB1DCON_1 U0 (O[1], I[1]);
  UB1DCON_2 U1 (O[2], I[2]);
endmodule

module UBCON_6_4 (O, I);
  output [6:4] O;
  input [6:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
  UB1DCON_6 U2 (O[6], I[6]);
endmodule

module UBCON_8_0 (O, I);
  output [8:0] O;
  input [8:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
  UB1DCON_6 U6 (O[6], I[6]);
  UB1DCON_7 U7 (O[7], I[7]);
  UB1DCON_8 U8 (O[8], I[8]);
endmodule

module UBCON_8_1 (O, I);
  output [8:1] O;
  input [8:1] I;
  UB1DCON_1 U0 (O[1], I[1]);
  UB1DCON_2 U1 (O[2], I[2]);
  UB1DCON_3 U2 (O[3], I[3]);
  UB1DCON_4 U3 (O[4], I[4]);
  UB1DCON_5 U4 (O[5], I[5]);
  UB1DCON_6 U5 (O[6], I[6]);
  UB1DCON_7 U6 (O[7], I[7]);
  UB1DCON_8 U7 (O[8], I[8]);
endmodule

module UBHCA_8_0_8_1 (S, X, Y);
  output [9:0] S;
  input [8:0] X;
  input [8:1] Y;
  UBPureHCA_8_1 U0 (S[9:1], X[8:1], Y[8:1]);
  UB1DCON_0 U1 (S[0], X[0]);
endmodule

module UBPPG_5_0_3_0 (PP0, PP1, PP2, PP3, IN1, IN2);
  output [5:0] PP0;
  output [6:1] PP1;
  output [7:2] PP2;
  output [8:3] PP3;
  input [5:0] IN1;
  input [3:0] IN2;
  UBVPPG_5_0_0 U0 (PP0, IN1, IN2[0]);
  UBVPPG_5_0_1 U1 (PP1, IN1, IN2[1]);
  UBVPPG_5_0_2 U2 (PP2, IN1, IN2[2]);
  UBVPPG_5_0_3 U3 (PP3, IN1, IN2[3]);
endmodule

module UBPureHCA_8_1 (S, X, Y);
  output [9:1] S;
  input [8:1] X;
  input [8:1] Y;
  wire C;
  UBPriHCA_8_1 U0 (S, X, Y, C);
  UBZero_1_1 U1 (C);
endmodule

module UBVPPG_5_0_0 (O, IN1, IN2);
  output [5:0] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_0 U0 (O[0], IN1[0], IN2);
  UB1BPPG_1_0 U1 (O[1], IN1[1], IN2);
  UB1BPPG_2_0 U2 (O[2], IN1[2], IN2);
  UB1BPPG_3_0 U3 (O[3], IN1[3], IN2);
  UB1BPPG_4_0 U4 (O[4], IN1[4], IN2);
  UB1BPPG_5_0 U5 (O[5], IN1[5], IN2);
endmodule

module UBVPPG_5_0_1 (O, IN1, IN2);
  output [6:1] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_1 U0 (O[1], IN1[0], IN2);
  UB1BPPG_1_1 U1 (O[2], IN1[1], IN2);
  UB1BPPG_2_1 U2 (O[3], IN1[2], IN2);
  UB1BPPG_3_1 U3 (O[4], IN1[3], IN2);
  UB1BPPG_4_1 U4 (O[5], IN1[4], IN2);
  UB1BPPG_5_1 U5 (O[6], IN1[5], IN2);
endmodule

module UBVPPG_5_0_2 (O, IN1, IN2);
  output [7:2] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_2 U0 (O[2], IN1[0], IN2);
  UB1BPPG_1_2 U1 (O[3], IN1[1], IN2);
  UB1BPPG_2_2 U2 (O[4], IN1[2], IN2);
  UB1BPPG_3_2 U3 (O[5], IN1[3], IN2);
  UB1BPPG_4_2 U4 (O[6], IN1[4], IN2);
  UB1BPPG_5_2 U5 (O[7], IN1[5], IN2);
endmodule

module UBVPPG_5_0_3 (O, IN1, IN2);
  output [8:3] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_3 U0 (O[3], IN1[0], IN2);
  UB1BPPG_1_3 U1 (O[4], IN1[1], IN2);
  UB1BPPG_2_3 U2 (O[5], IN1[2], IN2);
  UB1BPPG_3_3 U3 (O[6], IN1[3], IN2);
  UB1BPPG_4_3 U4 (O[7], IN1[4], IN2);
  UB1BPPG_5_3 U5 (O[8], IN1[5], IN2);
endmodule

