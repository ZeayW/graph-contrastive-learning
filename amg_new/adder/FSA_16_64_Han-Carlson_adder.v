/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBHCA_15_0_63_0

  Operand-1 length: 16
  Operand-2 length: 64
  Two-operand addition algorithm: Han-Carlson adder
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

module UBZero_63_16(O);
  output [63:16] O;
  assign O[16] = 0;
  assign O[17] = 0;
  assign O[18] = 0;
  assign O[19] = 0;
  assign O[20] = 0;
  assign O[21] = 0;
  assign O[22] = 0;
  assign O[23] = 0;
  assign O[24] = 0;
  assign O[25] = 0;
  assign O[26] = 0;
  assign O[27] = 0;
  assign O[28] = 0;
  assign O[29] = 0;
  assign O[30] = 0;
  assign O[31] = 0;
  assign O[32] = 0;
  assign O[33] = 0;
  assign O[34] = 0;
  assign O[35] = 0;
  assign O[36] = 0;
  assign O[37] = 0;
  assign O[38] = 0;
  assign O[39] = 0;
  assign O[40] = 0;
  assign O[41] = 0;
  assign O[42] = 0;
  assign O[43] = 0;
  assign O[44] = 0;
  assign O[45] = 0;
  assign O[46] = 0;
  assign O[47] = 0;
  assign O[48] = 0;
  assign O[49] = 0;
  assign O[50] = 0;
  assign O[51] = 0;
  assign O[52] = 0;
  assign O[53] = 0;
  assign O[54] = 0;
  assign O[55] = 0;
  assign O[56] = 0;
  assign O[57] = 0;
  assign O[58] = 0;
  assign O[59] = 0;
  assign O[60] = 0;
  assign O[61] = 0;
  assign O[62] = 0;
  assign O[63] = 0;
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

