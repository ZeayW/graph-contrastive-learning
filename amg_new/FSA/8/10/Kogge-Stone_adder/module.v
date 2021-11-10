/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBKSA_7_0_9_0

  Operand-1 length: 8
  Operand-2 length: 10
  Two-operand addition algorithm: Kogge-Stone adder
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

module UBZero_9_8(O);
  output [9:8] O;
  assign O[8] = 0;
  assign O[9] = 0;
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

module UBPriKSA_9_0(S, X, Y, Cin);
  output [10:0] S;
  input Cin;
  input [9:0] X;
  input [9:0] Y;
  wire [9:0] G0;
  wire [9:0] G1;
  wire [9:0] G2;
  wire [9:0] G3;
  wire [9:0] G4;
  wire [9:0] P0;
  wire [9:0] P1;
  wire [9:0] P2;
  wire [9:0] P3;
  wire [9:0] P4;
  assign P1[0] = P0[0];
  assign G1[0] = G0[0];
  assign P2[0] = P1[0];
  assign G2[0] = G1[0];
  assign P2[1] = P1[1];
  assign G2[1] = G1[1];
  assign P3[0] = P2[0];
  assign G3[0] = G2[0];
  assign P3[1] = P2[1];
  assign G3[1] = G2[1];
  assign P3[2] = P2[2];
  assign G3[2] = G2[2];
  assign P3[3] = P2[3];
  assign G3[3] = G2[3];
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
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G4[0] | ( P4[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G4[1] | ( P4[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G4[2] | ( P4[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G4[3] | ( P4[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G4[4] | ( P4[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G4[5] | ( P4[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G4[6] | ( P4[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G4[7] | ( P4[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G4[8] | ( P4[8] & Cin ) ) ^ P0[9];
  assign S[10] = G4[9] | ( P4[9] & Cin );
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
  CarryOperator U10 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U11 (G1[2], P1[2], G0[2], P0[2], G0[1], P0[1]);
  CarryOperator U12 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U13 (G1[4], P1[4], G0[4], P0[4], G0[3], P0[3]);
  CarryOperator U14 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U15 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U16 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U17 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U18 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U19 (G2[2], P2[2], G1[2], P1[2], G1[0], P1[0]);
  CarryOperator U20 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U21 (G2[4], P2[4], G1[4], P1[4], G1[2], P1[2]);
  CarryOperator U22 (G2[5], P2[5], G1[5], P1[5], G1[3], P1[3]);
  CarryOperator U23 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U24 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U25 (G2[8], P2[8], G1[8], P1[8], G1[6], P1[6]);
  CarryOperator U26 (G2[9], P2[9], G1[9], P1[9], G1[7], P1[7]);
  CarryOperator U27 (G3[4], P3[4], G2[4], P2[4], G2[0], P2[0]);
  CarryOperator U28 (G3[5], P3[5], G2[5], P2[5], G2[1], P2[1]);
  CarryOperator U29 (G3[6], P3[6], G2[6], P2[6], G2[2], P2[2]);
  CarryOperator U30 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U31 (G3[8], P3[8], G2[8], P2[8], G2[4], P2[4]);
  CarryOperator U32 (G3[9], P3[9], G2[9], P2[9], G2[5], P2[5]);
  CarryOperator U33 (G4[8], P4[8], G3[8], P3[8], G3[0], P3[0]);
  CarryOperator U34 (G4[9], P4[9], G3[9], P3[9], G3[1], P3[1]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCON_7_0 (O, I);
  output [7:0] O;
  input [7:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
  UB1DCON_6 U6 (O[6], I[6]);
  UB1DCON_7 U7 (O[7], I[7]);
endmodule

module UBExtender_7_0_9_000 (O, I);
  output [9:0] O;
  input [7:0] I;
  UBCON_7_0 U0 (O[7:0], I[7:0]);
  UBZero_9_8 U1 (O[9:8]);
endmodule

module UBKSA_7_0_9_0 (S, X, Y);
  output [10:0] S;
  input [7:0] X;
  input [9:0] Y;
  wire [9:0] Z;
  UBExtender_7_0_9_000 U0 (Z[9:0], X[7:0]);
  UBPureKSA_9_0 U1 (S[10:0], Z[9:0], Y[9:0]);
endmodule

module UBPureKSA_9_0 (S, X, Y);
  output [10:0] S;
  input [9:0] X;
  input [9:0] Y;
  wire C;
  UBPriKSA_9_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

