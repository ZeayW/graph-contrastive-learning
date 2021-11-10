/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBBCL_20_0_20_0

  Operand-1 length: 21
  Operand-2 length: 21
  Two-operand addition algorithm: Block carry look-ahead adder
----------------------------------------------------------------------------*/

module GPGenerator(Go, Po, A, B);
  output Go;
  output Po;
  input A;
  input B;
  assign Go = A & B;
  assign Po = A ^ B;
endmodule

module BCLAU_4(Go, Po, G, P, Cin);
  output Go;
  output Po;
  input Cin;
  input [3:0] G;
  input [3:0] P;
  assign Po = P[0] & P[1] & P[2] & P[3];
  assign Go = G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] );
endmodule

module BCLAlU_4(Go, Po, S, X, Y, Cin);
  output Go;
  output Po;
  output [3:0] S;
  input Cin;
  input [3:0] X;
  input [3:0] Y;
  wire [3:1] C;
  wire [3:0] G;
  wire [3:0] P;
  assign C[1] = G[0] | ( P[0] & Cin );
  assign C[2] = G[1] | ( P[1] & C[1] );
  assign C[3] = G[2] | ( P[2] & C[2] );
  assign S[0] = P[0] ^ Cin;
  assign S[1] = P[1] ^ C[1];
  assign S[2] = P[2] ^ C[2];
  assign S[3] = P[3] ^ C[3];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  GPGenerator U2 (G[2], P[2], X[2], Y[2]);
  GPGenerator U3 (G[3], P[3], X[3], Y[3]);
  BCLAU_4 U4 (Go, Po, G, P, Cin);
endmodule

module BCLAlU_1(Go, Po, S, X, Y, Cin);
  output Go;
  output Po;
  output S;
  input Cin;
  input X;
  input Y;
  wire W;
  assign S = W ^ Cin;
  assign Po = W;
  GPGenerator U0 (Go, W, X, Y);
endmodule

module BCLAU_2(Go, Po, G, P, Cin);
  output Go;
  output Po;
  input Cin;
  input [1:0] G;
  input [1:0] P;
  assign Po = P[0] & P[1];
  assign Go = G[1] | ( P[1] & G[0] );
endmodule

module PriMBCLA_20_0(S, X, Y, Cin);
  output [21:0] S;
  input Cin;
  input [20:0] X;
  input [20:0] Y;
  wire [5:0] C1;
  wire [1:0] C2;
  wire [5:0] G1;
  wire [1:0] G2;
  wire [5:0] P1;
  wire [1:0] P2;
  assign C1[0] = C2[0];
  assign C1[1] = G1[0] | ( P1[0] & C1[0] );
  assign C1[2] = G1[1] | ( P1[1] & C1[1] );
  assign C1[3] = G1[2] | ( P1[2] & C1[2] );
  assign C1[4] = C2[1];
  assign C1[5] = G1[4] | ( P1[4] & C1[4] );
  assign C2[0] = Cin;
  assign C2[1] = G2[0] | ( P2[0] & C2[0] );
  assign S[21] = G2[1] | ( P2[1] & C2[1] );
  BCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  BCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
  BCLAlU_4 U2 (G1[2], P1[2], S[11:8], X[11:8], Y[11:8], C1[2]);
  BCLAlU_4 U3 (G1[3], P1[3], S[15:12], X[15:12], Y[15:12], C1[3]);
  BCLAlU_4 U4 (G1[4], P1[4], S[19:16], X[19:16], Y[19:16], C1[4]);
  BCLAlU_1 U5 (G1[5], P1[5], S[20], X[20], Y[20], C1[5]);
  BCLAU_4 U6 (G2[0], P2[0], G1[3:0], P1[3:0], C2[0]);
  BCLAU_2 U7 (G2[1], P2[1], G1[5:4], P1[5:4], C2[1]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBBCL_20_0_20_0 (S, X, Y);
  output [21:0] S;
  input [20:0] X;
  input [20:0] Y;
  UBPureBCL_20_0 U0 (S[21:0], X[20:0], Y[20:0]);
endmodule

module UBPureBCL_20_0 (S, X, Y);
  output [21:0] S;
  input [20:0] X;
  input [20:0] Y;
  wire C;
  PriMBCLA_20_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

