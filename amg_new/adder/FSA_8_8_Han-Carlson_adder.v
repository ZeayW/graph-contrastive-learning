/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBHCA_7_0_7_0

  Operand-1 length: 8
  Operand-2 length: 8
  Two-operand addition algorithm: Han-Carlson adder
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

module UBPriHCA_7_0(S, X, Y, Cin);
  output [8:0] S;
  input Cin;
  input [7:0] X;
  input [7:0] Y;
  wire [7:0] G0;
  wire [7:0] G1;
  wire [7:0] G2;
  wire [7:0] G3;
  wire [7:0] G4;
  wire [7:0] P0;
  wire [7:0] P1;
  wire [7:0] P2;
  wire [7:0] P3;
  wire [7:0] P4;
  assign P1[0] = P0[0];
  assign G1[0] = G0[0];
  assign P1[2] = P0[2];
  assign G1[2] = G0[2];
  assign P1[4] = P0[4];
  assign G1[4] = G0[4];
  assign P1[6] = P0[6];
  assign G1[6] = G0[6];
  assign P2[0] = P1[0];
  assign G2[0] = G1[0];
  assign P2[1] = P1[1];
  assign G2[1] = G1[1];
  assign P2[2] = P1[2];
  assign G2[2] = G1[2];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[6] = P1[6];
  assign G2[6] = G1[6];
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
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P4[0] = P3[0];
  assign G4[0] = G3[0];
  assign P4[1] = P3[1];
  assign G4[1] = G3[1];
  assign P4[3] = P3[3];
  assign G4[3] = G3[3];
  assign P4[5] = P3[5];
  assign G4[5] = G3[5];
  assign P4[7] = P3[7];
  assign G4[7] = G3[7];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G4[0] | ( P4[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G4[1] | ( P4[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G4[2] | ( P4[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G4[3] | ( P4[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G4[4] | ( P4[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G4[5] | ( P4[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G4[6] | ( P4[6] & Cin ) ) ^ P0[7];
  assign S[8] = G4[7] | ( P4[7] & Cin );
  GPGenerator U0 (G0[0], P0[0], X[0], Y[0]);
  GPGenerator U1 (G0[1], P0[1], X[1], Y[1]);
  GPGenerator U2 (G0[2], P0[2], X[2], Y[2]);
  GPGenerator U3 (G0[3], P0[3], X[3], Y[3]);
  GPGenerator U4 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U5 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U6 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U7 (G0[7], P0[7], X[7], Y[7]);
  CarryOperator U8 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U9 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U10 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U11 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U12 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U13 (G2[5], P2[5], G1[5], P1[5], G1[3], P1[3]);
  CarryOperator U14 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U15 (G3[5], P3[5], G2[5], P2[5], G2[1], P2[1]);
  CarryOperator U16 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U17 (G4[2], P4[2], G3[2], P3[2], G3[1], P3[1]);
  CarryOperator U18 (G4[4], P4[4], G3[4], P3[4], G3[3], P3[3]);
  CarryOperator U19 (G4[6], P4[6], G3[6], P3[6], G3[5], P3[5]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBHCA_7_0_7_0 (S, X, Y);
  output [8:0] S;
  input [7:0] X;
  input [7:0] Y;
  UBPureHCA_7_0 U0 (S[8:0], X[7:0], Y[7:0]);
endmodule

module UBPureHCA_7_0 (S, X, Y);
  output [8:0] S;
  input [7:0] X;
  input [7:0] Y;
  wire C;
  UBPriHCA_7_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

