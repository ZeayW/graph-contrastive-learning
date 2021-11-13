/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBRCA_8_0_8_0

  Operand-1 length: 9
  Operand-2 length: 9
  Two-operand addition algorithm: Ripple carry adder
----------------------------------------------------------------------------*/

module UBFA_0(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_1(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_2(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_3(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_4(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_5(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_6(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_7(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_8(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBPriRCA_8_0 (S, X, Y, Cin);
  output [9:0] S;
  input Cin;
  input [8:0] X;
  input [8:0] Y;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  UBFA_0 U0 (C1, S[0], X[0], Y[0], Cin);
  UBFA_1 U1 (C2, S[1], X[1], Y[1], C1);
  UBFA_2 U2 (C3, S[2], X[2], Y[2], C2);
  UBFA_3 U3 (C4, S[3], X[3], Y[3], C3);
  UBFA_4 U4 (C5, S[4], X[4], Y[4], C4);
  UBFA_5 U5 (C6, S[5], X[5], Y[5], C5);
  UBFA_6 U6 (C7, S[6], X[6], Y[6], C6);
  UBFA_7 U7 (C8, S[7], X[7], Y[7], C7);
  UBFA_8 U8 (S[9], S[8], X[8], Y[8], C8);
endmodule

module UBPureRCA_8_0 (S, X, Y);
  output [9:0] S;
  input [8:0] X;
  input [8:0] Y;
  wire C;
  UBPriRCA_8_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBRCA_8_0_8_0 (S, X, Y);
  output [9:0] S;
  input [8:0] X;
  input [8:0] Y;
  UBPureRCA_8_0 U0 (S[9:0], X[8:0], Y[8:0]);
endmodule

