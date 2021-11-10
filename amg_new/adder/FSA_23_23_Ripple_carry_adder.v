/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBRCA_22_0_22_0

  Operand-1 length: 23
  Operand-2 length: 23
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

module UBFA_9(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_10(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_11(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_12(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_13(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_14(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_15(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_16(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_17(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_18(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_19(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_20(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_21(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_22(C, S, X, Y, Z);
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

module UBPriRCA_22_0 (S, X, Y, Cin);
  output [23:0] S;
  input Cin;
  input [22:0] X;
  input [22:0] Y;
  wire C1;
  wire C10;
  wire C11;
  wire C12;
  wire C13;
  wire C14;
  wire C15;
  wire C16;
  wire C17;
  wire C18;
  wire C19;
  wire C2;
  wire C20;
  wire C21;
  wire C22;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  wire C9;
  UBFA_0 U0 (C1, S[0], X[0], Y[0], Cin);
  UBFA_1 U1 (C2, S[1], X[1], Y[1], C1);
  UBFA_2 U2 (C3, S[2], X[2], Y[2], C2);
  UBFA_3 U3 (C4, S[3], X[3], Y[3], C3);
  UBFA_4 U4 (C5, S[4], X[4], Y[4], C4);
  UBFA_5 U5 (C6, S[5], X[5], Y[5], C5);
  UBFA_6 U6 (C7, S[6], X[6], Y[6], C6);
  UBFA_7 U7 (C8, S[7], X[7], Y[7], C7);
  UBFA_8 U8 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U9 (C10, S[9], X[9], Y[9], C9);
  UBFA_10 U10 (C11, S[10], X[10], Y[10], C10);
  UBFA_11 U11 (C12, S[11], X[11], Y[11], C11);
  UBFA_12 U12 (C13, S[12], X[12], Y[12], C12);
  UBFA_13 U13 (C14, S[13], X[13], Y[13], C13);
  UBFA_14 U14 (C15, S[14], X[14], Y[14], C14);
  UBFA_15 U15 (C16, S[15], X[15], Y[15], C15);
  UBFA_16 U16 (C17, S[16], X[16], Y[16], C16);
  UBFA_17 U17 (C18, S[17], X[17], Y[17], C17);
  UBFA_18 U18 (C19, S[18], X[18], Y[18], C18);
  UBFA_19 U19 (C20, S[19], X[19], Y[19], C19);
  UBFA_20 U20 (C21, S[20], X[20], Y[20], C20);
  UBFA_21 U21 (C22, S[21], X[21], Y[21], C21);
  UBFA_22 U22 (S[23], S[22], X[22], Y[22], C22);
endmodule

module UBPureRCA_22_0 (S, X, Y);
  output [23:0] S;
  input [22:0] X;
  input [22:0] Y;
  wire C;
  UBPriRCA_22_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBRCA_22_0_22_0 (S, X, Y);
  output [23:0] S;
  input [22:0] X;
  input [22:0] Y;
  UBPureRCA_22_0 U0 (S[23:0], X[22:0], Y[22:0]);
endmodule

