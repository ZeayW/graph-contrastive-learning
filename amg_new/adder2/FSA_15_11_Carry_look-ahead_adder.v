/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCLA_14_0_10_0

  Operand-1 length: 15
  Operand-2 length: 11
  Two-operand addition algorithm: Carry look-ahead adder
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

module UBZero_14_11(O);
  output [14:11] O;
  assign O[11] = 0;
  assign O[12] = 0;
  assign O[13] = 0;
  assign O[14] = 0;
endmodule

module GPGenerator(Go, Po, A, B);
  output Go;
  output Po;
  input A;
  input B;
  assign Go = A & B;
  assign Po = A ^ B;
endmodule

module CLAUnit_15(C, G, P, Cin);
  output [15:1] C;
  input Cin;
  input [14:0] G;
  input [14:0] P;
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
  assign C[10] = G[9] | ( P[9] & G[8] ) | ( P[9] & P[8] & G[7] ) | ( P[9] & P[8] & P[7] & G[6] ) | ( P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[9] & P[8] & P[7]
 & P[6] & P[5] & P[4] & G[3] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4]
 & P[3] & P[2] & P[1] & G[0] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[11] = G[10] | ( P[10] & G[9] ) | ( P[10] & P[9] & G[8] ) | ( P[10] & P[9] & P[8] & G[7] ) | ( P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[10] & P[9] & P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] &
 Cin );
  assign C[12] = G[11] | ( P[11] & G[10] ) | ( P[11] & P[10] & G[9] ) | ( P[11] & P[10] & P[9] & G[8] ) | ( P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[11]
 & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[11] & P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3]
 & P[2] & P[1] & G[0] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[13] = G[12] | ( P[12] & G[11] ) | ( P[12] & P[11] & G[10] ) | ( P[12] & P[11] & P[10] & G[9] ) | ( P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[12] & P[11] & P[10]
 & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4]
 & P[3] & P[2] & G[1] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2]
 & P[1] & P[0] & Cin );
  assign C[14] = G[13] | ( P[13] & G[12] ) | ( P[13] & P[12] & G[11] ) | ( P[13] & P[12] & P[11] & G[10] ) | ( P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) |
 ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[13] &
 P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] &
 P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[15] = G[14] | ( P[14] & G[13] ) | ( P[14] & P[13] & G[12] ) | ( P[14] & P[13] & P[12] & G[11] ) | ( P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & G[9] )
 | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[14]
 & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] &
 P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[14] & P[13] & P[12] & P[11] & P[10]
 & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
endmodule

module UBPriCLA_14_0(S, X, Y, Cin);
  output [15:0] S;
  input Cin;
  input [14:0] X;
  input [14:0] Y;
  wire [15:1] C;
  wire [14:0] G;
  wire [14:0] P;
  assign S[0] = Cin ^ P[0];
  assign S[1] = C[1] ^ P[1];
  assign S[2] = C[2] ^ P[2];
  assign S[3] = C[3] ^ P[3];
  assign S[4] = C[4] ^ P[4];
  assign S[5] = C[5] ^ P[5];
  assign S[6] = C[6] ^ P[6];
  assign S[7] = C[7] ^ P[7];
  assign S[8] = C[8] ^ P[8];
  assign S[9] = C[9] ^ P[9];
  assign S[10] = C[10] ^ P[10];
  assign S[11] = C[11] ^ P[11];
  assign S[12] = C[12] ^ P[12];
  assign S[13] = C[13] ^ P[13];
  assign S[14] = C[14] ^ P[14];
  assign S[15] = C[15];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  GPGenerator U2 (G[2], P[2], X[2], Y[2]);
  GPGenerator U3 (G[3], P[3], X[3], Y[3]);
  GPGenerator U4 (G[4], P[4], X[4], Y[4]);
  GPGenerator U5 (G[5], P[5], X[5], Y[5]);
  GPGenerator U6 (G[6], P[6], X[6], Y[6]);
  GPGenerator U7 (G[7], P[7], X[7], Y[7]);
  GPGenerator U8 (G[8], P[8], X[8], Y[8]);
  GPGenerator U9 (G[9], P[9], X[9], Y[9]);
  GPGenerator U10 (G[10], P[10], X[10], Y[10]);
  GPGenerator U11 (G[11], P[11], X[11], Y[11]);
  GPGenerator U12 (G[12], P[12], X[12], Y[12]);
  GPGenerator U13 (G[13], P[13], X[13], Y[13]);
  GPGenerator U14 (G[14], P[14], X[14], Y[14]);
  CLAUnit_15 U15 (C, G, P, Cin);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCLA_14_0_10_0 (S, X, Y);
  output [15:0] S;
  input [14:0] X;
  input [10:0] Y;
  wire [14:0] Z;
  UBExtender_10_0_1000 U0 (Z[14:0], Y[10:0]);
  UBPureCLA_14_0 U1 (S[15:0], X[14:0], Z[14:0]);
endmodule

module UBCON_10_0 (O, I);
  output [10:0] O;
  input [10:0] I;
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
endmodule

module UBExtender_10_0_1000 (O, I);
  output [14:0] O;
  input [10:0] I;
  UBCON_10_0 U0 (O[10:0], I[10:0]);
  UBZero_14_11 U1 (O[14:11]);
endmodule

module UBPureCLA_14_0 (S, X, Y);
  output [15:0] S;
  input [14:0] X;
  input [14:0] Y;
  wire C;
  UBPriCLA_14_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

