/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: UBCLA_19_0_19_0

  Operand-1 length: 20
  Operand-2 length: 20
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

module CLAUnit_20(C, G, P, Cin);
  output [20:1] C;
  input Cin;
  input [19:0] G;
  input [19:0] P;
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
  assign C[16] = G[15] | ( P[15] & G[14] ) | ( P[15] & P[14] & G[13] ) | ( P[15] & P[14] & P[13] & G[12] ) | ( P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & G[10] )
 | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | (
 P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[15] & P[14] & P[13] & P[12] & P[11]
 & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10]
 & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[15] & P[14] & P[13] &
 P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] &
 P[1] & P[0] & Cin );
  assign C[17] = G[16] | ( P[16] & G[15] ) | ( P[16] & P[15] & G[14] ) | ( P[16] & P[15] & P[14] & G[13] ) | ( P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & G[11] )
 | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] )
 | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[16] & P[15] & P[14] & P[13]
 & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[16] & P[15] & P[14] & P[13] & P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[16] & P[15]
 & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4]
 & P[3] & P[2] & P[1] & G[0] ) | ( P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[18] = G[17] | ( P[17] & G[16] ) | ( P[17] & P[16] & G[15] ) | ( P[17] & P[16] & P[15] & G[14] ) | ( P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & G[12] )
 | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9]
 ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[17] & P[16] & P[15] &
 P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[17] & P[16] & P[15] & P[14]
 & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[17]
 & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7]
 & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[17] & P[16] &
 P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[19] = G[18] | ( P[18] & G[17] ) | ( P[18] & P[17] & G[16] ) | ( P[18] & P[17] & P[16] & G[15] ) | ( P[18] & P[17] & P[16] & P[15] & G[14] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & G[13] )
 | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10]
 ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[18] & P[17] & P[16]
 & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[18] & P[17] & P[16]
 & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4]
 ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10]
 & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | (
 P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] &
 P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[20] = G[19] | ( P[19] & G[18] ) | ( P[19] & P[18] & G[17] ) | ( P[19] & P[18] & P[17] & G[16] ) | ( P[19] & P[18] & P[17] & P[16] & G[15] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & G[14] )
 | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11]
 ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[19] & P[18] & P[17]
 & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[19] & P[18] & P[17]
 & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5]
 ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11]
 & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) |
 ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13]
 & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] &
 P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
endmodule

module UBPriCLA_19_0(S, X, Y, Cin);
  output [20:0] S;
  input Cin;
  input [19:0] X;
  input [19:0] Y;
  wire [20:1] C;
  wire [19:0] G;
  wire [19:0] P;
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
  assign S[15] = C[15] ^ P[15];
  assign S[16] = C[16] ^ P[16];
  assign S[17] = C[17] ^ P[17];
  assign S[18] = C[18] ^ P[18];
  assign S[19] = C[19] ^ P[19];
  assign S[20] = C[20];
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
  GPGenerator U15 (G[15], P[15], X[15], Y[15]);
  GPGenerator U16 (G[16], P[16], X[16], Y[16]);
  GPGenerator U17 (G[17], P[17], X[17], Y[17]);
  GPGenerator U18 (G[18], P[18], X[18], Y[18]);
  GPGenerator U19 (G[19], P[19], X[19], Y[19]);
  CLAUnit_20 U20 (C, G, P, Cin);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBCLA_19_0_19_0 (S, X, Y);
  output [20:0] S;
  input [19:0] X;
  input [19:0] Y;
  UBPureCLA_19_0 U0 (S[20:0], X[19:0], Y[19:0]);
endmodule

module UBPureCLA_19_0 (S, X, Y);
  output [20:0] S;
  input [19:0] X;
  input [19:0] Y;
  wire C;
  UBPriCLA_19_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule
