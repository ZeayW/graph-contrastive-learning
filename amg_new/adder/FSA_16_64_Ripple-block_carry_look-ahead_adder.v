/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBRCL_15_0_63_0

  Operand-1 length: 16
  Operand-2 length: 64
  Two-operand addition algorithm: Ripple-block carry look-ahead adder
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

module RCLAU_4(Go, Po, C, G, P, Cin);
  output [3:1] C;
  output Go;
  output Po;
  input Cin;
  input [3:0] G;
  input [3:0] P;
  assign Po = P[0] & P[1] & P[2] & P[3];
  assign Go = G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] );
  assign C[1] = G[0] | ( P[0] & Cin );
  assign C[2] = G[1] | ( P[1] & G[0] ) | ( P[1] & P[0] & Cin );
  assign C[3] = G[2] | ( P[2] & G[1] ) | ( P[2] & P[1] & G[0] ) | ( P[2] & P[1] & P[0] & Cin );
endmodule

module RCLAlU_4(Go, Po, S, X, Y, Cin);
  output Go;
  output Po;
  output [3:0] S;
  input Cin;
  input [3:0] X;
  input [3:0] Y;
  wire [3:1] C;
  wire [3:0] G;
  wire [3:0] P;
  assign S[0] = P[0] ^ Cin;
  assign S[1] = P[1] ^ C[1];
  assign S[2] = P[2] ^ C[2];
  assign S[3] = P[3] ^ C[3];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  GPGenerator U2 (G[2], P[2], X[2], Y[2]);
  GPGenerator U3 (G[3], P[3], X[3], Y[3]);
  RCLAU_4 U4 (Go, Po, C, G, P, Cin);
endmodule

module PriMRCLA_63_0(S, X, Y, Cin);
  output [64:0] S;
  input Cin;
  input [63:0] X;
  input [63:0] Y;
  wire [15:0] C1;
  wire [3:0] C2;
  wire [15:0] G1;
  wire [3:0] G2;
  wire [15:0] P1;
  wire [3:0] P2;
  assign C1[0] = C2[0];
  assign C1[4] = C2[1];
  assign C1[8] = C2[2];
  assign C1[12] = C2[3];
  assign C2[0] = Cin;
  assign C2[1] = G2[0] | ( P2[0] & C2[0] );
  assign C2[2] = G2[1] | ( P2[1] & C2[1] );
  assign C2[3] = G2[2] | ( P2[2] & C2[2] );
  assign S[64] = G2[3] | ( P2[3] & C2[3] );
  RCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  RCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
  RCLAlU_4 U2 (G1[2], P1[2], S[11:8], X[11:8], Y[11:8], C1[2]);
  RCLAlU_4 U3 (G1[3], P1[3], S[15:12], X[15:12], Y[15:12], C1[3]);
  RCLAlU_4 U4 (G1[4], P1[4], S[19:16], X[19:16], Y[19:16], C1[4]);
  RCLAlU_4 U5 (G1[5], P1[5], S[23:20], X[23:20], Y[23:20], C1[5]);
  RCLAlU_4 U6 (G1[6], P1[6], S[27:24], X[27:24], Y[27:24], C1[6]);
  RCLAlU_4 U7 (G1[7], P1[7], S[31:28], X[31:28], Y[31:28], C1[7]);
  RCLAlU_4 U8 (G1[8], P1[8], S[35:32], X[35:32], Y[35:32], C1[8]);
  RCLAlU_4 U9 (G1[9], P1[9], S[39:36], X[39:36], Y[39:36], C1[9]);
  RCLAlU_4 U10 (G1[10], P1[10], S[43:40], X[43:40], Y[43:40], C1[10]);
  RCLAlU_4 U11 (G1[11], P1[11], S[47:44], X[47:44], Y[47:44], C1[11]);
  RCLAlU_4 U12 (G1[12], P1[12], S[51:48], X[51:48], Y[51:48], C1[12]);
  RCLAlU_4 U13 (G1[13], P1[13], S[55:52], X[55:52], Y[55:52], C1[13]);
  RCLAlU_4 U14 (G1[14], P1[14], S[59:56], X[59:56], Y[59:56], C1[14]);
  RCLAlU_4 U15 (G1[15], P1[15], S[63:60], X[63:60], Y[63:60], C1[15]);
  RCLAU_4 U16 (G2[0], P2[0], C1[3:1], G1[3:0], P1[3:0], C2[0]);
  RCLAU_4 U17 (G2[1], P2[1], C1[7:5], G1[7:4], P1[7:4], C2[1]);
  RCLAU_4 U18 (G2[2], P2[2], C1[11:9], G1[11:8], P1[11:8], C2[2]);
  RCLAU_4 U19 (G2[3], P2[3], C1[15:13], G1[15:12], P1[15:12], C2[3]);
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

module UBPureRCL_63_0 (S, X, Y);
  output [64:0] S;
  input [63:0] X;
  input [63:0] Y;
  wire C;
  PriMRCLA_63_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBRCL_15_0_63_0 (S, X, Y);
  output [64:0] S;
  input [15:0] X;
  input [63:0] Y;
  wire [63:0] Z;
  UBExtender_15_0_6000 U0 (Z[63:0], X[15:0]);
  UBPureRCL_63_0 U1 (S[64:0], Z[63:0], Y[63:0]);
endmodule

