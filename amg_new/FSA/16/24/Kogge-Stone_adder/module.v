/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBKSA_15_0_23_0

  Operand-1 length: 16
  Operand-2 length: 24
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

module UBZero_23_16(O);
  output [23:16] O;
  assign O[16] = 0;
  assign O[17] = 0;
  assign O[18] = 0;
  assign O[19] = 0;
  assign O[20] = 0;
  assign O[21] = 0;
  assign O[22] = 0;
  assign O[23] = 0;
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

module UBPriKSA_23_0(S, X, Y, Cin);
  output [24:0] S;
  input Cin;
  input [23:0] X;
  input [23:0] Y;
  wire [23:0] G0;
  wire [23:0] G1;
  wire [23:0] G2;
  wire [23:0] G3;
  wire [23:0] G4;
  wire [23:0] G5;
  wire [23:0] P0;
  wire [23:0] P1;
  wire [23:0] P2;
  wire [23:0] P3;
  wire [23:0] P4;
  wire [23:0] P5;
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
  assign P5[5] = P4[5];
  assign G5[5] = G4[5];
  assign P5[6] = P4[6];
  assign G5[6] = G4[6];
  assign P5[7] = P4[7];
  assign G5[7] = G4[7];
  assign P5[8] = P4[8];
  assign G5[8] = G4[8];
  assign P5[9] = P4[9];
  assign G5[9] = G4[9];
  assign P5[10] = P4[10];
  assign G5[10] = G4[10];
  assign P5[11] = P4[11];
  assign G5[11] = G4[11];
  assign P5[12] = P4[12];
  assign G5[12] = G4[12];
  assign P5[13] = P4[13];
  assign G5[13] = G4[13];
  assign P5[14] = P4[14];
  assign G5[14] = G4[14];
  assign P5[15] = P4[15];
  assign G5[15] = G4[15];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G5[0] | ( P5[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G5[1] | ( P5[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G5[2] | ( P5[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G5[3] | ( P5[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G5[4] | ( P5[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G5[5] | ( P5[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G5[6] | ( P5[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G5[7] | ( P5[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G5[8] | ( P5[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G5[9] | ( P5[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G5[10] | ( P5[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G5[11] | ( P5[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G5[12] | ( P5[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G5[13] | ( P5[13] & Cin ) ) ^ P0[14];
  assign S[15] = ( G5[14] | ( P5[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G5[15] | ( P5[15] & Cin ) ) ^ P0[16];
  assign S[17] = ( G5[16] | ( P5[16] & Cin ) ) ^ P0[17];
  assign S[18] = ( G5[17] | ( P5[17] & Cin ) ) ^ P0[18];
  assign S[19] = ( G5[18] | ( P5[18] & Cin ) ) ^ P0[19];
  assign S[20] = ( G5[19] | ( P5[19] & Cin ) ) ^ P0[20];
  assign S[21] = ( G5[20] | ( P5[20] & Cin ) ) ^ P0[21];
  assign S[22] = ( G5[21] | ( P5[21] & Cin ) ) ^ P0[22];
  assign S[23] = ( G5[22] | ( P5[22] & Cin ) ) ^ P0[23];
  assign S[24] = G5[23] | ( P5[23] & Cin );
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
  GPGenerator U11 (G0[11], P0[11], X[11], Y[11]);
  GPGenerator U12 (G0[12], P0[12], X[12], Y[12]);
  GPGenerator U13 (G0[13], P0[13], X[13], Y[13]);
  GPGenerator U14 (G0[14], P0[14], X[14], Y[14]);
  GPGenerator U15 (G0[15], P0[15], X[15], Y[15]);
  GPGenerator U16 (G0[16], P0[16], X[16], Y[16]);
  GPGenerator U17 (G0[17], P0[17], X[17], Y[17]);
  GPGenerator U18 (G0[18], P0[18], X[18], Y[18]);
  GPGenerator U19 (G0[19], P0[19], X[19], Y[19]);
  GPGenerator U20 (G0[20], P0[20], X[20], Y[20]);
  GPGenerator U21 (G0[21], P0[21], X[21], Y[21]);
  GPGenerator U22 (G0[22], P0[22], X[22], Y[22]);
  GPGenerator U23 (G0[23], P0[23], X[23], Y[23]);
  CarryOperator U24 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U25 (G1[2], P1[2], G0[2], P0[2], G0[1], P0[1]);
  CarryOperator U26 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U27 (G1[4], P1[4], G0[4], P0[4], G0[3], P0[3]);
  CarryOperator U28 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U29 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U30 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U31 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U32 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U33 (G1[10], P1[10], G0[10], P0[10], G0[9], P0[9]);
  CarryOperator U34 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U35 (G1[12], P1[12], G0[12], P0[12], G0[11], P0[11]);
  CarryOperator U36 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U37 (G1[14], P1[14], G0[14], P0[14], G0[13], P0[13]);
  CarryOperator U38 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U39 (G1[16], P1[16], G0[16], P0[16], G0[15], P0[15]);
  CarryOperator U40 (G1[17], P1[17], G0[17], P0[17], G0[16], P0[16]);
  CarryOperator U41 (G1[18], P1[18], G0[18], P0[18], G0[17], P0[17]);
  CarryOperator U42 (G1[19], P1[19], G0[19], P0[19], G0[18], P0[18]);
  CarryOperator U43 (G1[20], P1[20], G0[20], P0[20], G0[19], P0[19]);
  CarryOperator U44 (G1[21], P1[21], G0[21], P0[21], G0[20], P0[20]);
  CarryOperator U45 (G1[22], P1[22], G0[22], P0[22], G0[21], P0[21]);
  CarryOperator U46 (G1[23], P1[23], G0[23], P0[23], G0[22], P0[22]);
  CarryOperator U47 (G2[2], P2[2], G1[2], P1[2], G1[0], P1[0]);
  CarryOperator U48 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U49 (G2[4], P2[4], G1[4], P1[4], G1[2], P1[2]);
  CarryOperator U50 (G2[5], P2[5], G1[5], P1[5], G1[3], P1[3]);
  CarryOperator U51 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U52 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U53 (G2[8], P2[8], G1[8], P1[8], G1[6], P1[6]);
  CarryOperator U54 (G2[9], P2[9], G1[9], P1[9], G1[7], P1[7]);
  CarryOperator U55 (G2[10], P2[10], G1[10], P1[10], G1[8], P1[8]);
  CarryOperator U56 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U57 (G2[12], P2[12], G1[12], P1[12], G1[10], P1[10]);
  CarryOperator U58 (G2[13], P2[13], G1[13], P1[13], G1[11], P1[11]);
  CarryOperator U59 (G2[14], P2[14], G1[14], P1[14], G1[12], P1[12]);
  CarryOperator U60 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U61 (G2[16], P2[16], G1[16], P1[16], G1[14], P1[14]);
  CarryOperator U62 (G2[17], P2[17], G1[17], P1[17], G1[15], P1[15]);
  CarryOperator U63 (G2[18], P2[18], G1[18], P1[18], G1[16], P1[16]);
  CarryOperator U64 (G2[19], P2[19], G1[19], P1[19], G1[17], P1[17]);
  CarryOperator U65 (G2[20], P2[20], G1[20], P1[20], G1[18], P1[18]);
  CarryOperator U66 (G2[21], P2[21], G1[21], P1[21], G1[19], P1[19]);
  CarryOperator U67 (G2[22], P2[22], G1[22], P1[22], G1[20], P1[20]);
  CarryOperator U68 (G2[23], P2[23], G1[23], P1[23], G1[21], P1[21]);
  CarryOperator U69 (G3[4], P3[4], G2[4], P2[4], G2[0], P2[0]);
  CarryOperator U70 (G3[5], P3[5], G2[5], P2[5], G2[1], P2[1]);
  CarryOperator U71 (G3[6], P3[6], G2[6], P2[6], G2[2], P2[2]);
  CarryOperator U72 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U73 (G3[8], P3[8], G2[8], P2[8], G2[4], P2[4]);
  CarryOperator U74 (G3[9], P3[9], G2[9], P2[9], G2[5], P2[5]);
  CarryOperator U75 (G3[10], P3[10], G2[10], P2[10], G2[6], P2[6]);
  CarryOperator U76 (G3[11], P3[11], G2[11], P2[11], G2[7], P2[7]);
  CarryOperator U77 (G3[12], P3[12], G2[12], P2[12], G2[8], P2[8]);
  CarryOperator U78 (G3[13], P3[13], G2[13], P2[13], G2[9], P2[9]);
  CarryOperator U79 (G3[14], P3[14], G2[14], P2[14], G2[10], P2[10]);
  CarryOperator U80 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U81 (G3[16], P3[16], G2[16], P2[16], G2[12], P2[12]);
  CarryOperator U82 (G3[17], P3[17], G2[17], P2[17], G2[13], P2[13]);
  CarryOperator U83 (G3[18], P3[18], G2[18], P2[18], G2[14], P2[14]);
  CarryOperator U84 (G3[19], P3[19], G2[19], P2[19], G2[15], P2[15]);
  CarryOperator U85 (G3[20], P3[20], G2[20], P2[20], G2[16], P2[16]);
  CarryOperator U86 (G3[21], P3[21], G2[21], P2[21], G2[17], P2[17]);
  CarryOperator U87 (G3[22], P3[22], G2[22], P2[22], G2[18], P2[18]);
  CarryOperator U88 (G3[23], P3[23], G2[23], P2[23], G2[19], P2[19]);
  CarryOperator U89 (G4[8], P4[8], G3[8], P3[8], G3[0], P3[0]);
  CarryOperator U90 (G4[9], P4[9], G3[9], P3[9], G3[1], P3[1]);
  CarryOperator U91 (G4[10], P4[10], G3[10], P3[10], G3[2], P3[2]);
  CarryOperator U92 (G4[11], P4[11], G3[11], P3[11], G3[3], P3[3]);
  CarryOperator U93 (G4[12], P4[12], G3[12], P3[12], G3[4], P3[4]);
  CarryOperator U94 (G4[13], P4[13], G3[13], P3[13], G3[5], P3[5]);
  CarryOperator U95 (G4[14], P4[14], G3[14], P3[14], G3[6], P3[6]);
  CarryOperator U96 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U97 (G4[16], P4[16], G3[16], P3[16], G3[8], P3[8]);
  CarryOperator U98 (G4[17], P4[17], G3[17], P3[17], G3[9], P3[9]);
  CarryOperator U99 (G4[18], P4[18], G3[18], P3[18], G3[10], P3[10]);
  CarryOperator U100 (G4[19], P4[19], G3[19], P3[19], G3[11], P3[11]);
  CarryOperator U101 (G4[20], P4[20], G3[20], P3[20], G3[12], P3[12]);
  CarryOperator U102 (G4[21], P4[21], G3[21], P3[21], G3[13], P3[13]);
  CarryOperator U103 (G4[22], P4[22], G3[22], P3[22], G3[14], P3[14]);
  CarryOperator U104 (G4[23], P4[23], G3[23], P3[23], G3[15], P3[15]);
  CarryOperator U105 (G5[16], P5[16], G4[16], P4[16], G4[0], P4[0]);
  CarryOperator U106 (G5[17], P5[17], G4[17], P4[17], G4[1], P4[1]);
  CarryOperator U107 (G5[18], P5[18], G4[18], P4[18], G4[2], P4[2]);
  CarryOperator U108 (G5[19], P5[19], G4[19], P4[19], G4[3], P4[3]);
  CarryOperator U109 (G5[20], P5[20], G4[20], P4[20], G4[4], P4[4]);
  CarryOperator U110 (G5[21], P5[21], G4[21], P4[21], G4[5], P4[5]);
  CarryOperator U111 (G5[22], P5[22], G4[22], P4[22], G4[6], P4[6]);
  CarryOperator U112 (G5[23], P5[23], G4[23], P4[23], G4[7], P4[7]);
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

module UBExtender_15_0_2000 (O, I);
  output [23:0] O;
  input [15:0] I;
  UBCON_15_0 U0 (O[15:0], I[15:0]);
  UBZero_23_16 U1 (O[23:16]);
endmodule

module UBKSA_15_0_23_0 (S, X, Y);
  output [24:0] S;
  input [15:0] X;
  input [23:0] Y;
  wire [23:0] Z;
  UBExtender_15_0_2000 U0 (Z[23:0], X[15:0]);
  UBPureKSA_23_0 U1 (S[24:0], Z[23:0], Y[23:0]);
endmodule

module UBPureKSA_23_0 (S, X, Y);
  output [24:0] S;
  input [23:0] X;
  input [23:0] Y;
  wire C;
  UBPriKSA_23_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

