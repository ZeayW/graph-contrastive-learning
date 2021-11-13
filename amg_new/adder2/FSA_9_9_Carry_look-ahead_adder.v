/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCLA_8_0_8_0

  Operand-1 length: 9
  Operand-2 length: 9
  Two-operand addition algorithm: Carry look-ahead adder
----------------------------------------------------------------------------*/

module GPGenerator(Go, Po, A, B);
  output Go;
  output Po;
  input A;
  input B;
  assign Go = A & B;
  assign Po = A ^ B;
endmodule

module CLAUnit_9(C, G, P, Cin);
  output [9:1] C;
  input Cin;
  input [8:0] G;
  input [8:0] P;
  assign C[1] = G[0] | ( P[0] & Cin );
  assign C[2] = G[1] | ( P[1] & G[0] ) | ( P[1] & P[0] & Cin );
  assign C[3] = G[2] | ( P[2] & G[1] ) | ( P[2] & P[1] & G[0] ) | ( P[2] & P[1] & P[0] & Cin );
  assign C[4] = G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] ) | ( P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[5] = G[4] | ( P[4] & G[3] ) | ( P[4] & P[3] & G[2] ) | ( P[4] & P[3] & P[2] & G[1] ) | ( P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[6] = G[5] | ( P[5] & G[4] ) | ( P[5] & P[4] & G[3] ) | ( P[5] & P[4] & P[3] & G[2] ) | ( P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[5] & P[4] & P[3]
 & P[2] & P[1] & P[0] & Cin );
  assign C[7] = G[6] | ( P[6] & G[5] ) | ( P[6] & P[5] & G[4] ) | ( P[6] & P[5] & P[4] & G[3] ) | ( P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[6] & P[5] & P[4]
 & P[3] & P[2] & P[1] & G[0] ) | ( P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[8] = G[7] | ( P[7] & G[6] ) | ( P[7] & P[6] & G[5] ) | ( P[7] & P[6] & P[5] & G[4] ) | ( P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[7] & P[6] & P[5]
 & P[4] & P[3] & P[2] & G[1] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[9] = G[8] | ( P[8] & G[7] ) | ( P[8] & P[7] & G[6] ) | ( P[8] & P[7] & P[6] & G[5] ) | ( P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & G[2] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3]
 & P[2] & P[1] & P[0] & Cin );
endmodule

module UBPriCLA_8_0(S, X, Y, Cin);
  output [9:0] S;
  input Cin;
  input [8:0] X;
  input [8:0] Y;
  wire [9:1] C;
  wire [8:0] G;
  wire [8:0] P;
  assign S[0] = Cin ^ P[0];
  assign S[1] = C[1] ^ P[1];
  assign S[2] = C[2] ^ P[2];
  assign S[3] = C[3] ^ P[3];
  assign S[4] = C[4] ^ P[4];
  assign S[5] = C[5] ^ P[5];
  assign S[6] = C[6] ^ P[6];
  assign S[7] = C[7] ^ P[7];
  assign S[8] = C[8] ^ P[8];
  assign S[9] = C[9];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  GPGenerator U2 (G[2], P[2], X[2], Y[2]);
  GPGenerator U3 (G[3], P[3], X[3], Y[3]);
  GPGenerator U4 (G[4], P[4], X[4], Y[4]);
  GPGenerator U5 (G[5], P[5], X[5], Y[5]);
  GPGenerator U6 (G[6], P[6], X[6], Y[6]);
  GPGenerator U7 (G[7], P[7], X[7], Y[7]);
  GPGenerator U8 (G[8], P[8], X[8], Y[8]);
  CLAUnit_9 U9 (C, G, P, Cin);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCLA_8_0_8_0 (S, X, Y);
  output [9:0] S;
  input [8:0] X;
  input [8:0] Y;
  UBPureCLA_8_0 U0 (S[9:0], X[8:0], Y[8:0]);
endmodule

module UBPureCLA_8_0 (S, X, Y);
  output [9:0] S;
  input [8:0] X;
  input [8:0] Y;
  wire C;
  UBPriCLA_8_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

