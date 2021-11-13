/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBBCL_8_0_16_0

  Operand-1 length: 9
  Operand-2 length: 17
  Two-operand addition algorithm: Block carry look-ahead adder
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

module UBZero_16_9(O);
  output [16:9] O;
  assign O[9] = 0;
  assign O[10] = 0;
  assign O[11] = 0;
  assign O[12] = 0;
  assign O[13] = 0;
  assign O[14] = 0;
  assign O[15] = 0;
  assign O[16] = 0;
endmodule

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

module BCLAU_1(Go, Po, G, P, Cin);
  output Go;
  output Po;
  input Cin;
  input G;
  input P;
  assign Po = P;
  assign Go = G;
endmodule

module PriMBCLA_16_0(S, X, Y, Cin);
  output [17:0] S;
  input Cin;
  input [16:0] X;
  input [16:0] Y;
  wire [4:0] C1;
  wire [1:0] C2;
  wire [4:0] G1;
  wire [1:0] G2;
  wire [4:0] P1;
  wire [1:0] P2;
  assign C1[0] = C2[0];
  assign C1[1] = G1[0] | ( P1[0] & C1[0] );
  assign C1[2] = G1[1] | ( P1[1] & C1[1] );
  assign C1[3] = G1[2] | ( P1[2] & C1[2] );
  assign C1[4] = C2[1];
  assign C2[0] = Cin;
  assign C2[1] = G2[0] | ( P2[0] & C2[0] );
  assign S[17] = G2[1] | ( P2[1] & C2[1] );
  BCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  BCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
  BCLAlU_4 U2 (G1[2], P1[2], S[11:8], X[11:8], Y[11:8], C1[2]);
  BCLAlU_4 U3 (G1[3], P1[3], S[15:12], X[15:12], Y[15:12], C1[3]);
  BCLAlU_1 U4 (G1[4], P1[4], S[16], X[16], Y[16], C1[4]);
  BCLAU_4 U5 (G2[0], P2[0], G1[3:0], P1[3:0], C2[0]);
  BCLAU_1 U6 (G2[1], P2[1], G1[4], P1[4], C2[1]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBBCL_8_0_16_0 (S, X, Y);
  output [17:0] S;
  input [8:0] X;
  input [16:0] Y;
  wire [16:0] Z;
  UBExtender_8_0_16000 U0 (Z[16:0], X[8:0]);
  UBPureBCL_16_0 U1 (S[17:0], Z[16:0], Y[16:0]);
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

module UBExtender_8_0_16000 (O, I);
  output [16:0] O;
  input [8:0] I;
  UBCON_8_0 U0 (O[8:0], I[8:0]);
  UBZero_16_9 U1 (O[16:9]);
endmodule

module UBPureBCL_16_0 (S, X, Y);
  output [17:0] S;
  input [16:0] X;
  input [16:0] Y;
  wire C;
  PriMBCLA_16_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

