/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_6_0_6_000

  Number system: Unsigned binary
  Multiplicand length: 7
  Multiplier length: 7
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Balanced delay tree
  Final stage addition: Ripple carry adder
----------------------------------------------------------------------------*/

module NUBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module R4BEEH_3_3(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
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

module U4DPPG_6_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_7_0(Po, O, I, U_d1, U_d0, Pi);
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

module BWCPP_7(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_8(O, I, S);
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

module U4DPPG_6_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_7_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_8(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_9(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_10(O, I, S);
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

module U4DPPG_6_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_7_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_10(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_11(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_12(O, I, S);
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

module U4DPPG_6_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_7_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_12(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_13(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_14(O, I, S);
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

module UBOne_9(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_9(O, I);
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

module UB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_13(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBOne_8(O);
  output O;
  assign O = 1;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module UBFA_9(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_10(C, S, X, Y);
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

module UBHA_9(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_12(C, S, X, Y);
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

module UBHA_14(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
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

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module UBTC1CON17_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON17_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_16_15(O, I);
  output [17:15] O;
  input [16:15] I;
  assign O[15] = ~ I[15];
  assign O[16] = ~ I[16] ^ ( I[15] );
  assign O[17] = ~ ( I[16] | I[15] );
endmodule

module Multiplier_6_0_6_000(P, IN1, IN2);
  output [13:0] P;
  input [6:0] IN1;
  input [6:0] IN2;
  wire [17:0] W;
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
  assign P[12] = W[12];
  assign P[13] = W[13];
  MultUB_R4B_BLD_RC000 U0 (W, IN1, IN2);
endmodule

module BLDCON_12_1_13_0_000 (S1, S2, IN0, IN1, IN2, IN3);
  output [15:2] S1;
  output [14:0] S2;
  input [12:1] IN0;
  input [13:0] IN1;
  input [14:4] IN2;
  input [8:6] IN3;
  wire [14:5] W1;
  wire [14:0] W2;
  CSA_13_0_14_4_8_6 U0 (W1, W2, IN1, IN2, IN3);
  CSA_14_5_14_0_12_000 U1 (S1, S2, W1, W2, IN0);
endmodule

module BLDTR_9_0_11_0_13000 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  output [15:2] S1;
  output [14:0] S2;
  input [9:0] PP0;
  input [11:0] PP1;
  input [13:2] PP2;
  input [14:4] PP3;
  input [8:6] PP4;
  wire [12:1] W0;
  wire [13:0] W1;
  wire [14:4] W2;
  wire [8:6] W3;
  UBARYACC_9_0_11_0000 U0 (W0, W1, PP0, PP1, PP2);
  UBARYACC_14_4_8_6 U1 (W2, W3, PP3, PP4);
  BLDCON_12_1_13_0_000 U2 (S1, S2, W0, W1, W2, W3);
endmodule

module CSA_13_0_14_4_8_6 (C, S, X, Y, Z);
  output [14:5] C;
  output [14:0] S;
  input [13:0] X;
  input [14:4] Y;
  input [8:6] Z;
  UBCON_3_0 U0 (S[3:0], X[3:0]);
  PureCSHA_5_4 U1 (C[6:5], S[5:4], Y[5:4], X[5:4]);
  PureCSA_8_6 U2 (C[9:7], S[8:6], Z[8:6], Y[8:6], X[8:6]);
  PureCSHA_13_9 U3 (C[14:10], S[13:9], Y[13:9], X[13:9]);
  UB1DCON_14 U4 (S[14], Y[14]);
endmodule

module CSA_14_5_14_0_12_000 (C, S, X, Y, Z);
  output [15:2] C;
  output [14:0] S;
  input [14:5] X;
  input [14:0] Y;
  input [12:1] Z;
  UB1DCON_0 U0 (S[0], Y[0]);
  PureCSHA_4_1 U1 (C[5:2], S[4:1], Z[4:1], Y[4:1]);
  PureCSA_12_5 U2 (C[13:6], S[12:5], X[12:5], Z[12:5], Y[12:5]);
  PureCSHA_14_13 U3 (C[15:14], S[14:13], X[14:13], Y[14:13]);
endmodule

module CSA_9_0_11_0_13_2 (C, S, X, Y, Z);
  output [12:1] C;
  output [13:0] S;
  input [9:0] X;
  input [11:0] Y;
  input [13:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_9_2 U1 (C[10:3], S[9:2], Z[9:2], Y[9:2], X[9:2]);
  PureCSHA_11_10 U2 (C[12:11], S[11:10], Z[11:10], Y[11:10]);
  UBCON_13_12 U3 (S[13:12], Z[13:12]);
endmodule

module MultUB_R4B_BLD_RC000 (P, IN1, IN2);
  output [17:0] P;
  input [6:0] IN1;
  input [6:0] IN2;
  wire [9:0] PP0;
  wire [11:0] PP1;
  wire [13:2] PP2;
  wire [14:4] PP3;
  wire [8:6] PP4;
  wire [15:2] S1;
  wire [14:0] S2;
  wire [16:0] UP;
  UBR4BPPG_6_0_6_0 U0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  BLDTR_9_0_11_0_13000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  UBRCA_15_2_14_0 U2 (UP, S1, S2);
  UBTCCONV15_16_0 U3 (P, UP);
endmodule

module PureCSA_12_5 (C, S, X, Y, Z);
  output [13:6] C;
  output [12:5] S;
  input [12:5] X;
  input [12:5] Y;
  input [12:5] Z;
  UBFA_5 U0 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U1 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U2 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U3 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U4 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U5 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U6 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U7 (C[13], S[12], X[12], Y[12], Z[12]);
endmodule

module PureCSA_8_6 (C, S, X, Y, Z);
  output [9:7] C;
  output [8:6] S;
  input [8:6] X;
  input [8:6] Y;
  input [8:6] Z;
  UBFA_6 U0 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U1 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U2 (C[9], S[8], X[8], Y[8], Z[8]);
endmodule

module PureCSA_9_2 (C, S, X, Y, Z);
  output [10:3] C;
  output [9:2] S;
  input [9:2] X;
  input [9:2] Y;
  input [9:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U5 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U6 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U7 (C[10], S[9], X[9], Y[9], Z[9]);
endmodule

module PureCSHA_11_10 (C, S, X, Y);
  output [12:11] C;
  output [11:10] S;
  input [11:10] X;
  input [11:10] Y;
  UBHA_10 U0 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U1 (C[12], S[11], X[11], Y[11]);
endmodule

module PureCSHA_13_9 (C, S, X, Y);
  output [14:10] C;
  output [13:9] S;
  input [13:9] X;
  input [13:9] Y;
  UBHA_9 U0 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U1 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U2 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U3 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U4 (C[14], S[13], X[13], Y[13]);
endmodule

module PureCSHA_14_13 (C, S, X, Y);
  output [15:14] C;
  output [14:13] S;
  input [14:13] X;
  input [14:13] Y;
  UBHA_13 U0 (C[14], S[13], X[13], Y[13]);
  UBHA_14 U1 (C[15], S[14], X[14], Y[14]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_4_1 (C, S, X, Y);
  output [5:2] C;
  output [4:1] S;
  input [4:1] X;
  input [4:1] Y;
  UBHA_1 U0 (C[2], S[1], X[1], Y[1]);
  UBHA_2 U1 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U2 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U3 (C[5], S[4], X[4], Y[4]);
endmodule

module PureCSHA_5_4 (C, S, X, Y);
  output [6:5] C;
  output [5:4] S;
  input [5:4] X;
  input [5:4] Y;
  UBHA_4 U0 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U1 (C[6], S[5], X[5], Y[5]);
endmodule

module TCU4VPPG_7_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [7:0] O_R;
  output O_T;
  input [6:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [7:1] P;
  U4DPPGL_0_0 U0 (P[1], O_R[0], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O_R[1], IN1_R[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O_R[2], IN1_R[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O_R[3], IN1_R[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O_R[4], IN1_R[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O_R[5], IN1_R[5], U__d1, U__d0, P[5]);
  U4DPPG_6_0 U6 (P[7], O_R[6], IN1_R[6], U__d1, U__d0, P[6]);
  U4DPPGH_7_0 U7 (O_T, O_R[7], IN1_T, U__d1, U__d0, P[7]);
endmodule

module TCU4VPPG_7_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [9:2] O_R;
  output O_T;
  input [6:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [9:3] P;
  U4DPPGL_0_1 U0 (P[3], O_R[2], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O_R[3], IN1_R[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O_R[4], IN1_R[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O_R[5], IN1_R[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O_R[6], IN1_R[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O_R[7], IN1_R[5], U__d1, U__d0, P[7]);
  U4DPPG_6_1 U6 (P[9], O_R[8], IN1_R[6], U__d1, U__d0, P[8]);
  U4DPPGH_7_1 U7 (O_T, O_R[9], IN1_T, U__d1, U__d0, P[9]);
endmodule

module TCU4VPPG_7_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [11:4] O_R;
  output O_T;
  input [6:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [11:5] P;
  U4DPPGL_0_2 U0 (P[5], O_R[4], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O_R[5], IN1_R[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O_R[6], IN1_R[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O_R[7], IN1_R[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O_R[8], IN1_R[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O_R[9], IN1_R[5], U__d1, U__d0, P[9]);
  U4DPPG_6_2 U6 (P[11], O_R[10], IN1_R[6], U__d1, U__d0, P[10]);
  U4DPPGH_7_2 U7 (O_T, O_R[11], IN1_T, U__d1, U__d0, P[11]);
endmodule

module TCU4VPPG_7_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [13:6] O_R;
  output O_T;
  input [6:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [13:7] P;
  U4DPPGL_0_3 U0 (P[7], O_R[6], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O_R[7], IN1_R[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O_R[8], IN1_R[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O_R[9], IN1_R[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O_R[10], IN1_R[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O_R[11], IN1_R[5], U__d1, U__d0, P[11]);
  U4DPPG_6_3 U6 (P[13], O_R[12], IN1_R[6], U__d1, U__d0, P[12]);
  U4DPPGH_7_3 U7 (O_T, O_R[13], IN1_T, U__d1, U__d0, P[13]);
endmodule

module TUBWCON_10_2 (O, I_T, I_R, S);
  output [10:2] O;
  input [9:2] I_R;
  input I_T;
  input S;
  BWCPP_2 U0 (O[2], I_R[2], S);
  BWCPP_3 U1 (O[3], I_R[3], S);
  BWCPP_4 U2 (O[4], I_R[4], S);
  BWCPP_5 U3 (O[5], I_R[5], S);
  BWCPP_6 U4 (O[6], I_R[6], S);
  BWCPP_7 U5 (O[7], I_R[7], S);
  BWCPP_8 U6 (O[8], I_R[8], S);
  BWCPP_9 U7 (O[9], I_R[9], S);
  BWCNP_10 U8 (O[10], I_T, S);
endmodule

module TUBWCON_12_4 (O, I_T, I_R, S);
  output [12:4] O;
  input [11:4] I_R;
  input I_T;
  input S;
  BWCPP_4 U0 (O[4], I_R[4], S);
  BWCPP_5 U1 (O[5], I_R[5], S);
  BWCPP_6 U2 (O[6], I_R[6], S);
  BWCPP_7 U3 (O[7], I_R[7], S);
  BWCPP_8 U4 (O[8], I_R[8], S);
  BWCPP_9 U5 (O[9], I_R[9], S);
  BWCPP_10 U6 (O[10], I_R[10], S);
  BWCPP_11 U7 (O[11], I_R[11], S);
  BWCNP_12 U8 (O[12], I_T, S);
endmodule

module TUBWCON_14_6 (O, I_T, I_R, S);
  output [14:6] O;
  input [13:6] I_R;
  input I_T;
  input S;
  BWCPP_6 U0 (O[6], I_R[6], S);
  BWCPP_7 U1 (O[7], I_R[7], S);
  BWCPP_8 U2 (O[8], I_R[8], S);
  BWCPP_9 U3 (O[9], I_R[9], S);
  BWCPP_10 U4 (O[10], I_R[10], S);
  BWCPP_11 U5 (O[11], I_R[11], S);
  BWCPP_12 U6 (O[12], I_R[12], S);
  BWCPP_13 U7 (O[13], I_R[13], S);
  BWCNP_14 U8 (O[14], I_T, S);
endmodule

module TUBWCON_8_0 (O, I_T, I_R, S);
  output [8:0] O;
  input [7:0] I_R;
  input I_T;
  input S;
  BWCPP_0 U0 (O[0], I_R[0], S);
  BWCPP_1 U1 (O[1], I_R[1], S);
  BWCPP_2 U2 (O[2], I_R[2], S);
  BWCPP_3 U3 (O[3], I_R[3], S);
  BWCPP_4 U4 (O[4], I_R[4], S);
  BWCPP_5 U5 (O[5], I_R[5], S);
  BWCPP_6 U6 (O[6], I_R[6], S);
  BWCPP_7 U7 (O[7], I_R[7], S);
  BWCNP_8 U8 (O[8], I_T, S);
endmodule

module UBARYACC_14_4_8_6 (S1, S2, PP0, PP1);
  output [14:4] S1;
  output [8:6] S2;
  input [14:4] PP0;
  input [8:6] PP1;
  UBCON_14_4 U0 (S1, PP0);
  UBCON_8_6 U1 (S2, PP1);
endmodule

module UBARYACC_9_0_11_0000 (S1, S2, PP0, PP1, PP2);
  output [12:1] S1;
  output [13:0] S2;
  input [9:0] PP0;
  input [11:0] PP1;
  input [13:2] PP2;
  CSA_9_0_11_0_13_2 U0 (S1, S2, PP0, PP1, PP2);
endmodule

module UBCMBIN_11_11_10_000 (O, IN0, IN1, IN2);
  output [11:0] O;
  input IN0;
  input [10:2] IN1;
  input IN2;
  UB1DCON_11 U0 (O[11], IN0);
  UBCON_10_2 U1 (O[10:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_13_13_12_000 (O, IN0, IN1, IN2);
  output [13:2] O;
  input IN0;
  input [12:4] IN1;
  input IN2;
  UB1DCON_13 U0 (O[13], IN0);
  UBCON_12_4 U1 (O[12:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_14_6_4_4 (O, IN0, IN1);
  output [14:4] O;
  input [14:6] IN0;
  input IN1;
  UBCON_14_6 U0 (O[14:6], IN0);
  UBZero_5_5 U1 (O[5]);
  UB1DCON_4 U2 (O[4], IN1);
endmodule

module UBCMBIN_8_8_6_6 (O, IN0, IN1);
  output [8:6] O;
  input IN0;
  input IN1;
  UB1DCON_8 U0 (O[8], IN0);
  UBZero_7_7 U1 (O[7]);
  UB1DCON_6 U2 (O[6], IN1);
endmodule

module UBCMBIN_9_9_8_0 (O, IN0, IN1);
  output [9:0] O;
  input IN0;
  input [8:0] IN1;
  UB1DCON_9 U0 (O[9], IN0);
  UBCON_8_0 U1 (O[8:0], IN1);
endmodule

module UBCON_10_2 (O, I);
  output [10:2] O;
  input [10:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
  UB1DCON_4 U2 (O[4], I[4]);
  UB1DCON_5 U3 (O[5], I[5]);
  UB1DCON_6 U4 (O[6], I[6]);
  UB1DCON_7 U5 (O[7], I[7]);
  UB1DCON_8 U6 (O[8], I[8]);
  UB1DCON_9 U7 (O[9], I[9]);
  UB1DCON_10 U8 (O[10], I[10]);
endmodule

module UBCON_12_4 (O, I);
  output [12:4] O;
  input [12:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
  UB1DCON_6 U2 (O[6], I[6]);
  UB1DCON_7 U3 (O[7], I[7]);
  UB1DCON_8 U4 (O[8], I[8]);
  UB1DCON_9 U5 (O[9], I[9]);
  UB1DCON_10 U6 (O[10], I[10]);
  UB1DCON_11 U7 (O[11], I[11]);
  UB1DCON_12 U8 (O[12], I[12]);
endmodule

module UBCON_13_12 (O, I);
  output [13:12] O;
  input [13:12] I;
  UB1DCON_12 U0 (O[12], I[12]);
  UB1DCON_13 U1 (O[13], I[13]);
endmodule

module UBCON_14_2 (O, I);
  output [14:2] O;
  input [14:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
  UB1DCON_4 U2 (O[4], I[4]);
  UB1DCON_5 U3 (O[5], I[5]);
  UB1DCON_6 U4 (O[6], I[6]);
  UB1DCON_7 U5 (O[7], I[7]);
  UB1DCON_8 U6 (O[8], I[8]);
  UB1DCON_9 U7 (O[9], I[9]);
  UB1DCON_10 U8 (O[10], I[10]);
  UB1DCON_11 U9 (O[11], I[11]);
  UB1DCON_12 U10 (O[12], I[12]);
  UB1DCON_13 U11 (O[13], I[13]);
  UB1DCON_14 U12 (O[14], I[14]);
endmodule

module UBCON_14_4 (O, I);
  output [14:4] O;
  input [14:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
  UB1DCON_6 U2 (O[6], I[6]);
  UB1DCON_7 U3 (O[7], I[7]);
  UB1DCON_8 U4 (O[8], I[8]);
  UB1DCON_9 U5 (O[9], I[9]);
  UB1DCON_10 U6 (O[10], I[10]);
  UB1DCON_11 U7 (O[11], I[11]);
  UB1DCON_12 U8 (O[12], I[12]);
  UB1DCON_13 U9 (O[13], I[13]);
  UB1DCON_14 U10 (O[14], I[14]);
endmodule

module UBCON_14_6 (O, I);
  output [14:6] O;
  input [14:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
  UB1DCON_10 U4 (O[10], I[10]);
  UB1DCON_11 U5 (O[11], I[11]);
  UB1DCON_12 U6 (O[12], I[12]);
  UB1DCON_13 U7 (O[13], I[13]);
  UB1DCON_14 U8 (O[14], I[14]);
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_3_0 (O, I);
  output [3:0] O;
  input [3:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
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

module UBCON_8_6 (O, I);
  output [8:6] O;
  input [8:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
endmodule

module UBExtender_14_2_1000 (O, I);
  output [15:2] O;
  input [14:2] I;
  UBCON_14_2 U0 (O[14:2], I[14:2]);
  UBZero_15_15 U1 (O[15]);
endmodule

module UBPriRCA_15_2 (S, X, Y, Cin);
  output [16:2] S;
  input Cin;
  input [15:2] X;
  input [15:2] Y;
  wire C10;
  wire C11;
  wire C12;
  wire C13;
  wire C14;
  wire C15;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  wire C8;
  wire C9;
  UBFA_2 U0 (C3, S[2], X[2], Y[2], Cin);
  UBFA_3 U1 (C4, S[3], X[3], Y[3], C3);
  UBFA_4 U2 (C5, S[4], X[4], Y[4], C4);
  UBFA_5 U3 (C6, S[5], X[5], Y[5], C5);
  UBFA_6 U4 (C7, S[6], X[6], Y[6], C6);
  UBFA_7 U5 (C8, S[7], X[7], Y[7], C7);
  UBFA_8 U6 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U7 (C10, S[9], X[9], Y[9], C9);
  UBFA_10 U8 (C11, S[10], X[10], Y[10], C10);
  UBFA_11 U9 (C12, S[11], X[11], Y[11], C11);
  UBFA_12 U10 (C13, S[12], X[12], Y[12], C12);
  UBFA_13 U11 (C14, S[13], X[13], Y[13], C13);
  UBFA_14 U12 (C15, S[14], X[14], Y[14], C14);
  UBFA_15 U13 (S[16], S[15], X[15], Y[15], C15);
endmodule

module UBPureRCA_15_2 (S, X, Y);
  output [16:2] S;
  input [15:2] X;
  input [15:2] Y;
  wire C;
  UBPriRCA_15_2 U0 (S, X, Y, C);
  UBZero_2_2 U1 (C);
endmodule

module UBR4BE_6_0 (O__ds, O__d1, O__d0, I);
  output [3:0] O__ds, O__d1, O__d0;
  input [6:0] I;
  wire T;
  NUBZero_7_7 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEEH_3_3 U4 (O__ds[3], O__d1[3], O__d0[3], T, I[6], I[5]);
endmodule

module UBR4BPPG_6_0_6_0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  output [9:0] PP0;
  output [11:0] PP1;
  output [13:2] PP2;
  output [14:4] PP3;
  output [8:6] PP4;
  input [6:0] IN1;
  input [6:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire [3:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [8:0] PPT0;
  wire [10:2] PPT1;
  wire [12:4] PPT2;
  wire [14:6] PPT3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  UBR4BE_6_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_6_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_6_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_6_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_6_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBOne_9 U5 (B0);
  UBCMBIN_9_9_8_0 U6 (PP0, B0, PPT0);
  UBOne_11 U7 (B1);
  UBCMBIN_11_11_10_000 U8 (PP1, B1, PPT1, S0);
  UBOne_13 U9 (B2);
  UBCMBIN_13_13_12_000 U10 (PP2, B2, PPT2, S1);
  UBCMBIN_14_6_4_4 U11 (PP3, PPT3, S2);
  UBOne_8 U12 (B3);
  UBCMBIN_8_8_6_6 U13 (PP4, B3, S3);
endmodule

module UBRCA_15_2_14_0 (S, X, Y);
  output [16:0] S;
  input [15:2] X;
  input [14:0] Y;
  wire [15:2] Z;
  UBExtender_14_2_1000 U0 (Z[15:2], Y[14:2]);
  UBPureRCA_15_2 U1 (S[16:2], X[15:2], Z[15:2]);
  UBCON_1_0 U2 (S[1:0], Y[1:0]);
endmodule

module UBSD4VPPG_6_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [8:0] PP;
  input [6:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [7:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_7_7 U1 (NZ);
  TCU4VPPG_7_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_8_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_6_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [10:2] PP;
  input [6:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [9:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_7_7 U1 (NZ);
  TCU4VPPG_7_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_10_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_6_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [12:4] PP;
  input [6:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [11:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_7_7 U1 (NZ);
  TCU4VPPG_7_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_12_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_6_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [14:6] PP;
  input [6:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [13:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_7_7 U1 (NZ);
  TCU4VPPG_7_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_14_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBTCCONV15_16_0 (O, I);
  output [17:0] O;
  input [16:0] I;
  UBTC1CON17_0 U0 (O[0], I[0]);
  UBTC1CON17_1 U1 (O[1], I[1]);
  UBTC1CON17_2 U2 (O[2], I[2]);
  UBTC1CON17_3 U3 (O[3], I[3]);
  UBTC1CON17_4 U4 (O[4], I[4]);
  UBTC1CON17_5 U5 (O[5], I[5]);
  UBTC1CON17_6 U6 (O[6], I[6]);
  UBTC1CON17_7 U7 (O[7], I[7]);
  UBTC1CON17_8 U8 (O[8], I[8]);
  UBTC1CON17_9 U9 (O[9], I[9]);
  UBTC1CON17_10 U10 (O[10], I[10]);
  UBTC1CON17_11 U11 (O[11], I[11]);
  UBTC1CON17_12 U12 (O[12], I[12]);
  UBTC1CON17_13 U13 (O[13], I[13]);
  UBTC1CON17_14 U14 (O[14], I[14]);
  UBTCTCONV_16_15 U15 (O[17:15], I[16:15]);
endmodule

