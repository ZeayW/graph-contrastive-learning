/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBBKA_10_0_10_0

  Operand-1 length: 11
  Operand-2 length: 11
  Two-operand addition algorithm: Brent-Kung adder
----------------------------------------------------------------------------*/

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

module UBPriBKA_10_0(S, X, Y, Cin);
  output [11:0] S;
  input Cin;
  input [10:0] X;
  input [10:0] Y;
  wire [10:0] G0;
  wire [10:0] G1;
  wire [10:0] G2;
  wire [10:0] G3;
  wire [10:0] G4;
  wire [10:0] G5;
  wire [10:0] G6;
  wire [10:0] P0;
  wire [10:0] P1;
  wire [10:0] P2;
  wire [10:0] P3;
  wire [10:0] P4;
  wire [10:0] P5;
  wire [10:0] P6;
  assign P1[0] = P0[0];
  assign G1[0] = G0[0];
  assign P1[2] = P0[2];
  assign G1[2] = G0[2];
  assign P1[4] = P0[4];
  assign G1[4] = G0[4];
  assign P1[6] = P0[6];
  assign G1[6] = G0[6];
  assign P1[8] = P0[8];
  assign G1[8] = G0[8];
  assign P1[10] = P0[10];
  assign G1[10] = G0[10];
  assign P2[0] = P1[0];
  assign G2[0] = G1[0];
  assign P2[1] = P1[1];
  assign G2[1] = G1[1];
  assign P2[2] = P1[2];
  assign G2[2] = G1[2];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P2[6] = P1[6];
  assign G2[6] = G1[6];
  assign P2[8] = P1[8];
  assign G2[8] = G1[8];
  assign P2[9] = P1[9];
  assign G2[9] = G1[9];
  assign P2[10] = P1[10];
  assign G2[10] = G1[10];
  assign P3[0] = P2[0];
  assign G3[0] = G2[0];
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
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P3[8] = P2[8];
  assign G3[8] = G2[8];
  assign P3[9] = P2[9];
  assign G3[9] = G2[9];
  assign P3[10] = P2[10];
  assign G3[10] = G2[10];
  assign P4[0] = P3[0];
  assign G4[0] = G3[0];
  assign P4[1] = P3[1];
  assign G4[1] = G3[1];
  assign P4[2] = P3[2];
  assign G4[2] = G3[2];
  assign P4[3] = P3[3];
  assign G4[3] = G3[3];
  assign P4[4] = P3[4];
  assign G4[4] = G3[4];
  assign P4[5] = P3[5];
  assign G4[5] = G3[5];
  assign P4[6] = P3[6];
  assign G4[6] = G3[6];
  assign P4[7] = P3[7];
  assign G4[7] = G3[7];
  assign P4[8] = P3[8];
  assign G4[8] = G3[8];
  assign P4[9] = P3[9];
  assign G4[9] = G3[9];
  assign P4[10] = P3[10];
  assign G4[10] = G3[10];
  assign P5[0] = P4[0];
  assign G5[0] = G4[0];
  assign P5[1] = P4[1];
  assign G5[1] = G4[1];
  assign P5[2] = P4[2];
  assign G5[2] = G4[2];
  assign P5[3] = P4[3];
  assign G5[3] = G4[3];
  assign P5[4] = P4[4];
  assign G5[4] = G4[4];
  assign P5[6] = P4[6];
  assign G5[6] = G4[6];
  assign P5[7] = P4[7];
  assign G5[7] = G4[7];
  assign P5[8] = P4[8];
  assign G5[8] = G4[8];
  assign P5[10] = P4[10];
  assign G5[10] = G4[10];
  assign P6[0] = P5[0];
  assign G6[0] = G5[0];
  assign P6[1] = P5[1];
  assign G6[1] = G5[1];
  assign P6[3] = P5[3];
  assign G6[3] = G5[3];
  assign P6[5] = P5[5];
  assign G6[5] = G5[5];
  assign P6[7] = P5[7];
  assign G6[7] = G5[7];
  assign P6[9] = P5[9];
  assign G6[9] = G5[9];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G6[0] | ( P6[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G6[1] | ( P6[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G6[2] | ( P6[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G6[3] | ( P6[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G6[4] | ( P6[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G6[5] | ( P6[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G6[6] | ( P6[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G6[7] | ( P6[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G6[8] | ( P6[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G6[9] | ( P6[9] & Cin ) ) ^ P0[10];
  assign S[11] = G6[10] | ( P6[10] & Cin );
  GPGenerator U0 (G0[0], P0[0], X[0], Y[0]);
  GPGenerator U1 (G0[1], P0[1], X[1], Y[1]);
  GPGenerator U2 (G0[2], P0[2], X[2], Y[2]);
  GPGenerator U3 (G0[3], P0[3], X[3], Y[3]);
  GPGenerator U4 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U5 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U6 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U7 (G0[7], P0[7], X[7], Y[7]);
  GPGenerator U8 (G0[8], P0[8], X[8], Y[8]);
  GPGenerator U9 (G0[9], P0[9], X[9], Y[9]);
  GPGenerator U10 (G0[10], P0[10], X[10], Y[10]);
  CarryOperator U11 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U12 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U13 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U14 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U15 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U16 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U17 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U18 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U19 (G5[5], P5[5], G4[5], P4[5], G4[3], P4[3]);
  CarryOperator U20 (G5[9], P5[9], G4[9], P4[9], G4[7], P4[7]);
  CarryOperator U21 (G6[2], P6[2], G5[2], P5[2], G5[1], P5[1]);
  CarryOperator U22 (G6[4], P6[4], G5[4], P5[4], G5[3], P5[3]);
  CarryOperator U23 (G6[6], P6[6], G5[6], P5[6], G5[5], P5[5]);
  CarryOperator U24 (G6[8], P6[8], G5[8], P5[8], G5[7], P5[7]);
  CarryOperator U25 (G6[10], P6[10], G5[10], P5[10], G5[9], P5[9]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBBKA_10_0_10_0 (S, X, Y);
  output [11:0] S;
  input [10:0] X;
  input [10:0] Y;
  UBPureBKA_10_0 U0 (S[11:0], X[10:0], Y[10:0]);
endmodule

module UBPureBKA_10_0 (S, X, Y);
  output [11:0] S;
  input [10:0] X;
  input [10:0] Y;
  wire C;
  UBPriBKA_10_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

