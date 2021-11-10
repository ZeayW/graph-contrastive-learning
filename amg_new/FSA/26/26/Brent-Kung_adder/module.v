/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBBKA_25_0_25_0

  Operand-1 length: 26
  Operand-2 length: 26
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

module UBPriBKA_25_0(S, X, Y, Cin);
  output [26:0] S;
  input Cin;
  input [25:0] X;
  input [25:0] Y;
  wire [25:0] G0;
  wire [25:0] G1;
  wire [25:0] G2;
  wire [25:0] G3;
  wire [25:0] G4;
  wire [25:0] G5;
  wire [25:0] G6;
  wire [25:0] G7;
  wire [25:0] G8;
  wire [25:0] P0;
  wire [25:0] P1;
  wire [25:0] P2;
  wire [25:0] P3;
  wire [25:0] P4;
  wire [25:0] P5;
  wire [25:0] P6;
  wire [25:0] P7;
  wire [25:0] P8;
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
  assign P1[12] = P0[12];
  assign G1[12] = G0[12];
  assign P1[14] = P0[14];
  assign G1[14] = G0[14];
  assign P1[16] = P0[16];
  assign G1[16] = G0[16];
  assign P1[18] = P0[18];
  assign G1[18] = G0[18];
  assign P1[20] = P0[20];
  assign G1[20] = G0[20];
  assign P1[22] = P0[22];
  assign G1[22] = G0[22];
  assign P1[24] = P0[24];
  assign G1[24] = G0[24];
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
  assign P2[12] = P1[12];
  assign G2[12] = G1[12];
  assign P2[13] = P1[13];
  assign G2[13] = G1[13];
  assign P2[14] = P1[14];
  assign G2[14] = G1[14];
  assign P2[16] = P1[16];
  assign G2[16] = G1[16];
  assign P2[17] = P1[17];
  assign G2[17] = G1[17];
  assign P2[18] = P1[18];
  assign G2[18] = G1[18];
  assign P2[20] = P1[20];
  assign G2[20] = G1[20];
  assign P2[21] = P1[21];
  assign G2[21] = G1[21];
  assign P2[22] = P1[22];
  assign G2[22] = G1[22];
  assign P2[24] = P1[24];
  assign G2[24] = G1[24];
  assign P2[25] = P1[25];
  assign G2[25] = G1[25];
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
  assign P3[11] = P2[11];
  assign G3[11] = G2[11];
  assign P3[12] = P2[12];
  assign G3[12] = G2[12];
  assign P3[13] = P2[13];
  assign G3[13] = G2[13];
  assign P3[14] = P2[14];
  assign G3[14] = G2[14];
  assign P3[16] = P2[16];
  assign G3[16] = G2[16];
  assign P3[17] = P2[17];
  assign G3[17] = G2[17];
  assign P3[18] = P2[18];
  assign G3[18] = G2[18];
  assign P3[19] = P2[19];
  assign G3[19] = G2[19];
  assign P3[20] = P2[20];
  assign G3[20] = G2[20];
  assign P3[21] = P2[21];
  assign G3[21] = G2[21];
  assign P3[22] = P2[22];
  assign G3[22] = G2[22];
  assign P3[24] = P2[24];
  assign G3[24] = G2[24];
  assign P3[25] = P2[25];
  assign G3[25] = G2[25];
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
  assign P4[11] = P3[11];
  assign G4[11] = G3[11];
  assign P4[12] = P3[12];
  assign G4[12] = G3[12];
  assign P4[13] = P3[13];
  assign G4[13] = G3[13];
  assign P4[14] = P3[14];
  assign G4[14] = G3[14];
  assign P4[16] = P3[16];
  assign G4[16] = G3[16];
  assign P4[17] = P3[17];
  assign G4[17] = G3[17];
  assign P4[18] = P3[18];
  assign G4[18] = G3[18];
  assign P4[19] = P3[19];
  assign G4[19] = G3[19];
  assign P4[20] = P3[20];
  assign G4[20] = G3[20];
  assign P4[21] = P3[21];
  assign G4[21] = G3[21];
  assign P4[22] = P3[22];
  assign G4[22] = G3[22];
  assign P4[23] = P3[23];
  assign G4[23] = G3[23];
  assign P4[24] = P3[24];
  assign G4[24] = G3[24];
  assign P4[25] = P3[25];
  assign G4[25] = G3[25];
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
  assign P5[16] = P4[16];
  assign G5[16] = G4[16];
  assign P5[17] = P4[17];
  assign G5[17] = G4[17];
  assign P5[18] = P4[18];
  assign G5[18] = G4[18];
  assign P5[19] = P4[19];
  assign G5[19] = G4[19];
  assign P5[20] = P4[20];
  assign G5[20] = G4[20];
  assign P5[21] = P4[21];
  assign G5[21] = G4[21];
  assign P5[22] = P4[22];
  assign G5[22] = G4[22];
  assign P5[24] = P4[24];
  assign G5[24] = G4[24];
  assign P5[25] = P4[25];
  assign G5[25] = G4[25];
  assign P6[0] = P5[0];
  assign G6[0] = G5[0];
  assign P6[1] = P5[1];
  assign G6[1] = G5[1];
  assign P6[2] = P5[2];
  assign G6[2] = G5[2];
  assign P6[3] = P5[3];
  assign G6[3] = G5[3];
  assign P6[4] = P5[4];
  assign G6[4] = G5[4];
  assign P6[5] = P5[5];
  assign G6[5] = G5[5];
  assign P6[6] = P5[6];
  assign G6[6] = G5[6];
  assign P6[7] = P5[7];
  assign G6[7] = G5[7];
  assign P6[8] = P5[8];
  assign G6[8] = G5[8];
  assign P6[9] = P5[9];
  assign G6[9] = G5[9];
  assign P6[10] = P5[10];
  assign G6[10] = G5[10];
  assign P6[12] = P5[12];
  assign G6[12] = G5[12];
  assign P6[13] = P5[13];
  assign G6[13] = G5[13];
  assign P6[14] = P5[14];
  assign G6[14] = G5[14];
  assign P6[15] = P5[15];
  assign G6[15] = G5[15];
  assign P6[16] = P5[16];
  assign G6[16] = G5[16];
  assign P6[17] = P5[17];
  assign G6[17] = G5[17];
  assign P6[18] = P5[18];
  assign G6[18] = G5[18];
  assign P6[20] = P5[20];
  assign G6[20] = G5[20];
  assign P6[21] = P5[21];
  assign G6[21] = G5[21];
  assign P6[22] = P5[22];
  assign G6[22] = G5[22];
  assign P6[23] = P5[23];
  assign G6[23] = G5[23];
  assign P6[24] = P5[24];
  assign G6[24] = G5[24];
  assign P6[25] = P5[25];
  assign G6[25] = G5[25];
  assign P7[0] = P6[0];
  assign G7[0] = G6[0];
  assign P7[1] = P6[1];
  assign G7[1] = G6[1];
  assign P7[2] = P6[2];
  assign G7[2] = G6[2];
  assign P7[3] = P6[3];
  assign G7[3] = G6[3];
  assign P7[4] = P6[4];
  assign G7[4] = G6[4];
  assign P7[6] = P6[6];
  assign G7[6] = G6[6];
  assign P7[7] = P6[7];
  assign G7[7] = G6[7];
  assign P7[8] = P6[8];
  assign G7[8] = G6[8];
  assign P7[10] = P6[10];
  assign G7[10] = G6[10];
  assign P7[11] = P6[11];
  assign G7[11] = G6[11];
  assign P7[12] = P6[12];
  assign G7[12] = G6[12];
  assign P7[14] = P6[14];
  assign G7[14] = G6[14];
  assign P7[15] = P6[15];
  assign G7[15] = G6[15];
  assign P7[16] = P6[16];
  assign G7[16] = G6[16];
  assign P7[18] = P6[18];
  assign G7[18] = G6[18];
  assign P7[19] = P6[19];
  assign G7[19] = G6[19];
  assign P7[20] = P6[20];
  assign G7[20] = G6[20];
  assign P7[22] = P6[22];
  assign G7[22] = G6[22];
  assign P7[23] = P6[23];
  assign G7[23] = G6[23];
  assign P7[24] = P6[24];
  assign G7[24] = G6[24];
  assign P8[0] = P7[0];
  assign G8[0] = G7[0];
  assign P8[1] = P7[1];
  assign G8[1] = G7[1];
  assign P8[3] = P7[3];
  assign G8[3] = G7[3];
  assign P8[5] = P7[5];
  assign G8[5] = G7[5];
  assign P8[7] = P7[7];
  assign G8[7] = G7[7];
  assign P8[9] = P7[9];
  assign G8[9] = G7[9];
  assign P8[11] = P7[11];
  assign G8[11] = G7[11];
  assign P8[13] = P7[13];
  assign G8[13] = G7[13];
  assign P8[15] = P7[15];
  assign G8[15] = G7[15];
  assign P8[17] = P7[17];
  assign G8[17] = G7[17];
  assign P8[19] = P7[19];
  assign G8[19] = G7[19];
  assign P8[21] = P7[21];
  assign G8[21] = G7[21];
  assign P8[23] = P7[23];
  assign G8[23] = G7[23];
  assign P8[25] = P7[25];
  assign G8[25] = G7[25];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G8[0] | ( P8[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G8[1] | ( P8[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G8[2] | ( P8[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G8[3] | ( P8[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G8[4] | ( P8[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G8[5] | ( P8[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G8[6] | ( P8[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G8[7] | ( P8[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G8[8] | ( P8[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G8[9] | ( P8[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G8[10] | ( P8[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G8[11] | ( P8[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G8[12] | ( P8[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G8[13] | ( P8[13] & Cin ) ) ^ P0[14];
  assign S[15] = ( G8[14] | ( P8[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G8[15] | ( P8[15] & Cin ) ) ^ P0[16];
  assign S[17] = ( G8[16] | ( P8[16] & Cin ) ) ^ P0[17];
  assign S[18] = ( G8[17] | ( P8[17] & Cin ) ) ^ P0[18];
  assign S[19] = ( G8[18] | ( P8[18] & Cin ) ) ^ P0[19];
  assign S[20] = ( G8[19] | ( P8[19] & Cin ) ) ^ P0[20];
  assign S[21] = ( G8[20] | ( P8[20] & Cin ) ) ^ P0[21];
  assign S[22] = ( G8[21] | ( P8[21] & Cin ) ) ^ P0[22];
  assign S[23] = ( G8[22] | ( P8[22] & Cin ) ) ^ P0[23];
  assign S[24] = ( G8[23] | ( P8[23] & Cin ) ) ^ P0[24];
  assign S[25] = ( G8[24] | ( P8[24] & Cin ) ) ^ P0[25];
  assign S[26] = G8[25] | ( P8[25] & Cin );
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
  GPGenerator U24 (G0[24], P0[24], X[24], Y[24]);
  GPGenerator U25 (G0[25], P0[25], X[25], Y[25]);
  CarryOperator U26 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U27 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U28 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U29 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U30 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U31 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U32 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U33 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U34 (G1[17], P1[17], G0[17], P0[17], G0[16], P0[16]);
  CarryOperator U35 (G1[19], P1[19], G0[19], P0[19], G0[18], P0[18]);
  CarryOperator U36 (G1[21], P1[21], G0[21], P0[21], G0[20], P0[20]);
  CarryOperator U37 (G1[23], P1[23], G0[23], P0[23], G0[22], P0[22]);
  CarryOperator U38 (G1[25], P1[25], G0[25], P0[25], G0[24], P0[24]);
  CarryOperator U39 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U40 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U41 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U42 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U43 (G2[19], P2[19], G1[19], P1[19], G1[17], P1[17]);
  CarryOperator U44 (G2[23], P2[23], G1[23], P1[23], G1[21], P1[21]);
  CarryOperator U45 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U46 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U47 (G3[23], P3[23], G2[23], P2[23], G2[19], P2[19]);
  CarryOperator U48 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U49 (G5[23], P5[23], G4[23], P4[23], G4[15], P4[15]);
  CarryOperator U50 (G6[11], P6[11], G5[11], P5[11], G5[7], P5[7]);
  CarryOperator U51 (G6[19], P6[19], G5[19], P5[19], G5[15], P5[15]);
  CarryOperator U52 (G7[5], P7[5], G6[5], P6[5], G6[3], P6[3]);
  CarryOperator U53 (G7[9], P7[9], G6[9], P6[9], G6[7], P6[7]);
  CarryOperator U54 (G7[13], P7[13], G6[13], P6[13], G6[11], P6[11]);
  CarryOperator U55 (G7[17], P7[17], G6[17], P6[17], G6[15], P6[15]);
  CarryOperator U56 (G7[21], P7[21], G6[21], P6[21], G6[19], P6[19]);
  CarryOperator U57 (G7[25], P7[25], G6[25], P6[25], G6[23], P6[23]);
  CarryOperator U58 (G8[2], P8[2], G7[2], P7[2], G7[1], P7[1]);
  CarryOperator U59 (G8[4], P8[4], G7[4], P7[4], G7[3], P7[3]);
  CarryOperator U60 (G8[6], P8[6], G7[6], P7[6], G7[5], P7[5]);
  CarryOperator U61 (G8[8], P8[8], G7[8], P7[8], G7[7], P7[7]);
  CarryOperator U62 (G8[10], P8[10], G7[10], P7[10], G7[9], P7[9]);
  CarryOperator U63 (G8[12], P8[12], G7[12], P7[12], G7[11], P7[11]);
  CarryOperator U64 (G8[14], P8[14], G7[14], P7[14], G7[13], P7[13]);
  CarryOperator U65 (G8[16], P8[16], G7[16], P7[16], G7[15], P7[15]);
  CarryOperator U66 (G8[18], P8[18], G7[18], P7[18], G7[17], P7[17]);
  CarryOperator U67 (G8[20], P8[20], G7[20], P7[20], G7[19], P7[19]);
  CarryOperator U68 (G8[22], P8[22], G7[22], P7[22], G7[21], P7[21]);
  CarryOperator U69 (G8[24], P8[24], G7[24], P7[24], G7[23], P7[23]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBBKA_25_0_25_0 (S, X, Y);
  output [26:0] S;
  input [25:0] X;
  input [25:0] Y;
  UBPureBKA_25_0 U0 (S[26:0], X[25:0], Y[25:0]);
endmodule

module UBPureBKA_25_0 (S, X, Y);
  output [26:0] S;
  input [25:0] X;
  input [25:0] Y;
  wire C;
  UBPriBKA_25_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

