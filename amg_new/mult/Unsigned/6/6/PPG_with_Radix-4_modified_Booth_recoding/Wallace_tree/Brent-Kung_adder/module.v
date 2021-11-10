/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_5_0_5_000

  Number system: Unsigned binary
  Multiplicand length: 6
  Multiplier length: 6
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Wallace tree
  Final stage addition: Brent-Kung adder
----------------------------------------------------------------------------*/

module NUBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
endmodule

module R4BEEL_0_2(O_ds, O_d1, O_d0, I2, I1);
  output O_ds, O_d1, O_d0;
  input I1;
  input I2;
  assign O_d0 = I1;
  assign O_d1 = I2 & ( ~ I1 );
  assign O_ds = I2;
endmodule

module R4BEE_1(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEE_2(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEEH_3_2(O_ds, O_d1, O_d0, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = 0;
  assign O_ds = I1;
endmodule

module SD41DDECON_0(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_0(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_6_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_0(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_1(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_2(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_3(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_4(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_5(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_6(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_7(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_0(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module SD41DDECON_1(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_1(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_6_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_7(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_8(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_9(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_2(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module SD41DDECON_2(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_2(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_6_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_9(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_10(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_11(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_4(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module SD41DDECON_3(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_3(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_6_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_11(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_12(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_13(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_6(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module UBOne_8(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

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

module UBOne_10(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_12(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBHA_0(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_1(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_9(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_10(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_2(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_3(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_12(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_4(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_5(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_8(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_11(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_13(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_14_14(O);
  output [14:14] O;
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

module UBPriBKA_14_3(S, X, Y, Cin);
  output [15:3] S;
  input Cin;
  input [14:3] X;
  input [14:3] Y;
  wire [14:3] G0;
  wire [14:3] G1;
  wire [14:3] G2;
  wire [14:3] G3;
  wire [14:3] G4;
  wire [14:3] G5;
  wire [14:3] G6;
  wire [14:3] P0;
  wire [14:3] P1;
  wire [14:3] P2;
  wire [14:3] P3;
  wire [14:3] P4;
  wire [14:3] P5;
  wire [14:3] P6;
  assign P1[3] = P0[3];
  assign G1[3] = G0[3];
  assign P1[5] = P0[5];
  assign G1[5] = G0[5];
  assign P1[7] = P0[7];
  assign G1[7] = G0[7];
  assign P1[9] = P0[9];
  assign G1[9] = G0[9];
  assign P1[11] = P0[11];
  assign G1[11] = G0[11];
  assign P1[13] = P0[13];
  assign G1[13] = G0[13];
  assign P2[3] = P1[3];
  assign G2[3] = G1[3];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P2[7] = P1[7];
  assign G2[7] = G1[7];
  assign P2[8] = P1[8];
  assign G2[8] = G1[8];
  assign P2[9] = P1[9];
  assign G2[9] = G1[9];
  assign P2[11] = P1[11];
  assign G2[11] = G1[11];
  assign P2[12] = P1[12];
  assign G2[12] = G1[12];
  assign P2[13] = P1[13];
  assign G2[13] = G1[13];
  assign P3[3] = P2[3];
  assign G3[3] = G2[3];
  assign P3[4] = P2[4];
  assign G3[4] = G2[4];
  assign P3[5] = P2[5];
  assign G3[5] = G2[5];
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P3[7] = P2[7];
  assign G3[7] = G2[7];
  assign P3[8] = P2[8];
  assign G3[8] = G2[8];
  assign P3[9] = P2[9];
  assign G3[9] = G2[9];
  assign P3[11] = P2[11];
  assign G3[11] = G2[11];
  assign P3[12] = P2[12];
  assign G3[12] = G2[12];
  assign P3[13] = P2[13];
  assign G3[13] = G2[13];
  assign P3[14] = P2[14];
  assign G3[14] = G2[14];
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
  assign P4[9] = P3[9];
  assign G4[9] = G3[9];
  assign P4[10] = P3[10];
  assign G4[10] = G3[10];
  assign P4[11] = P3[11];
  assign G4[11] = G3[11];
  assign P4[12] = P3[12];
  assign G4[12] = G3[12];
  assign P4[13] = P3[13];
  assign G4[13] = G3[13];
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
  assign P5[9] = P4[9];
  assign G5[9] = G4[9];
  assign P5[10] = P4[10];
  assign G5[10] = G4[10];
  assign P5[11] = P4[11];
  assign G5[11] = G4[11];
  assign P5[13] = P4[13];
  assign G5[13] = G4[13];
  assign P5[14] = P4[14];
  assign G5[14] = G4[14];
  assign P6[3] = P5[3];
  assign G6[3] = G5[3];
  assign P6[4] = P5[4];
  assign G6[4] = G5[4];
  assign P6[6] = P5[6];
  assign G6[6] = G5[6];
  assign P6[8] = P5[8];
  assign G6[8] = G5[8];
  assign P6[10] = P5[10];
  assign G6[10] = G5[10];
  assign P6[12] = P5[12];
  assign G6[12] = G5[12];
  assign P6[14] = P5[14];
  assign G6[14] = G5[14];
  assign S[3] = Cin ^ P0[3];
  assign S[4] = ( G6[3] | ( P6[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G6[4] | ( P6[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G6[5] | ( P6[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G6[6] | ( P6[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G6[7] | ( P6[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G6[8] | ( P6[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G6[9] | ( P6[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G6[10] | ( P6[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G6[11] | ( P6[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G6[12] | ( P6[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G6[13] | ( P6[13] & Cin ) ) ^ P0[14];
  assign S[15] = G6[14] | ( P6[14] & Cin );
  GPGenerator U0 (G0[3], P0[3], X[3], Y[3]);
  GPGenerator U1 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U2 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U3 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U4 (G0[7], P0[7], X[7], Y[7]);
  GPGenerator U5 (G0[8], P0[8], X[8], Y[8]);
  GPGenerator U6 (G0[9], P0[9], X[9], Y[9]);
  GPGenerator U7 (G0[10], P0[10], X[10], Y[10]);
  GPGenerator U8 (G0[11], P0[11], X[11], Y[11]);
  GPGenerator U9 (G0[12], P0[12], X[12], Y[12]);
  GPGenerator U10 (G0[13], P0[13], X[13], Y[13]);
  GPGenerator U11 (G0[14], P0[14], X[14], Y[14]);
  CarryOperator U12 (G1[4], P1[4], G0[4], P0[4], G0[3], P0[3]);
  CarryOperator U13 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U14 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U15 (G1[10], P1[10], G0[10], P0[10], G0[9], P0[9]);
  CarryOperator U16 (G1[12], P1[12], G0[12], P0[12], G0[11], P0[11]);
  CarryOperator U17 (G1[14], P1[14], G0[14], P0[14], G0[13], P0[13]);
  CarryOperator U18 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U19 (G2[10], P2[10], G1[10], P1[10], G1[8], P1[8]);
  CarryOperator U20 (G2[14], P2[14], G1[14], P1[14], G1[12], P1[12]);
  CarryOperator U21 (G3[10], P3[10], G2[10], P2[10], G2[6], P2[6]);
  CarryOperator U22 (G4[14], P4[14], G3[14], P3[14], G3[10], P3[10]);
  CarryOperator U23 (G5[8], P5[8], G4[8], P4[8], G4[6], P4[6]);
  CarryOperator U24 (G5[12], P5[12], G4[12], P4[12], G4[10], P4[10]);
  CarryOperator U25 (G6[5], P6[5], G5[5], P5[5], G5[4], P5[4]);
  CarryOperator U26 (G6[7], P6[7], G5[7], P5[7], G5[6], P5[6]);
  CarryOperator U27 (G6[9], P6[9], G5[9], P5[9], G5[8], P5[8]);
  CarryOperator U28 (G6[11], P6[11], G5[11], P5[11], G5[10], P5[10]);
  CarryOperator U29 (G6[13], P6[13], G5[13], P5[13], G5[12], P5[12]);
endmodule

module UBTC1CON16_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON16_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_15_14(O, I);
  output [16:14] O;
  input [15:14] I;
  assign O[14] = ~ I[14];
  assign O[15] = ~ I[15] ^ ( I[14] );
  assign O[16] = ~ ( I[15] | I[14] );
endmodule

module Multiplier_5_0_5_000(P, IN1, IN2);
  output [11:0] P;
  input [5:0] IN1;
  input [5:0] IN2;
  wire [16:0] W;
  assign P[0] = W[0];
  assign P[1] = W[1];
  assign P[2] = W[2];
  assign P[3] = W[3];
  assign P[4] = W[4];
  assign P[5] = W[5];
  assign P[6] = W[6];
  assign P[7] = W[7];
  assign P[8] = W[8];
  assign P[9] = W[9];
  assign P[10] = W[10];
  assign P[11] = W[11];
  MultUB_R4B_WAL_BK000 U0 (W, IN1, IN2);
endmodule

module CSA_12_0_11_1_13_000 (C, S, X, Y, Z);
  output [13:2] C;
  output [13:0] S;
  input [12:0] X;
  input [11:1] Y;
  input [13:4] Z;
  UB1DCON_0 U0 (S[0], X[0]);
  PureCSHA_3_1 U1 (C[4:2], S[3:1], Y[3:1], X[3:1]);
  PureCSA_11_4 U2 (C[12:5], S[11:4], Z[11:4], Y[11:4], X[11:4]);
  UBHA_12 U3 (C[13], S[12], Z[12], X[12]);
  UB1DCON_13 U4 (S[13], Z[13]);
endmodule

module CSA_13_0_13_2_7_6 (C, S, X, Y, Z);
  output [14:3] C;
  output [13:0] S;
  input [13:0] X;
  input [13:2] Y;
  input [7:6] Z;
  UBCON_1_0 U0 (S[1:0], X[1:0]);
  PureCSHA_5_2 U1 (C[6:3], S[5:2], Y[5:2], X[5:2]);
  PureCSA_7_6 U2 (C[8:7], S[7:6], Z[7:6], Y[7:6], X[7:6]);
  PureCSHA_13_8 U3 (C[14:9], S[13:8], X[13:8], Y[13:8]);
endmodule

module CSA_8_0_10_0_12_2 (C, S, X, Y, Z);
  output [11:1] C;
  output [12:0] S;
  input [8:0] X;
  input [10:0] Y;
  input [12:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_8_2 U1 (C[9:3], S[8:2], Z[8:2], Y[8:2], X[8:2]);
  PureCSHA_10_9 U2 (C[11:10], S[10:9], Z[10:9], Y[10:9]);
  UBCON_12_11 U3 (S[12:11], Z[12:11]);
endmodule

module MultUB_R4B_WAL_BK000 (P, IN1, IN2);
  output [16:0] P;
  input [5:0] IN1;
  input [5:0] IN2;
  wire [8:0] PP0;
  wire [10:0] PP1;
  wire [12:2] PP2;
  wire [13:4] PP3;
  wire [7:6] PP4;
  wire [14:3] S1;
  wire [13:0] S2;
  wire [15:0] UP;
  UBR4BPPG_5_0_5_0 U0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  WLCTR_8_0_10_0_12000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  UBBKA_14_3_13_0 U2 (UP, S1, S2);
  UBTCCONV14_15_0 U3 (P, UP);
endmodule

module PureCSA_11_4 (C, S, X, Y, Z);
  output [12:5] C;
  output [11:4] S;
  input [11:4] X;
  input [11:4] Y;
  input [11:4] Z;
  UBFA_4 U0 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U1 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U2 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U3 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U4 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U5 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U6 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U7 (C[12], S[11], X[11], Y[11], Z[11]);
endmodule

module PureCSA_7_6 (C, S, X, Y, Z);
  output [8:7] C;
  output [7:6] S;
  input [7:6] X;
  input [7:6] Y;
  input [7:6] Z;
  UBFA_6 U0 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U1 (C[8], S[7], X[7], Y[7], Z[7]);
endmodule

module PureCSA_8_2 (C, S, X, Y, Z);
  output [9:3] C;
  output [8:2] S;
  input [8:2] X;
  input [8:2] Y;
  input [8:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U5 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U6 (C[9], S[8], X[8], Y[8], Z[8]);
endmodule

module PureCSHA_10_9 (C, S, X, Y);
  output [11:10] C;
  output [10:9] S;
  input [10:9] X;
  input [10:9] Y;
  UBHA_9 U0 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U1 (C[11], S[10], X[10], Y[10]);
endmodule

module PureCSHA_13_8 (C, S, X, Y);
  output [14:9] C;
  output [13:8] S;
  input [13:8] X;
  input [13:8] Y;
  UBHA_8 U0 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U1 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U2 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U3 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U4 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U5 (C[14], S[13], X[13], Y[13]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_3_1 (C, S, X, Y);
  output [4:2] C;
  output [3:1] S;
  input [3:1] X;
  input [3:1] Y;
  UBHA_1 U0 (C[2], S[1], X[1], Y[1]);
  UBHA_2 U1 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U2 (C[4], S[3], X[3], Y[3]);
endmodule

module PureCSHA_5_2 (C, S, X, Y);
  output [6:3] C;
  output [5:2] S;
  input [5:2] X;
  input [5:2] Y;
  UBHA_2 U0 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U2 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U3 (C[6], S[5], X[5], Y[5]);
endmodule

module TCU4VPPG_6_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [6:0] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [6:1] P;
  U4DPPGL_0_0 U0 (P[1], O_R[0], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O_R[1], IN1_R[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O_R[2], IN1_R[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O_R[3], IN1_R[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O_R[4], IN1_R[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O_R[5], IN1_R[5], U__d1, U__d0, P[5]);
  U4DPPGH_6_0 U6 (O_T, O_R[6], IN1_T, U__d1, U__d0, P[6]);
endmodule

module TCU4VPPG_6_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [8:2] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [8:3] P;
  U4DPPGL_0_1 U0 (P[3], O_R[2], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O_R[3], IN1_R[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O_R[4], IN1_R[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O_R[5], IN1_R[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O_R[6], IN1_R[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O_R[7], IN1_R[5], U__d1, U__d0, P[7]);
  U4DPPGH_6_1 U6 (O_T, O_R[8], IN1_T, U__d1, U__d0, P[8]);
endmodule

module TCU4VPPG_6_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [10:4] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [10:5] P;
  U4DPPGL_0_2 U0 (P[5], O_R[4], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O_R[5], IN1_R[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O_R[6], IN1_R[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O_R[7], IN1_R[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O_R[8], IN1_R[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O_R[9], IN1_R[5], U__d1, U__d0, P[9]);
  U4DPPGH_6_2 U6 (O_T, O_R[10], IN1_T, U__d1, U__d0, P[10]);
endmodule

module TCU4VPPG_6_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [12:6] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [12:7] P;
  U4DPPGL_0_3 U0 (P[7], O_R[6], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O_R[7], IN1_R[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O_R[8], IN1_R[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O_R[9], IN1_R[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O_R[10], IN1_R[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O_R[11], IN1_R[5], U__d1, U__d0, P[11]);
  U4DPPGH_6_3 U6 (O_T, O_R[12], IN1_T, U__d1, U__d0, P[12]);
endmodule

module TUBWCON_11_4 (O, I_T, I_R, S);
  output [11:4] O;
  input [10:4] I_R;
  input I_T;
  input S;
  BWCPP_4 U0 (O[4], I_R[4], S);
  BWCPP_5 U1 (O[5], I_R[5], S);
  BWCPP_6 U2 (O[6], I_R[6], S);
  BWCPP_7 U3 (O[7], I_R[7], S);
  BWCPP_8 U4 (O[8], I_R[8], S);
  BWCPP_9 U5 (O[9], I_R[9], S);
  BWCPP_10 U6 (O[10], I_R[10], S);
  BWCNP_11 U7 (O[11], I_T, S);
endmodule

module TUBWCON_13_6 (O, I_T, I_R, S);
  output [13:6] O;
  input [12:6] I_R;
  input I_T;
  input S;
  BWCPP_6 U0 (O[6], I_R[6], S);
  BWCPP_7 U1 (O[7], I_R[7], S);
  BWCPP_8 U2 (O[8], I_R[8], S);
  BWCPP_9 U3 (O[9], I_R[9], S);
  BWCPP_10 U4 (O[10], I_R[10], S);
  BWCPP_11 U5 (O[11], I_R[11], S);
  BWCPP_12 U6 (O[12], I_R[12], S);
  BWCNP_13 U7 (O[13], I_T, S);
endmodule

module TUBWCON_7_0 (O, I_T, I_R, S);
  output [7:0] O;
  input [6:0] I_R;
  input I_T;
  input S;
  BWCPP_0 U0 (O[0], I_R[0], S);
  BWCPP_1 U1 (O[1], I_R[1], S);
  BWCPP_2 U2 (O[2], I_R[2], S);
  BWCPP_3 U3 (O[3], I_R[3], S);
  BWCPP_4 U4 (O[4], I_R[4], S);
  BWCPP_5 U5 (O[5], I_R[5], S);
  BWCPP_6 U6 (O[6], I_R[6], S);
  BWCNP_7 U7 (O[7], I_T, S);
endmodule

module TUBWCON_9_2 (O, I_T, I_R, S);
  output [9:2] O;
  input [8:2] I_R;
  input I_T;
  input S;
  BWCPP_2 U0 (O[2], I_R[2], S);
  BWCPP_3 U1 (O[3], I_R[3], S);
  BWCPP_4 U2 (O[4], I_R[4], S);
  BWCPP_5 U3 (O[5], I_R[5], S);
  BWCPP_6 U4 (O[6], I_R[6], S);
  BWCPP_7 U5 (O[7], I_R[7], S);
  BWCPP_8 U6 (O[8], I_R[8], S);
  BWCNP_9 U7 (O[9], I_T, S);
endmodule

module UBBKA_14_3_13_0 (S, X, Y);
  output [15:0] S;
  input [14:3] X;
  input [13:0] Y;
  wire [14:3] Z;
  UBExtender_13_3_1000 U0 (Z[14:3], Y[13:3]);
  UBPureBKA_14_3 U1 (S[15:3], X[14:3], Z[14:3]);
  UBCON_2_0 U2 (S[2:0], Y[2:0]);
endmodule

module UBCMBIN_10_10_9_2000 (O, IN0, IN1, IN2);
  output [10:0] O;
  input IN0;
  input [9:2] IN1;
  input IN2;
  UB1DCON_10 U0 (O[10], IN0);
  UBCON_9_2 U1 (O[9:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_12_12_11_000 (O, IN0, IN1, IN2);
  output [12:2] O;
  input IN0;
  input [11:4] IN1;
  input IN2;
  UB1DCON_12 U0 (O[12], IN0);
  UBCON_11_4 U1 (O[11:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_13_6_4_4 (O, IN0, IN1);
  output [13:4] O;
  input [13:6] IN0;
  input IN1;
  UBCON_13_6 U0 (O[13:6], IN0);
  UBZero_5_5 U1 (O[5]);
  UB1DCON_4 U2 (O[4], IN1);
endmodule

module UBCMBIN_7_7_6_6 (O, IN0, IN1);
  output [7:6] O;
  input IN0;
  input IN1;
  UB1DCON_7 U0 (O[7], IN0);
  UB1DCON_6 U1 (O[6], IN1);
endmodule

module UBCMBIN_8_8_7_0 (O, IN0, IN1);
  output [8:0] O;
  input IN0;
  input [7:0] IN1;
  UB1DCON_8 U0 (O[8], IN0);
  UBCON_7_0 U1 (O[7:0], IN1);
endmodule

module UBCON_11_4 (O, I);
  output [11:4] O;
  input [11:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
  UB1DCON_6 U2 (O[6], I[6]);
  UB1DCON_7 U3 (O[7], I[7]);
  UB1DCON_8 U4 (O[8], I[8]);
  UB1DCON_9 U5 (O[9], I[9]);
  UB1DCON_10 U6 (O[10], I[10]);
  UB1DCON_11 U7 (O[11], I[11]);
endmodule

module UBCON_12_11 (O, I);
  output [12:11] O;
  input [12:11] I;
  UB1DCON_11 U0 (O[11], I[11]);
  UB1DCON_12 U1 (O[12], I[12]);
endmodule

module UBCON_13_3 (O, I);
  output [13:3] O;
  input [13:3] I;
  UB1DCON_3 U0 (O[3], I[3]);
  UB1DCON_4 U1 (O[4], I[4]);
  UB1DCON_5 U2 (O[5], I[5]);
  UB1DCON_6 U3 (O[6], I[6]);
  UB1DCON_7 U4 (O[7], I[7]);
  UB1DCON_8 U5 (O[8], I[8]);
  UB1DCON_9 U6 (O[9], I[9]);
  UB1DCON_10 U7 (O[10], I[10]);
  UB1DCON_11 U8 (O[11], I[11]);
  UB1DCON_12 U9 (O[12], I[12]);
  UB1DCON_13 U10 (O[13], I[13]);
endmodule

module UBCON_13_6 (O, I);
  output [13:6] O;
  input [13:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
  UB1DCON_10 U4 (O[10], I[10]);
  UB1DCON_11 U5 (O[11], I[11]);
  UB1DCON_12 U6 (O[12], I[12]);
  UB1DCON_13 U7 (O[13], I[13]);
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_2_0 (O, I);
  output [2:0] O;
  input [2:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
endmodule

module UBCON_7_0 (O, I);
  output [7:0] O;
  input [7:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
  UB1DCON_6 U6 (O[6], I[6]);
  UB1DCON_7 U7 (O[7], I[7]);
endmodule

module UBCON_9_2 (O, I);
  output [9:2] O;
  input [9:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
  UB1DCON_4 U2 (O[4], I[4]);
  UB1DCON_5 U3 (O[5], I[5]);
  UB1DCON_6 U4 (O[6], I[6]);
  UB1DCON_7 U5 (O[7], I[7]);
  UB1DCON_8 U6 (O[8], I[8]);
  UB1DCON_9 U7 (O[9], I[9]);
endmodule

module UBExtender_13_3_1000 (O, I);
  output [14:3] O;
  input [13:3] I;
  UBCON_13_3 U0 (O[13:3], I[13:3]);
  UBZero_14_14 U1 (O[14]);
endmodule

module UBPureBKA_14_3 (S, X, Y);
  output [15:3] S;
  input [14:3] X;
  input [14:3] Y;
  wire C;
  UBPriBKA_14_3 U0 (S, X, Y, C);
  UBZero_3_3 U1 (C);
endmodule

module UBR4BE_5_0 (O__ds, O__d1, O__d0, I);
  output [3:0] O__ds, O__d1, O__d0;
  input [5:0] I;
  wire T;
  NUBZero_6_6 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEEH_3_2 U4 (O__ds[3], O__d1[3], O__d0[3], T, I[5]);
endmodule

module UBR4BPPG_5_0_5_0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  output [8:0] PP0;
  output [10:0] PP1;
  output [12:2] PP2;
  output [13:4] PP3;
  output [7:6] PP4;
  input [5:0] IN1;
  input [5:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire [3:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [7:0] PPT0;
  wire [9:2] PPT1;
  wire [11:4] PPT2;
  wire [13:6] PPT3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  UBR4BE_5_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_5_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_5_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_5_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_5_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBOne_8 U5 (B0);
  UBCMBIN_8_8_7_0 U6 (PP0, B0, PPT0);
  UBOne_10 U7 (B1);
  UBCMBIN_10_10_9_2000 U8 (PP1, B1, PPT1, S0);
  UBOne_12 U9 (B2);
  UBCMBIN_12_12_11_000 U10 (PP2, B2, PPT2, S1);
  UBCMBIN_13_6_4_4 U11 (PP3, PPT3, S2);
  UBOne_7 U12 (B3);
  UBCMBIN_7_7_6_6 U13 (PP4, B3, S3);
endmodule

module UBSD4VPPG_5_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [7:0] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [6:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_7_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [9:2] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [8:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_9_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [11:4] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [10:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_11_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [13:6] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [12:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_13_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBTCCONV14_15_0 (O, I);
  output [16:0] O;
  input [15:0] I;
  UBTC1CON16_0 U0 (O[0], I[0]);
  UBTC1CON16_1 U1 (O[1], I[1]);
  UBTC1CON16_2 U2 (O[2], I[2]);
  UBTC1CON16_3 U3 (O[3], I[3]);
  UBTC1CON16_4 U4 (O[4], I[4]);
  UBTC1CON16_5 U5 (O[5], I[5]);
  UBTC1CON16_6 U6 (O[6], I[6]);
  UBTC1CON16_7 U7 (O[7], I[7]);
  UBTC1CON16_8 U8 (O[8], I[8]);
  UBTC1CON16_9 U9 (O[9], I[9]);
  UBTC1CON16_10 U10 (O[10], I[10]);
  UBTC1CON16_11 U11 (O[11], I[11]);
  UBTC1CON16_12 U12 (O[12], I[12]);
  UBTC1CON16_13 U13 (O[13], I[13]);
  UBTCTCONV_15_14 U14 (O[16:14], I[15:14]);
endmodule

module WLCTR_8_0_10_0_12000 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  output [14:3] S1;
  output [13:0] S2;
  input [8:0] PP0;
  input [10:0] PP1;
  input [12:2] PP2;
  input [13:4] PP3;
  input [7:6] PP4;
  wire [11:1] IC0;
  wire [13:2] IC1;
  wire [12:0] IS0;
  wire [13:0] IS1;
  CSA_8_0_10_0_12_2 U0 (IC0, IS0, PP0, PP1, PP2);
  CSA_12_0_11_1_13_000 U1 (IC1, IS1, IS0, IC0, PP3);
  CSA_13_0_13_2_7_6 U2 (S1, S2, IS1, IC1, PP4);
endmodule