module UBPriHCA_63_0(S, X, Y, Cin);
  output [64:0] S;
  input Cin;
  input [63:0] X;
  input [63:0] Y;
  wire [63:0] G0;
  wire [63:0] G1;
  wire [63:0] G2;
  wire [63:0] G3;
  wire [63:0] G4;
  wire [63:0] G5;
  wire [63:0] G6;
  wire [63:0] G7;
  wire [63:0] P0;
  wire [63:0] P1;
  wire [63:0] P2;
  wire [63:0] P3;
  wire [63:0] P4;
  wire [63:0] P5;
  wire [63:0] P6;
  wire [63:0] P7;
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
  assign P1[26] = P0[26];
  assign G1[26] = G0[26];
  assign P1[28] = P0[28];
  assign G1[28] = G0[28];
  assign P1[30] = P0[30];
  assign G1[30] = G0[30];
  assign P1[32] = P0[32];
  assign G1[32] = G0[32];
  assign P1[34] = P0[34];
  assign G1[34] = G0[34];
  assign P1[36] = P0[36];
  assign G1[36] = G0[36];
  assign P1[38] = P0[38];
  assign G1[38] = G0[38];
  assign P1[40] = P0[40];
  assign G1[40] = G0[40];
  assign P1[42] = P0[42];
  assign G1[42] = G0[42];
  assign P1[44] = P0[44];
  assign G1[44] = G0[44];
  assign P1[46] = P0[46];
  assign G1[46] = G0[46];
  assign P1[48] = P0[48];
  assign G1[48] = G0[48];
  assign P1[50] = P0[50];
  assign G1[50] = G0[50];
  assign P1[52] = P0[52];
  assign G1[52] = G0[52];
  assign P1[54] = P0[54];
  assign G1[54] = G0[54];
  assign P1[56] = P0[56];
  assign G1[56] = G0[56];
  assign P1[58] = P0[58];
  assign G1[58] = G0[58];
  assign P1[60] = P0[60];
  assign G1[60] = G0[60];
  assign P1[62] = P0[62];
  assign G1[62] = G0[62];
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
  assign P2[8] = P1[8];
  assign G2[8] = G1[8];
  assign P2[10] = P1[10];
  assign G2[10] = G1[10];
  assign P2[12] = P1[12];
  assign G2[12] = G1[12];
  assign P2[14] = P1[14];
  assign G2[14] = G1[14];
  assign P2[16] = P1[16];
  assign G2[16] = G1[16];
  assign P2[18] = P1[18];
  assign G2[18] = G1[18];
  assign P2[20] = P1[20];
  assign G2[20] = G1[20];
  assign P2[22] = P1[22];
  assign G2[22] = G1[22];
  assign P2[24] = P1[24];
  assign G2[24] = G1[24];
  assign P2[26] = P1[26];
  assign G2[26] = G1[26];
  assign P2[28] = P1[28];
  assign G2[28] = G1[28];
  assign P2[30] = P1[30];
  assign G2[30] = G1[30];
  assign P2[32] = P1[32];
  assign G2[32] = G1[32];
  assign P2[34] = P1[34];
  assign G2[34] = G1[34];
  assign P2[36] = P1[36];
  assign G2[36] = G1[36];
  assign P2[38] = P1[38];
  assign G2[38] = G1[38];
  assign P2[40] = P1[40];
  assign G2[40] = G1[40];
  assign P2[42] = P1[42];
  assign G2[42] = G1[42];
  assign P2[44] = P1[44];
  assign G2[44] = G1[44];
  assign P2[46] = P1[46];
  assign G2[46] = G1[46];
  assign P2[48] = P1[48];
  assign G2[48] = G1[48];
  assign P2[50] = P1[50];
  assign G2[50] = G1[50];
  assign P2[52] = P1[52];
  assign G2[52] = G1[52];
  assign P2[54] = P1[54];
  assign G2[54] = G1[54];
  assign P2[56] = P1[56];
  assign G2[56] = G1[56];
  assign P2[58] = P1[58];
  assign G2[58] = G1[58];
  assign P2[60] = P1[60];
  assign G2[60] = G1[60];
  assign P2[62] = P1[62];
  assign G2[62] = G1[62];
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
  assign P3[8] = P2[8];
  assign G3[8] = G2[8];
  assign P3[10] = P2[10];
  assign G3[10] = G2[10];
  assign P3[12] = P2[12];
  assign G3[12] = G2[12];
  assign P3[14] = P2[14];
  assign G3[14] = G2[14];
  assign P3[16] = P2[16];
  assign G3[16] = G2[16];
  assign P3[18] = P2[18];
  assign G3[18] = G2[18];
  assign P3[20] = P2[20];
  assign G3[20] = G2[20];
  assign P3[22] = P2[22];
  assign G3[22] = G2[22];
  assign P3[24] = P2[24];
  assign G3[24] = G2[24];
  assign P3[26] = P2[26];
  assign G3[26] = G2[26];
  assign P3[28] = P2[28];
  assign G3[28] = G2[28];
  assign P3[30] = P2[30];
  assign G3[30] = G2[30];
  assign P3[32] = P2[32];
  assign G3[32] = G2[32];
  assign P3[34] = P2[34];
  assign G3[34] = G2[34];
  assign P3[36] = P2[36];
  assign G3[36] = G2[36];
  assign P3[38] = P2[38];
  assign G3[38] = G2[38];
  assign P3[40] = P2[40];
  assign G3[40] = G2[40];
  assign P3[42] = P2[42];
  assign G3[42] = G2[42];
  assign P3[44] = P2[44];
  assign G3[44] = G2[44];
  assign P3[46] = P2[46];
  assign G3[46] = G2[46];
  assign P3[48] = P2[48];
  assign G3[48] = G2[48];
  assign P3[50] = P2[50];
  assign G3[50] = G2[50];
  assign P3[52] = P2[52];
  assign G3[52] = G2[52];
  assign P3[54] = P2[54];
  assign G3[54] = G2[54];
  assign P3[56] = P2[56];
  assign G3[56] = G2[56];
  assign P3[58] = P2[58];
  assign G3[58] = G2[58];
  assign P3[60] = P2[60];
  assign G3[60] = G2[60];
  assign P3[62] = P2[62];
  assign G3[62] = G2[62];
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
  assign P4[10] = P3[10];
  assign G4[10] = G3[10];
  assign P4[12] = P3[12];
  assign G4[12] = G3[12];
  assign P4[14] = P3[14];
  assign G4[14] = G3[14];
  assign P4[16] = P3[16];
  assign G4[16] = G3[16];
  assign P4[18] = P3[18];
  assign G4[18] = G3[18];
  assign P4[20] = P3[20];
  assign G4[20] = G3[20];
  assign P4[22] = P3[22];
  assign G4[22] = G3[22];
  assign P4[24] = P3[24];
  assign G4[24] = G3[24];
  assign P4[26] = P3[26];
  assign G4[26] = G3[26];
  assign P4[28] = P3[28];
  assign G4[28] = G3[28];
  assign P4[30] = P3[30];
  assign G4[30] = G3[30];
  assign P4[32] = P3[32];
  assign G4[32] = G3[32];
  assign P4[34] = P3[34];
  assign G4[34] = G3[34];
  assign P4[36] = P3[36];
  assign G4[36] = G3[36];
  assign P4[38] = P3[38];
  assign G4[38] = G3[38];
  assign P4[40] = P3[40];
  assign G4[40] = G3[40];
  assign P4[42] = P3[42];
  assign G4[42] = G3[42];
  assign P4[44] = P3[44];
  assign G4[44] = G3[44];
  assign P4[46] = P3[46];
  assign G4[46] = G3[46];
  assign P4[48] = P3[48];
  assign G4[48] = G3[48];
  assign P4[50] = P3[50];
  assign G4[50] = G3[50];
  assign P4[52] = P3[52];
  assign G4[52] = G3[52];
  assign P4[54] = P3[54];
  assign G4[54] = G3[54];
  assign P4[56] = P3[56];
  assign G4[56] = G3[56];
  assign P4[58] = P3[58];
  assign G4[58] = G3[58];
  assign P4[60] = P3[60];
  assign G4[60] = G3[60];
  assign P4[62] = P3[62];
  assign G4[62] = G3[62];
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
  assign P5[18] = P4[18];
  assign G5[18] = G4[18];
  assign P5[20] = P4[20];
  assign G5[20] = G4[20];
  assign P5[22] = P4[22];
  assign G5[22] = G4[22];
  assign P5[24] = P4[24];
  assign G5[24] = G4[24];
  assign P5[26] = P4[26];
  assign G5[26] = G4[26];
  assign P5[28] = P4[28];
  assign G5[28] = G4[28];
  assign P5[30] = P4[30];
  assign G5[30] = G4[30];
  assign P5[32] = P4[32];
  assign G5[32] = G4[32];
  assign P5[34] = P4[34];
  assign G5[34] = G4[34];
  assign P5[36] = P4[36];
  assign G5[36] = G4[36];
  assign P5[38] = P4[38];
  assign G5[38] = G4[38];
  assign P5[40] = P4[40];
  assign G5[40] = G4[40];
  assign P5[42] = P4[42];
  assign G5[42] = G4[42];
  assign P5[44] = P4[44];
  assign G5[44] = G4[44];
  assign P5[46] = P4[46];
  assign G5[46] = G4[46];
  assign P5[48] = P4[48];
  assign G5[48] = G4[48];
  assign P5[50] = P4[50];
  assign G5[50] = G4[50];
  assign P5[52] = P4[52];
  assign G5[52] = G4[52];
  assign P5[54] = P4[54];
  assign G5[54] = G4[54];
  assign P5[56] = P4[56];
  assign G5[56] = G4[56];
  assign P5[58] = P4[58];
  assign G5[58] = G4[58];
  assign P5[60] = P4[60];
  assign G5[60] = G4[60];
  assign P5[62] = P4[62];
  assign G5[62] = G4[62];
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
  assign P6[11] = P5[11];
  assign G6[11] = G5[11];
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
  assign P6[19] = P5[19];
  assign G6[19] = G5[19];
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
  assign P6[26] = P5[26];
  assign G6[26] = G5[26];
  assign P6[27] = P5[27];
  assign G6[27] = G5[27];
  assign P6[28] = P5[28];
  assign G6[28] = G5[28];
  assign P6[29] = P5[29];
  assign G6[29] = G5[29];
  assign P6[30] = P5[30];
  assign G6[30] = G5[30];
  assign P6[31] = P5[31];
  assign G6[31] = G5[31];
  assign P6[32] = P5[32];
  assign G6[32] = G5[32];
  assign P6[34] = P5[34];
  assign G6[34] = G5[34];
  assign P6[36] = P5[36];
  assign G6[36] = G5[36];
  assign P6[38] = P5[38];
  assign G6[38] = G5[38];
  assign P6[40] = P5[40];
  assign G6[40] = G5[40];
  assign P6[42] = P5[42];
  assign G6[42] = G5[42];
  assign P6[44] = P5[44];
  assign G6[44] = G5[44];
  assign P6[46] = P5[46];
  assign G6[46] = G5[46];
  assign P6[48] = P5[48];
  assign G6[48] = G5[48];
  assign P6[50] = P5[50];
  assign G6[50] = G5[50];
  assign P6[52] = P5[52];
  assign G6[52] = G5[52];
  assign P6[54] = P5[54];
  assign G6[54] = G5[54];
  assign P6[56] = P5[56];
  assign G6[56] = G5[56];
  assign P6[58] = P5[58];
  assign G6[58] = G5[58];
  assign P6[60] = P5[60];
  assign G6[60] = G5[60];
  assign P6[62] = P5[62];
  assign G6[62] = G5[62];
  assign P7[0] = P6[0];
  assign G7[0] = G6[0];
  assign P7[1] = P6[1];
  assign G7[1] = G6[1];
  assign P7[3] = P6[3];
  assign G7[3] = G6[3];
  assign P7[5] = P6[5];
  assign G7[5] = G6[5];
  assign P7[7] = P6[7];
  assign G7[7] = G6[7];
  assign P7[9] = P6[9];
  assign G7[9] = G6[9];
  assign P7[11] = P6[11];
  assign G7[11] = G6[11];
  assign P7[13] = P6[13];
  assign G7[13] = G6[13];
  assign P7[15] = P6[15];
  assign G7[15] = G6[15];
  assign P7[17] = P6[17];
  assign G7[17] = G6[17];
  assign P7[19] = P6[19];
  assign G7[19] = G6[19];
  assign P7[21] = P6[21];
  assign G7[21] = G6[21];
  assign P7[23] = P6[23];
  assign G7[23] = G6[23];
  assign P7[25] = P6[25];
  assign G7[25] = G6[25];
  assign P7[27] = P6[27];
  assign G7[27] = G6[27];
  assign P7[29] = P6[29];
  assign G7[29] = G6[29];
  assign P7[31] = P6[31];
  assign G7[31] = G6[31];
  assign P7[33] = P6[33];
  assign G7[33] = G6[33];
  assign P7[35] = P6[35];
  assign G7[35] = G6[35];
  assign P7[37] = P6[37];
  assign G7[37] = G6[37];
  assign P7[39] = P6[39];
  assign G7[39] = G6[39];
  assign P7[41] = P6[41];
  assign G7[41] = G6[41];
  assign P7[43] = P6[43];
  assign G7[43] = G6[43];
  assign P7[45] = P6[45];
  assign G7[45] = G6[45];
  assign P7[47] = P6[47];
  assign G7[47] = G6[47];
  assign P7[49] = P6[49];
  assign G7[49] = G6[49];
  assign P7[51] = P6[51];
  assign G7[51] = G6[51];
  assign P7[53] = P6[53];
  assign G7[53] = G6[53];
  assign P7[55] = P6[55];
  assign G7[55] = G6[55];
  assign P7[57] = P6[57];
  assign G7[57] = G6[57];
  assign P7[59] = P6[59];
  assign G7[59] = G6[59];
  assign P7[61] = P6[61];
  assign G7[61] = G6[61];
  assign P7[63] = P6[63];
  assign G7[63] = G6[63];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G7[0] | ( P7[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G7[1] | ( P7[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G7[2] | ( P7[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G7[3] | ( P7[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G7[4] | ( P7[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G7[5] | ( P7[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G7[6] | ( P7[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G7[7] | ( P7[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G7[8] | ( P7[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G7[9] | ( P7[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G7[10] | ( P7[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G7[11] | ( P7[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G7[12] | ( P7[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G7[13] | ( P7[13] & Cin ) ) ^ P0[14];
  assign S[15] = ( G7[14] | ( P7[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G7[15] | ( P7[15] & Cin ) ) ^ P0[16];
  assign S[17] = ( G7[16] | ( P7[16] & Cin ) ) ^ P0[17];
  assign S[18] = ( G7[17] | ( P7[17] & Cin ) ) ^ P0[18];
  assign S[19] = ( G7[18] | ( P7[18] & Cin ) ) ^ P0[19];
  assign S[20] = ( G7[19] | ( P7[19] & Cin ) ) ^ P0[20];
  assign S[21] = ( G7[20] | ( P7[20] & Cin ) ) ^ P0[21];
  assign S[22] = ( G7[21] | ( P7[21] & Cin ) ) ^ P0[22];
  assign S[23] = ( G7[22] | ( P7[22] & Cin ) ) ^ P0[23];
  assign S[24] = ( G7[23] | ( P7[23] & Cin ) ) ^ P0[24];
  assign S[25] = ( G7[24] | ( P7[24] & Cin ) ) ^ P0[25];
  assign S[26] = ( G7[25] | ( P7[25] & Cin ) ) ^ P0[26];
  assign S[27] = ( G7[26] | ( P7[26] & Cin ) ) ^ P0[27];
  assign S[28] = ( G7[27] | ( P7[27] & Cin ) ) ^ P0[28];
  assign S[29] = ( G7[28] | ( P7[28] & Cin ) ) ^ P0[29];
  assign S[30] = ( G7[29] | ( P7[29] & Cin ) ) ^ P0[30];
  assign S[31] = ( G7[30] | ( P7[30] & Cin ) ) ^ P0[31];
  assign S[32] = ( G7[31] | ( P7[31] & Cin ) ) ^ P0[32];
  assign S[33] = ( G7[32] | ( P7[32] & Cin ) ) ^ P0[33];
  assign S[34] = ( G7[33] | ( P7[33] & Cin ) ) ^ P0[34];
  assign S[35] = ( G7[34] | ( P7[34] & Cin ) ) ^ P0[35];
  assign S[36] = ( G7[35] | ( P7[35] & Cin ) ) ^ P0[36];
  assign S[37] = ( G7[36] | ( P7[36] & Cin ) ) ^ P0[37];
  assign S[38] = ( G7[37] | ( P7[37] & Cin ) ) ^ P0[38];
  assign S[39] = ( G7[38] | ( P7[38] & Cin ) ) ^ P0[39];
  assign S[40] = ( G7[39] | ( P7[39] & Cin ) ) ^ P0[40];
  assign S[41] = ( G7[40] | ( P7[40] & Cin ) ) ^ P0[41];
  assign S[42] = ( G7[41] | ( P7[41] & Cin ) ) ^ P0[42];
  assign S[43] = ( G7[42] | ( P7[42] & Cin ) ) ^ P0[43];
  assign S[44] = ( G7[43] | ( P7[43] & Cin ) ) ^ P0[44];
  assign S[45] = ( G7[44] | ( P7[44] & Cin ) ) ^ P0[45];
  assign S[46] = ( G7[45] | ( P7[45] & Cin ) ) ^ P0[46];
  assign S[47] = ( G7[46] | ( P7[46] & Cin ) ) ^ P0[47];
  assign S[48] = ( G7[47] | ( P7[47] & Cin ) ) ^ P0[48];
  assign S[49] = ( G7[48] | ( P7[48] & Cin ) ) ^ P0[49];
  assign S[50] = ( G7[49] | ( P7[49] & Cin ) ) ^ P0[50];
  assign S[51] = ( G7[50] | ( P7[50] & Cin ) ) ^ P0[51];
  assign S[52] = ( G7[51] | ( P7[51] & Cin ) ) ^ P0[52];
  assign S[53] = ( G7[52] | ( P7[52] & Cin ) ) ^ P0[53];
  assign S[54] = ( G7[53] | ( P7[53] & Cin ) ) ^ P0[54];
  assign S[55] = ( G7[54] | ( P7[54] & Cin ) ) ^ P0[55];
  assign S[56] = ( G7[55] | ( P7[55] & Cin ) ) ^ P0[56];
  assign S[57] = ( G7[56] | ( P7[56] & Cin ) ) ^ P0[57];
  assign S[58] = ( G7[57] | ( P7[57] & Cin ) ) ^ P0[58];
  assign S[59] = ( G7[58] | ( P7[58] & Cin ) ) ^ P0[59];
  assign S[60] = ( G7[59] | ( P7[59] & Cin ) ) ^ P0[60];
  assign S[61] = ( G7[60] | ( P7[60] & Cin ) ) ^ P0[61];
  assign S[62] = ( G7[61] | ( P7[61] & Cin ) ) ^ P0[62];
  assign S[63] = ( G7[62] | ( P7[62] & Cin ) ) ^ P0[63];
  assign S[64] = G7[63] | ( P7[63] & Cin );
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
  GPGenerator U26 (G0[26], P0[26], X[26], Y[26]);
  GPGenerator U27 (G0[27], P0[27], X[27], Y[27]);
  GPGenerator U28 (G0[28], P0[28], X[28], Y[28]);
  GPGenerator U29 (G0[29], P0[29], X[29], Y[29]);
  GPGenerator U30 (G0[30], P0[30], X[30], Y[30]);
  GPGenerator U31 (G0[31], P0[31], X[31], Y[31]);
  GPGenerator U32 (G0[32], P0[32], X[32], Y[32]);
  GPGenerator U33 (G0[33], P0[33], X[33], Y[33]);
  GPGenerator U34 (G0[34], P0[34], X[34], Y[34]);
  GPGenerator U35 (G0[35], P0[35], X[35], Y[35]);
  GPGenerator U36 (G0[36], P0[36], X[36], Y[36]);
  GPGenerator U37 (G0[37], P0[37], X[37], Y[37]);
  GPGenerator U38 (G0[38], P0[38], X[38], Y[38]);
  GPGenerator U39 (G0[39], P0[39], X[39], Y[39]);
  GPGenerator U40 (G0[40], P0[40], X[40], Y[40]);
  GPGenerator U41 (G0[41], P0[41], X[41], Y[41]);
  GPGenerator U42 (G0[42], P0[42], X[42], Y[42]);
  GPGenerator U43 (G0[43], P0[43], X[43], Y[43]);
  GPGenerator U44 (G0[44], P0[44], X[44], Y[44]);
  GPGenerator U45 (G0[45], P0[45], X[45], Y[45]);
  GPGenerator U46 (G0[46], P0[46], X[46], Y[46]);
  GPGenerator U47 (G0[47], P0[47], X[47], Y[47]);
  GPGenerator U48 (G0[48], P0[48], X[48], Y[48]);
  GPGenerator U49 (G0[49], P0[49], X[49], Y[49]);
  GPGenerator U50 (G0[50], P0[50], X[50], Y[50]);
  GPGenerator U51 (G0[51], P0[51], X[51], Y[51]);
  GPGenerator U52 (G0[52], P0[52], X[52], Y[52]);
  GPGenerator U53 (G0[53], P0[53], X[53], Y[53]);
  GPGenerator U54 (G0[54], P0[54], X[54], Y[54]);
  GPGenerator U55 (G0[55], P0[55], X[55], Y[55]);
  GPGenerator U56 (G0[56], P0[56], X[56], Y[56]);
  GPGenerator U57 (G0[57], P0[57], X[57], Y[57]);
  GPGenerator U58 (G0[58], P0[58], X[58], Y[58]);
  GPGenerator U59 (G0[59], P0[59], X[59], Y[59]);
  GPGenerator U60 (G0[60], P0[60], X[60], Y[60]);
  GPGenerator U61 (G0[61], P0[61], X[61], Y[61]);
  GPGenerator U62 (G0[62], P0[62], X[62], Y[62]);
  GPGenerator U63 (G0[63], P0[63], X[63], Y[63]);
  CarryOperator U64 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U65 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U66 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U67 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U68 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U69 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U70 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U71 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U72 (G1[17], P1[17], G0[17], P0[17], G0[16], P0[16]);
  CarryOperator U73 (G1[19], P1[19], G0[19], P0[19], G0[18], P0[18]);
  CarryOperator U74 (G1[21], P1[21], G0[21], P0[21], G0[20], P0[20]);
  CarryOperator U75 (G1[23], P1[23], G0[23], P0[23], G0[22], P0[22]);
  CarryOperator U76 (G1[25], P1[25], G0[25], P0[25], G0[24], P0[24]);
  CarryOperator U77 (G1[27], P1[27], G0[27], P0[27], G0[26], P0[26]);
  CarryOperator U78 (G1[29], P1[29], G0[29], P0[29], G0[28], P0[28]);
  CarryOperator U79 (G1[31], P1[31], G0[31], P0[31], G0[30], P0[30]);
  CarryOperator U80 (G1[33], P1[33], G0[33], P0[33], G0[32], P0[32]);
  CarryOperator U81 (G1[35], P1[35], G0[35], P0[35], G0[34], P0[34]);
  CarryOperator U82 (G1[37], P1[37], G0[37], P0[37], G0[36], P0[36]);
  CarryOperator U83 (G1[39], P1[39], G0[39], P0[39], G0[38], P0[38]);
  CarryOperator U84 (G1[41], P1[41], G0[41], P0[41], G0[40], P0[40]);
  CarryOperator U85 (G1[43], P1[43], G0[43], P0[43], G0[42], P0[42]);
  CarryOperator U86 (G1[45], P1[45], G0[45], P0[45], G0[44], P0[44]);
  CarryOperator U87 (G1[47], P1[47], G0[47], P0[47], G0[46], P0[46]);
  CarryOperator U88 (G1[49], P1[49], G0[49], P0[49], G0[48], P0[48]);
  CarryOperator U89 (G1[51], P1[51], G0[51], P0[51], G0[50], P0[50]);
  CarryOperator U90 (G1[53], P1[53], G0[53], P0[53], G0[52], P0[52]);
  CarryOperator U91 (G1[55], P1[55], G0[55], P0[55], G0[54], P0[54]);
  CarryOperator U92 (G1[57], P1[57], G0[57], P0[57], G0[56], P0[56]);
  CarryOperator U93 (G1[59], P1[59], G0[59], P0[59], G0[58], P0[58]);
  CarryOperator U94 (G1[61], P1[61], G0[61], P0[61], G0[60], P0[60]);
  CarryOperator U95 (G1[63], P1[63], G0[63], P0[63], G0[62], P0[62]);
  CarryOperator U96 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U97 (G2[5], P2[5], G1[5], P1[5], G1[3], P1[3]);
  CarryOperator U98 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U99 (G2[9], P2[9], G1[9], P1[9], G1[7], P1[7]);
  CarryOperator U100 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U101 (G2[13], P2[13], G1[13], P1[13], G1[11], P1[11]);
  CarryOperator U102 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U103 (G2[17], P2[17], G1[17], P1[17], G1[15], P1[15]);
  CarryOperator U104 (G2[19], P2[19], G1[19], P1[19], G1[17], P1[17]);
  CarryOperator U105 (G2[21], P2[21], G1[21], P1[21], G1[19], P1[19]);
  CarryOperator U106 (G2[23], P2[23], G1[23], P1[23], G1[21], P1[21]);
  CarryOperator U107 (G2[25], P2[25], G1[25], P1[25], G1[23], P1[23]);
  CarryOperator U108 (G2[27], P2[27], G1[27], P1[27], G1[25], P1[25]);
  CarryOperator U109 (G2[29], P2[29], G1[29], P1[29], G1[27], P1[27]);
  CarryOperator U110 (G2[31], P2[31], G1[31], P1[31], G1[29], P1[29]);
  CarryOperator U111 (G2[33], P2[33], G1[33], P1[33], G1[31], P1[31]);
  CarryOperator U112 (G2[35], P2[35], G1[35], P1[35], G1[33], P1[33]);
  CarryOperator U113 (G2[37], P2[37], G1[37], P1[37], G1[35], P1[35]);
  CarryOperator U114 (G2[39], P2[39], G1[39], P1[39], G1[37], P1[37]);
  CarryOperator U115 (G2[41], P2[41], G1[41], P1[41], G1[39], P1[39]);
  CarryOperator U116 (G2[43], P2[43], G1[43], P1[43], G1[41], P1[41]);
  CarryOperator U117 (G2[45], P2[45], G1[45], P1[45], G1[43], P1[43]);
  CarryOperator U118 (G2[47], P2[47], G1[47], P1[47], G1[45], P1[45]);
  CarryOperator U119 (G2[49], P2[49], G1[49], P1[49], G1[47], P1[47]);
  CarryOperator U120 (G2[51], P2[51], G1[51], P1[51], G1[49], P1[49]);
  CarryOperator U121 (G2[53], P2[53], G1[53], P1[53], G1[51], P1[51]);
  CarryOperator U122 (G2[55], P2[55], G1[55], P1[55], G1[53], P1[53]);
  CarryOperator U123 (G2[57], P2[57], G1[57], P1[57], G1[55], P1[55]);
  CarryOperator U124 (G2[59], P2[59], G1[59], P1[59], G1[57], P1[57]);
  CarryOperator U125 (G2[61], P2[61], G1[61], P1[61], G1[59], P1[59]);
  CarryOperator U126 (G2[63], P2[63], G1[63], P1[63], G1[61], P1[61]);
  CarryOperator U127 (G3[5], P3[5], G2[5], P2[5], G2[1], P2[1]);
  CarryOperator U128 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U129 (G3[9], P3[9], G2[9], P2[9], G2[5], P2[5]);
  CarryOperator U130 (G3[11], P3[11], G2[11], P2[11], G2[7], P2[7]);
  CarryOperator U131 (G3[13], P3[13], G2[13], P2[13], G2[9], P2[9]);
  CarryOperator U132 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U133 (G3[17], P3[17], G2[17], P2[17], G2[13], P2[13]);
  CarryOperator U134 (G3[19], P3[19], G2[19], P2[19], G2[15], P2[15]);
  CarryOperator U135 (G3[21], P3[21], G2[21], P2[21], G2[17], P2[17]);
  CarryOperator U136 (G3[23], P3[23], G2[23], P2[23], G2[19], P2[19]);
  CarryOperator U137 (G3[25], P3[25], G2[25], P2[25], G2[21], P2[21]);
  CarryOperator U138 (G3[27], P3[27], G2[27], P2[27], G2[23], P2[23]);
  CarryOperator U139 (G3[29], P3[29], G2[29], P2[29], G2[25], P2[25]);
  CarryOperator U140 (G3[31], P3[31], G2[31], P2[31], G2[27], P2[27]);
  CarryOperator U141 (G3[33], P3[33], G2[33], P2[33], G2[29], P2[29]);
  CarryOperator U142 (G3[35], P3[35], G2[35], P2[35], G2[31], P2[31]);
  CarryOperator U143 (G3[37], P3[37], G2[37], P2[37], G2[33], P2[33]);
  CarryOperator U144 (G3[39], P3[39], G2[39], P2[39], G2[35], P2[35]);
  CarryOperator U145 (G3[41], P3[41], G2[41], P2[41], G2[37], P2[37]);
  CarryOperator U146 (G3[43], P3[43], G2[43], P2[43], G2[39], P2[39]);
  CarryOperator U147 (G3[45], P3[45], G2[45], P2[45], G2[41], P2[41]);
  CarryOperator U148 (G3[47], P3[47], G2[47], P2[47], G2[43], P2[43]);
  CarryOperator U149 (G3[49], P3[49], G2[49], P2[49], G2[45], P2[45]);
  CarryOperator U150 (G3[51], P3[51], G2[51], P2[51], G2[47], P2[47]);
  CarryOperator U151 (G3[53], P3[53], G2[53], P2[53], G2[49], P2[49]);
  CarryOperator U152 (G3[55], P3[55], G2[55], P2[55], G2[51], P2[51]);
  CarryOperator U153 (G3[57], P3[57], G2[57], P2[57], G2[53], P2[53]);
  CarryOperator U154 (G3[59], P3[59], G2[59], P2[59], G2[55], P2[55]);
  CarryOperator U155 (G3[61], P3[61], G2[61], P2[61], G2[57], P2[57]);
  CarryOperator U156 (G3[63], P3[63], G2[63], P2[63], G2[59], P2[59]);
  CarryOperator U157 (G4[9], P4[9], G3[9], P3[9], G3[1], P3[1]);
  CarryOperator U158 (G4[11], P4[11], G3[11], P3[11], G3[3], P3[3]);
  CarryOperator U159 (G4[13], P4[13], G3[13], P3[13], G3[5], P3[5]);
  CarryOperator U160 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U161 (G4[17], P4[17], G3[17], P3[17], G3[9], P3[9]);
  CarryOperator U162 (G4[19], P4[19], G3[19], P3[19], G3[11], P3[11]);
  CarryOperator U163 (G4[21], P4[21], G3[21], P3[21], G3[13], P3[13]);
  CarryOperator U164 (G4[23], P4[23], G3[23], P3[23], G3[15], P3[15]);
  CarryOperator U165 (G4[25], P4[25], G3[25], P3[25], G3[17], P3[17]);
  CarryOperator U166 (G4[27], P4[27], G3[27], P3[27], G3[19], P3[19]);
  CarryOperator U167 (G4[29], P4[29], G3[29], P3[29], G3[21], P3[21]);
  CarryOperator U168 (G4[31], P4[31], G3[31], P3[31], G3[23], P3[23]);
  CarryOperator U169 (G4[33], P4[33], G3[33], P3[33], G3[25], P3[25]);
  CarryOperator U170 (G4[35], P4[35], G3[35], P3[35], G3[27], P3[27]);
  CarryOperator U171 (G4[37], P4[37], G3[37], P3[37], G3[29], P3[29]);
  CarryOperator U172 (G4[39], P4[39], G3[39], P3[39], G3[31], P3[31]);
  CarryOperator U173 (G4[41], P4[41], G3[41], P3[41], G3[33], P3[33]);
  CarryOperator U174 (G4[43], P4[43], G3[43], P3[43], G3[35], P3[35]);
  CarryOperator U175 (G4[45], P4[45], G3[45], P3[45], G3[37], P3[37]);
  CarryOperator U176 (G4[47], P4[47], G3[47], P3[47], G3[39], P3[39]);
  CarryOperator U177 (G4[49], P4[49], G3[49], P3[49], G3[41], P3[41]);
  CarryOperator U178 (G4[51], P4[51], G3[51], P3[51], G3[43], P3[43]);
  CarryOperator U179 (G4[53], P4[53], G3[53], P3[53], G3[45], P3[45]);
  CarryOperator U180 (G4[55], P4[55], G3[55], P3[55], G3[47], P3[47]);
  CarryOperator U181 (G4[57], P4[57], G3[57], P3[57], G3[49], P3[49]);
  CarryOperator U182 (G4[59], P4[59], G3[59], P3[59], G3[51], P3[51]);
  CarryOperator U183 (G4[61], P4[61], G3[61], P3[61], G3[53], P3[53]);
  CarryOperator U184 (G4[63], P4[63], G3[63], P3[63], G3[55], P3[55]);
  CarryOperator U185 (G5[17], P5[17], G4[17], P4[17], G4[1], P4[1]);
  CarryOperator U186 (G5[19], P5[19], G4[19], P4[19], G4[3], P4[3]);
  CarryOperator U187 (G5[21], P5[21], G4[21], P4[21], G4[5], P4[5]);
  CarryOperator U188 (G5[23], P5[23], G4[23], P4[23], G4[7], P4[7]);
  CarryOperator U189 (G5[25], P5[25], G4[25], P4[25], G4[9], P4[9]);
  CarryOperator U190 (G5[27], P5[27], G4[27], P4[27], G4[11], P4[11]);
  CarryOperator U191 (G5[29], P5[29], G4[29], P4[29], G4[13], P4[13]);
  CarryOperator U192 (G5[31], P5[31], G4[31], P4[31], G4[15], P4[15]);
  CarryOperator U193 (G5[33], P5[33], G4[33], P4[33], G4[17], P4[17]);
  CarryOperator U194 (G5[35], P5[35], G4[35], P4[35], G4[19], P4[19]);
  CarryOperator U195 (G5[37], P5[37], G4[37], P4[37], G4[21], P4[21]);
  CarryOperator U196 (G5[39], P5[39], G4[39], P4[39], G4[23], P4[23]);
  CarryOperator U197 (G5[41], P5[41], G4[41], P4[41], G4[25], P4[25]);
  CarryOperator U198 (G5[43], P5[43], G4[43], P4[43], G4[27], P4[27]);
  CarryOperator U199 (G5[45], P5[45], G4[45], P4[45], G4[29], P4[29]);
  CarryOperator U200 (G5[47], P5[47], G4[47], P4[47], G4[31], P4[31]);
  CarryOperator U201 (G5[49], P5[49], G4[49], P4[49], G4[33], P4[33]);
  CarryOperator U202 (G5[51], P5[51], G4[51], P4[51], G4[35], P4[35]);
  CarryOperator U203 (G5[53], P5[53], G4[53], P4[53], G4[37], P4[37]);
  CarryOperator U204 (G5[55], P5[55], G4[55], P4[55], G4[39], P4[39]);
  CarryOperator U205 (G5[57], P5[57], G4[57], P4[57], G4[41], P4[41]);
  CarryOperator U206 (G5[59], P5[59], G4[59], P4[59], G4[43], P4[43]);
  CarryOperator U207 (G5[61], P5[61], G4[61], P4[61], G4[45], P4[45]);
  CarryOperator U208 (G5[63], P5[63], G4[63], P4[63], G4[47], P4[47]);
  CarryOperator U209 (G6[33], P6[33], G5[33], P5[33], G5[1], P5[1]);
  CarryOperator U210 (G6[35], P6[35], G5[35], P5[35], G5[3], P5[3]);
  CarryOperator U211 (G6[37], P6[37], G5[37], P5[37], G5[5], P5[5]);
  CarryOperator U212 (G6[39], P6[39], G5[39], P5[39], G5[7], P5[7]);
  CarryOperator U213 (G6[41], P6[41], G5[41], P5[41], G5[9], P5[9]);
  CarryOperator U214 (G6[43], P6[43], G5[43], P5[43], G5[11], P5[11]);
  CarryOperator U215 (G6[45], P6[45], G5[45], P5[45], G5[13], P5[13]);
  CarryOperator U216 (G6[47], P6[47], G5[47], P5[47], G5[15], P5[15]);
  CarryOperator U217 (G6[49], P6[49], G5[49], P5[49], G5[17], P5[17]);
  CarryOperator U218 (G6[51], P6[51], G5[51], P5[51], G5[19], P5[19]);
  CarryOperator U219 (G6[53], P6[53], G5[53], P5[53], G5[21], P5[21]);
  CarryOperator U220 (G6[55], P6[55], G5[55], P5[55], G5[23], P5[23]);
  CarryOperator U221 (G6[57], P6[57], G5[57], P5[57], G5[25], P5[25]);
  CarryOperator U222 (G6[59], P6[59], G5[59], P5[59], G5[27], P5[27]);
  CarryOperator U223 (G6[61], P6[61], G5[61], P5[61], G5[29], P5[29]);
  CarryOperator U224 (G6[63], P6[63], G5[63], P5[63], G5[31], P5[31]);
  CarryOperator U225 (G7[2], P7[2], G6[2], P6[2], G6[1], P6[1]);
  CarryOperator U226 (G7[4], P7[4], G6[4], P6[4], G6[3], P6[3]);
  CarryOperator U227 (G7[6], P7[6], G6[6], P6[6], G6[5], P6[5]);
  CarryOperator U228 (G7[8], P7[8], G6[8], P6[8], G6[7], P6[7]);
  CarryOperator U229 (G7[10], P7[10], G6[10], P6[10], G6[9], P6[9]);
  CarryOperator U230 (G7[12], P7[12], G6[12], P6[12], G6[11], P6[11]);
  CarryOperator U231 (G7[14], P7[14], G6[14], P6[14], G6[13], P6[13]);
  CarryOperator U232 (G7[16], P7[16], G6[16], P6[16], G6[15], P6[15]);
  CarryOperator U233 (G7[18], P7[18], G6[18], P6[18], G6[17], P6[17]);
  CarryOperator U234 (G7[20], P7[20], G6[20], P6[20], G6[19], P6[19]);
  CarryOperator U235 (G7[22], P7[22], G6[22], P6[22], G6[21], P6[21]);
  CarryOperator U236 (G7[24], P7[24], G6[24], P6[24], G6[23], P6[23]);
  CarryOperator U237 (G7[26], P7[26], G6[26], P6[26], G6[25], P6[25]);
  CarryOperator U238 (G7[28], P7[28], G6[28], P6[28], G6[27], P6[27]);
  CarryOperator U239 (G7[30], P7[30], G6[30], P6[30], G6[29], P6[29]);
  CarryOperator U240 (G7[32], P7[32], G6[32], P6[32], G6[31], P6[31]);
  CarryOperator U241 (G7[34], P7[34], G6[34], P6[34], G6[33], P6[33]);
  CarryOperator U242 (G7[36], P7[36], G6[36], P6[36], G6[35], P6[35]);
  CarryOperator U243 (G7[38], P7[38], G6[38], P6[38], G6[37], P6[37]);
  CarryOperator U244 (G7[40], P7[40], G6[40], P6[40], G6[39], P6[39]);
  CarryOperator U245 (G7[42], P7[42], G6[42], P6[42], G6[41], P6[41]);
  CarryOperator U246 (G7[44], P7[44], G6[44], P6[44], G6[43], P6[43]);
  CarryOperator U247 (G7[46], P7[46], G6[46], P6[46], G6[45], P6[45]);
  CarryOperator U248 (G7[48], P7[48], G6[48], P6[48], G6[47], P6[47]);
  CarryOperator U249 (G7[50], P7[50], G6[50], P6[50], G6[49], P6[49]);
  CarryOperator U250 (G7[52], P7[52], G6[52], P6[52], G6[51], P6[51]);
  CarryOperator U251 (G7[54], P7[54], G6[54], P6[54], G6[53], P6[53]);
  CarryOperator U252 (G7[56], P7[56], G6[56], P6[56], G6[55], P6[55]);
  CarryOperator U253 (G7[58], P7[58], G6[58], P6[58], G6[57], P6[57]);
  CarryOperator U254 (G7[60], P7[60], G6[60], P6[60], G6[59], P6[59]);
  CarryOperator U255 (G7[62], P7[62], G6[62], P6[62], G6[61], P6[61]);
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

module UBExtender_15_0_6000 (O, I);
  output [63:0] O;
  input [15:0] I;
  UBCON_15_0 U0 (O[15:0], I[15:0]);
  UBZero_63_16 U1 (O[63:16]);
endmodule

module UBHCA_15_0_63_0 (S, X, Y);
  output [64:0] S;
  input [15:0] X;
  input [63:0] Y;
  wire [63:0] Z;
  UBExtender_15_0_6000 U0 (Z[63:0], X[15:0]);
  UBPureHCA_63_0 U1 (S[64:0], Z[63:0], Y[63:0]);
endmodule

module UBPureHCA_63_0 (S, X, Y);
  output [64:0] S;
  input [63:0] X;
  input [63:0] Y;
  wire C;
  UBPriHCA_63_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

