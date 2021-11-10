/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBBCL_7_0_7_0

  Operand-1 length: 8
  Operand-2 length: 8
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

module PriMBCLA_7_0(S, X, Y, Cin);
  output [8:0] S;
  input Cin;
  input [7:0] X;
  input [7:0] Y;
  wire [1:0] C1;
  wire [1:0] G1;
  wire [1:0] P1;
  assign C1[0] = Cin;
  assign C1[1] = G1[0] | ( P1[0] & C1[0] );
  assign S[8] = G1[1] | ( P1[1] & C1[1] );
  BCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  BCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBBCL_7_0_7_0 (S, X, Y);
  output [8:0] S;
  input [7:0] X;
  input [7:0] Y;
  UBPureBCL_7_0 U0 (S[8:0], X[7:0], Y[7:0]);
endmodule

module UBPureBCL_7_0 (S, X, Y);
  output [8:0] S;
  input [7:0] X;
  input [7:0] Y;
  wire C;
  PriMBCLA_7_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

