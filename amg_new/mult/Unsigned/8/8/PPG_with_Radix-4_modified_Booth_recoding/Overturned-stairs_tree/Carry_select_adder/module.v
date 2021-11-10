/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_7_0_7_000

  Number system: Unsigned binary
  Multiplicand length: 8
  Multiplier length: 8
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Overturned-stairs tree
  Final stage addition: Carry select adder
----------------------------------------------------------------------------*/

module NUBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
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

module R4BEE_3(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEEH_4_2(O_ds, O_d1, O_d0, I1, I0);
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

module U4DPPG_6_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_8_0(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPG_7_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_8_1(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPG_7_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_8_2(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPG_7_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_8_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_13(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_14(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_15(O, I, S);
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

module SD41DDECON_4(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_4(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_6_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_8_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_15(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_16(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_17(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_8(O, S);
  output O;
  input S;
  assign O = S;
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

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_14(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UBOne_16(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UB1DCON_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBOne_9(O);
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

module UBHA_11(C, S, X, Y);
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

module UBHA_6(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_7(C, S, X, Y);
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

module UBHA_13(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_14(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_15(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_16(C, S, X, Y);
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

module UBHA_17(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_18_18(O);
  output [18:18] O;
  assign O[18] = 0;
endmodule

module UBOne_4(O);
  output O;
  assign O = 1;
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBCSlB_4_4(Co, S, X, Y, Ci);
  output Co;
  output [4:4] S;
  input Ci;
  input [4:4] X;
  input [4:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [4:4] S_0;
  wire [4:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Ci ) ) | ( S_1[4] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_4 U0 (Ci_1);
  UBZero_4_4 U1 (Ci_0);
  UBRCB_4_4 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_4_4 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_5(O);
  output O;
  assign O = 1;
endmodule

module UBCSlB_6_5(Co, S, X, Y, Ci);
  output Co;
  output [6:5] S;
  input Ci;
  input [6:5] X;
  input [6:5] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [6:5] S_0;
  wire [6:5] S_1;
  assign S[5] = ( S_0[5] & ( ~ Ci ) ) | ( S_1[5] & Ci );
  assign S[6] = ( S_0[6] & ( ~ Ci ) ) | ( S_1[6] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_5 U0 (Ci_1);
  UBZero_5_5 U1 (Ci_0);
  UBRCB_6_5 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_6_5 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBCSlB_9_7(Co, S, X, Y, Ci);
  output Co;
  output [9:7] S;
  input Ci;
  input [9:7] X;
  input [9:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [9:7] S_0;
  wire [9:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Ci ) ) | ( S_1[7] & Ci );
  assign S[8] = ( S_0[8] & ( ~ Ci ) ) | ( S_1[8] & Ci );
  assign S[9] = ( S_0[9] & ( ~ Ci ) ) | ( S_1[9] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_7 U0 (Ci_1);
  UBZero_7_7 U1 (Ci_0);
  UBRCB_9_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_9_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
endmodule

module UBCSlB_13_10(Co, S, X, Y, Ci);
  output Co;
  output [13:10] S;
  input Ci;
  input [13:10] X;
  input [13:10] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [13:10] S_0;
  wire [13:10] S_1;
  assign S[10] = ( S_0[10] & ( ~ Ci ) ) | ( S_1[10] & Ci );
  assign S[11] = ( S_0[11] & ( ~ Ci ) ) | ( S_1[11] & Ci );
  assign S[12] = ( S_0[12] & ( ~ Ci ) ) | ( S_1[12] & Ci );
  assign S[13] = ( S_0[13] & ( ~ Ci ) ) | ( S_1[13] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_10 U0 (Ci_1);
  UBZero_10_10 U1 (Ci_0);
  UBRCB_13_10 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_13_10 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
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

module UBCSlB_18_14(Co, S, X, Y, Ci);
  output Co;
  output [18:14] S;
  input Ci;
  input [18:14] X;
  input [18:14] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [18:14] S_0;
  wire [18:14] S_1;
  assign S[14] = ( S_0[14] & ( ~ Ci ) ) | ( S_1[14] & Ci );
  assign S[15] = ( S_0[15] & ( ~ Ci ) ) | ( S_1[15] & Ci );
  assign S[16] = ( S_0[16] & ( ~ Ci ) ) | ( S_1[16] & Ci );
  assign S[17] = ( S_0[17] & ( ~ Ci ) ) | ( S_1[17] & Ci );
  assign S[18] = ( S_0[18] & ( ~ Ci ) ) | ( S_1[18] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_14 U0 (Ci_1);
  UBZero_14_14 U1 (Ci_0);
  UBRCB_18_14 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_18_14 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBPriCSlA_18_3(S, X, Y, Cin);
  output [19:3] S;
  input Cin;
  input [18:3] X;
  input [18:3] Y;
  wire C0;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  UBRCB_3_3 U0 (C0, S[3], X[3], Y[3], Cin);
  UBCSlB_4_4 U1 (C1, S[4], X[4], Y[4], C0);
  UBCSlB_6_5 U2 (C2, S[6:5], X[6:5], Y[6:5], C1);
  UBCSlB_9_7 U3 (C3, S[9:7], X[9:7], Y[9:7], C2);
  UBCSlB_13_10 U4 (C4, S[13:10], X[13:10], Y[13:10], C3);
  UBCSlB_18_14 U5 (S[19], S[18:14], X[18:14], Y[18:14], C4);
endmodule

module UBTC1CON20_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON20_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_19_18(O, I);
  output [20:18] O;
  input [19:18] I;
  assign O[18] = ~ I[18];
  assign O[19] = ~ I[19] ^ ( I[18] );
  assign O[20] = ~ ( I[19] | I[18] );
endmodule

module Multiplier_7_0_7_000(P, IN1, IN2);
  output [15:0] P;
  input [7:0] IN1;
  input [7:0] IN2;
  wire [20:0] W;
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
  assign P[14] = W[14];
  assign P[15] = W[15];
  MultUB_R4B_OS_CSe000 U0 (W, IN1, IN2);
endmodule

module CSA_10_0_12_0_14_000 (C, S, X, Y, Z);
  output [13:1] C;
  output [14:0] S;
  input [10:0] X;
  input [12:0] Y;
  input [14:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_10_2 U1 (C[11:3], S[10:2], Z[10:2], Y[10:2], X[10:2]);
  PureCSHA_12_11 U2 (C[13:12], S[12:11], Z[12:11], Y[12:11]);
  UBCON_14_13 U3 (S[14:13], Z[14:13]);
endmodule

module CSA_13_1_14_0_17_000 (C, S, X, Y, Z);
  output [15:2] C;
  output [17:0] S;
  input [13:1] X;
  input [14:0] Y;
  input [17:7] Z;
  UB1DCON_0 U0 (S[0], Y[0]);
  PureCSHA_6_1 U1 (C[7:2], S[6:1], X[6:1], Y[6:1]);
  PureCSA_13_7 U2 (C[14:8], S[13:7], Z[13:7], X[13:7], Y[13:7]);
  UBHA_14 U3 (C[15], S[14], Z[14], Y[14]);
  UBCON_17_15 U4 (S[17:15], Z[17:15]);
endmodule

module CSA_15_2_17_0_17_000 (C, S, X, Y, Z);
  output [18:3] C;
  output [17:0] S;
  input [15:2] X;
  input [17:0] Y;
  input [17:4] Z;
  UBCON_1_0 U0 (S[1:0], Y[1:0]);
  PureCSHA_3_2 U1 (C[4:3], S[3:2], X[3:2], Y[3:2]);
  PureCSA_15_4 U2 (C[16:5], S[15:4], Z[15:4], X[15:4], Y[15:4]);
  PureCSHA_17_16 U3 (C[18:17], S[17:16], Z[17:16], Y[17:16]);
endmodule

module CSA_16_4_17_6_9_8 (C, S, X, Y, Z);
  output [17:7] C;
  output [17:4] S;
  input [16:4] X;
  input [17:6] Y;
  input [9:8] Z;
  UBCON_5_4 U0 (S[5:4], X[5:4]);
  PureCSHA_7_6 U1 (C[8:7], S[7:6], Y[7:6], X[7:6]);
  PureCSA_9_8 U2 (C[10:9], S[9:8], Z[9:8], Y[9:8], X[9:8]);
  PureCSHA_16_10 U3 (C[17:11], S[16:10], Y[16:10], X[16:10]);
  UB1DCON_17 U4 (S[17], Y[17]);
endmodule

module MultUB_R4B_OS_CSe000 (P, IN1, IN2);
  output [20:0] P;
  input [7:0] IN1;
  input [7:0] IN2;
  wire [10:0] PP0;
  wire [12:0] PP1;
  wire [14:2] PP2;
  wire [16:4] PP3;
  wire [17:6] PP4;
  wire [9:8] PP5;
  wire [18:3] S1;
  wire [17:0] S2;
  wire [19:0] UP;
  UBR4BPPG_7_0_7_0 U0 (PP0, PP1, PP2, PP3, PP4, PP5, IN1, IN2);
  OSTR_10_0_12_0_14000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  UBCSe_18_3_17_0 U2 (UP, S1, S2);
  UBTCCONV18_19_0 U3 (P, UP);
endmodule

module OSBODY_10_0_12_0_000 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [15:2] S0;
  output [17:0] S1;
  output [17:4] S2;
  input [10:0] PP0;
  input [12:0] PP1;
  input [14:2] PP2;
  input [16:4] PP3;
  input [17:6] PP4;
  input [9:8] PP5;
  wire [13:1] W0;
  wire [14:0] W1;
  wire [16:4] W2;
  wire [17:6] W3;
  wire [9:8] W4;
  OSBODY_10_0_12_0_001 U0 (W0, W1, W2, PP0, PP1, PP2, PP3);
  UBARYACC_17_6_9_8 U1 (W3, W4, PP4, PP5);
  OSCON_13_1_14_0_1000 U2 (S0, S1, S2, W0, W1, W2, W3, W4);
endmodule

module OSBODY_10_0_12_0_001 (S0, S1, S2, PP0, PP1, PP2, PP3);
  output [13:1] S0;
  output [14:0] S1;
  output [16:4] S2;
  input [10:0] PP0;
  input [12:0] PP1;
  input [14:2] PP2;
  input [16:4] PP3;
  CSA_10_0_12_0_14_000 U0 (S0, S1, PP0, PP1, PP2);
  UBCON_16_4 U1 (S2, PP3);
endmodule

module OSCON_13_1_14_0_1000 (S0, S1, S2, IN0, IN1, IN2, IN3, IN4);
  output [15:2] S0;
  output [17:0] S1;
  output [17:4] S2;
  input [13:1] IN0;
  input [14:0] IN1;
  input [16:4] IN2;
  input [17:6] IN3;
  input [9:8] IN4;
  wire [17:7] W;
  CSA_16_4_17_6_9_8 U0 (W, S2, IN2, IN3, IN4);
  CSA_13_1_14_0_17_000 U1 (S0, S1, IN0, IN1, W);
endmodule

module OSTR_10_0_12_0_14000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [18:3] S1;
  output [17:0] S2;
  input [10:0] PP0;
  input [12:0] PP1;
  input [14:2] PP2;
  input [16:4] PP3;
  input [17:6] PP4;
  input [9:8] PP5;
  wire [15:2] W0;
  wire [17:0] W1;
  wire [17:4] W2;
  OSBODY_10_0_12_0_000 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5);
  CSA_15_2_17_0_17_000 U1 (S1, S2, W0, W1, W2);
endmodule

module PureCSA_10_2 (C, S, X, Y, Z);
  output [11:3] C;
  output [10:2] S;
  input [10:2] X;
  input [10:2] Y;
  input [10:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U5 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U6 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U7 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U8 (C[11], S[10], X[10], Y[10], Z[10]);
endmodule

module PureCSA_13_7 (C, S, X, Y, Z);
  output [14:8] C;
  output [13:7] S;
  input [13:7] X;
  input [13:7] Y;
  input [13:7] Z;
  UBFA_7 U0 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U1 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U2 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U3 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U4 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U5 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U6 (C[14], S[13], X[13], Y[13], Z[13]);
endmodule

module PureCSA_15_4 (C, S, X, Y, Z);
  output [16:5] C;
  output [15:4] S;
  input [15:4] X;
  input [15:4] Y;
  input [15:4] Z;
  UBFA_4 U0 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U1 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U2 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U3 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U4 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U5 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U6 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U7 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U8 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U9 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U10 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U11 (C[16], S[15], X[15], Y[15], Z[15]);
endmodule

module PureCSA_9_8 (C, S, X, Y, Z);
  output [10:9] C;
  output [9:8] S;
  input [9:8] X;
  input [9:8] Y;
  input [9:8] Z;
  UBFA_8 U0 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U1 (C[10], S[9], X[9], Y[9], Z[9]);
endmodule

module PureCSHA_12_11 (C, S, X, Y);
  output [13:12] C;
  output [12:11] S;
  input [12:11] X;
  input [12:11] Y;
  UBHA_11 U0 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U1 (C[13], S[12], X[12], Y[12]);
endmodule

module PureCSHA_16_10 (C, S, X, Y);
  output [17:11] C;
  output [16:10] S;
  input [16:10] X;
  input [16:10] Y;
  UBHA_10 U0 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U1 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U2 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U3 (C[14], S[13], X[13], Y[13]);
  UBHA_14 U4 (C[15], S[14], X[14], Y[14]);
  UBHA_15 U5 (C[16], S[15], X[15], Y[15]);
  UBHA_16 U6 (C[17], S[16], X[16], Y[16]);
endmodule

module PureCSHA_17_16 (C, S, X, Y);
  output [18:17] C;
  output [17:16] S;
  input [17:16] X;
  input [17:16] Y;
  UBHA_16 U0 (C[17], S[16], X[16], Y[16]);
  UBHA_17 U1 (C[18], S[17], X[17], Y[17]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_3_2 (C, S, X, Y);
  output [4:3] C;
  output [3:2] S;
  input [3:2] X;
  input [3:2] Y;
  UBHA_2 U0 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
endmodule

module PureCSHA_6_1 (C, S, X, Y);
  output [7:2] C;
  output [6:1] S;
  input [6:1] X;
  input [6:1] Y;
  UBHA_1 U0 (C[2], S[1], X[1], Y[1]);
  UBHA_2 U1 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U2 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U3 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U4 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U5 (C[7], S[6], X[6], Y[6]);
endmodule

module PureCSHA_7_6 (C, S, X, Y);
  output [8:7] C;
  output [7:6] S;
  input [7:6] X;
  input [7:6] Y;
  UBHA_6 U0 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U1 (C[8], S[7], X[7], Y[7]);
endmodule

module TCU4VPPG_8_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [8:0] O_R;
  output O_T;
  input [7:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [8:1] P;
  U4DPPGL_0_0 U0 (P[1], O_R[0], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O_R[1], IN1_R[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O_R[2], IN1_R[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O_R[3], IN1_R[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O_R[4], IN1_R[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O_R[5], IN1_R[5], U__d1, U__d0, P[5]);
  U4DPPG_6_0 U6 (P[7], O_R[6], IN1_R[6], U__d1, U__d0, P[6]);
  U4DPPG_7_0 U7 (P[8], O_R[7], IN1_R[7], U__d1, U__d0, P[7]);
  U4DPPGH_8_0 U8 (O_T, O_R[8], IN1_T, U__d1, U__d0, P[8]);
endmodule

module TCU4VPPG_8_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [10:2] O_R;
  output O_T;
  input [7:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [10:3] P;
  U4DPPGL_0_1 U0 (P[3], O_R[2], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O_R[3], IN1_R[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O_R[4], IN1_R[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O_R[5], IN1_R[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O_R[6], IN1_R[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O_R[7], IN1_R[5], U__d1, U__d0, P[7]);
  U4DPPG_6_1 U6 (P[9], O_R[8], IN1_R[6], U__d1, U__d0, P[8]);
  U4DPPG_7_1 U7 (P[10], O_R[9], IN1_R[7], U__d1, U__d0, P[9]);
  U4DPPGH_8_1 U8 (O_T, O_R[10], IN1_T, U__d1, U__d0, P[10]);
endmodule

module TCU4VPPG_8_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [12:4] O_R;
  output O_T;
  input [7:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [12:5] P;
  U4DPPGL_0_2 U0 (P[5], O_R[4], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O_R[5], IN1_R[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O_R[6], IN1_R[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O_R[7], IN1_R[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O_R[8], IN1_R[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O_R[9], IN1_R[5], U__d1, U__d0, P[9]);
  U4DPPG_6_2 U6 (P[11], O_R[10], IN1_R[6], U__d1, U__d0, P[10]);
  U4DPPG_7_2 U7 (P[12], O_R[11], IN1_R[7], U__d1, U__d0, P[11]);
  U4DPPGH_8_2 U8 (O_T, O_R[12], IN1_T, U__d1, U__d0, P[12]);
endmodule

module TCU4VPPG_8_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [14:6] O_R;
  output O_T;
  input [7:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [14:7] P;
  U4DPPGL_0_3 U0 (P[7], O_R[6], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O_R[7], IN1_R[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O_R[8], IN1_R[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O_R[9], IN1_R[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O_R[10], IN1_R[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O_R[11], IN1_R[5], U__d1, U__d0, P[11]);
  U4DPPG_6_3 U6 (P[13], O_R[12], IN1_R[6], U__d1, U__d0, P[12]);
  U4DPPG_7_3 U7 (P[14], O_R[13], IN1_R[7], U__d1, U__d0, P[13]);
  U4DPPGH_8_3 U8 (O_T, O_R[14], IN1_T, U__d1, U__d0, P[14]);
endmodule

module TCU4VPPG_8_0_4 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [16:8] O_R;
  output O_T;
  input [7:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [16:9] P;
  U4DPPGL_0_4 U0 (P[9], O_R[8], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_4 U1 (P[10], O_R[9], IN1_R[1], U__d1, U__d0, P[9]);
  U4DPPG_2_4 U2 (P[11], O_R[10], IN1_R[2], U__d1, U__d0, P[10]);
  U4DPPG_3_4 U3 (P[12], O_R[11], IN1_R[3], U__d1, U__d0, P[11]);
  U4DPPG_4_4 U4 (P[13], O_R[12], IN1_R[4], U__d1, U__d0, P[12]);
  U4DPPG_5_4 U5 (P[14], O_R[13], IN1_R[5], U__d1, U__d0, P[13]);
  U4DPPG_6_4 U6 (P[15], O_R[14], IN1_R[6], U__d1, U__d0, P[14]);
  U4DPPG_7_4 U7 (P[16], O_R[15], IN1_R[7], U__d1, U__d0, P[15]);
  U4DPPGH_8_4 U8 (O_T, O_R[16], IN1_T, U__d1, U__d0, P[16]);
endmodule

module TUBWCON_11_2 (O, I_T, I_R, S);
  output [11:2] O;
  input [10:2] I_R;
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
  BWCPP_10 U8 (O[10], I_R[10], S);
  BWCNP_11 U9 (O[11], I_T, S);
endmodule

module TUBWCON_13_4 (O, I_T, I_R, S);
  output [13:4] O;
  input [12:4] I_R;
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
  BWCPP_12 U8 (O[12], I_R[12], S);
  BWCNP_13 U9 (O[13], I_T, S);
endmodule

module TUBWCON_15_6 (O, I_T, I_R, S);
  output [15:6] O;
  input [14:6] I_R;
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
  BWCPP_14 U8 (O[14], I_R[14], S);
  BWCNP_15 U9 (O[15], I_T, S);
endmodule

module TUBWCON_17_8 (O, I_T, I_R, S);
  output [17:8] O;
  input [16:8] I_R;
  input I_T;
  input S;
  BWCPP_8 U0 (O[8], I_R[8], S);
  BWCPP_9 U1 (O[9], I_R[9], S);
  BWCPP_10 U2 (O[10], I_R[10], S);
  BWCPP_11 U3 (O[11], I_R[11], S);
  BWCPP_12 U4 (O[12], I_R[12], S);
  BWCPP_13 U5 (O[13], I_R[13], S);
  BWCPP_14 U6 (O[14], I_R[14], S);
  BWCPP_15 U7 (O[15], I_R[15], S);
  BWCPP_16 U8 (O[16], I_R[16], S);
  BWCNP_17 U9 (O[17], I_T, S);
endmodule

module TUBWCON_9_0 (O, I_T, I_R, S);
  output [9:0] O;
  input [8:0] I_R;
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
  BWCPP_8 U8 (O[8], I_R[8], S);
  BWCNP_9 U9 (O[9], I_T, S);
endmodule

module UBARYACC_17_6_9_8 (S1, S2, PP0, PP1);
  output [17:6] S1;
  output [9:8] S2;
  input [17:6] PP0;
  input [9:8] PP1;
  UBCON_17_6 U0 (S1, PP0);
  UBCON_9_8 U1 (S2, PP1);
endmodule

module UBCMBIN_10_10_9_0 (O, IN0, IN1);
  output [10:0] O;
  input IN0;
  input [9:0] IN1;
  UB1DCON_10 U0 (O[10], IN0);
  UBCON_9_0 U1 (O[9:0], IN1);
endmodule

module UBCMBIN_12_12_11_000 (O, IN0, IN1, IN2);
  output [12:0] O;
  input IN0;
  input [11:2] IN1;
  input IN2;
  UB1DCON_12 U0 (O[12], IN0);
  UBCON_11_2 U1 (O[11:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_14_14_13_000 (O, IN0, IN1, IN2);
  output [14:2] O;
  input IN0;
  input [13:4] IN1;
  input IN2;
  UB1DCON_14 U0 (O[14], IN0);
  UBCON_13_4 U1 (O[13:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_16_16_15_000 (O, IN0, IN1, IN2);
  output [16:4] O;
  input IN0;
  input [15:6] IN1;
  input IN2;
  UB1DCON_16 U0 (O[16], IN0);
  UBCON_15_6 U1 (O[15:6], IN1);
  UBZero_5_5 U2 (O[5]);
  UB1DCON_4 U3 (O[4], IN2);
endmodule

module UBCMBIN_17_8_6_6 (O, IN0, IN1);
  output [17:6] O;
  input [17:8] IN0;
  input IN1;
  UBCON_17_8 U0 (O[17:8], IN0);
  UBZero_7_7 U1 (O[7]);
  UB1DCON_6 U2 (O[6], IN1);
endmodule

module UBCMBIN_9_9_8_8 (O, IN0, IN1);
  output [9:8] O;
  input IN0;
  input IN1;
  UB1DCON_9 U0 (O[9], IN0);
  UB1DCON_8 U1 (O[8], IN1);
endmodule

module UBCON_11_2 (O, I);
  output [11:2] O;
  input [11:2] I;
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
endmodule

module UBCON_13_4 (O, I);
  output [13:4] O;
  input [13:4] I;
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
endmodule

module UBCON_14_13 (O, I);
  output [14:13] O;
  input [14:13] I;
  UB1DCON_13 U0 (O[13], I[13]);
  UB1DCON_14 U1 (O[14], I[14]);
endmodule

module UBCON_15_6 (O, I);
  output [15:6] O;
  input [15:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
  UB1DCON_10 U4 (O[10], I[10]);
  UB1DCON_11 U5 (O[11], I[11]);
  UB1DCON_12 U6 (O[12], I[12]);
  UB1DCON_13 U7 (O[13], I[13]);
  UB1DCON_14 U8 (O[14], I[14]);
  UB1DCON_15 U9 (O[15], I[15]);
endmodule

module UBCON_16_4 (O, I);
  output [16:4] O;
  input [16:4] I;
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
  UB1DCON_15 U11 (O[15], I[15]);
  UB1DCON_16 U12 (O[16], I[16]);
endmodule

module UBCON_17_15 (O, I);
  output [17:15] O;
  input [17:15] I;
  UB1DCON_15 U0 (O[15], I[15]);
  UB1DCON_16 U1 (O[16], I[16]);
  UB1DCON_17 U2 (O[17], I[17]);
endmodule

module UBCON_17_3 (O, I);
  output [17:3] O;
  input [17:3] I;
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
  UB1DCON_14 U11 (O[14], I[14]);
  UB1DCON_15 U12 (O[15], I[15]);
  UB1DCON_16 U13 (O[16], I[16]);
  UB1DCON_17 U14 (O[17], I[17]);
endmodule

module UBCON_17_6 (O, I);
  output [17:6] O;
  input [17:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
  UB1DCON_10 U4 (O[10], I[10]);
  UB1DCON_11 U5 (O[11], I[11]);
  UB1DCON_12 U6 (O[12], I[12]);
  UB1DCON_13 U7 (O[13], I[13]);
  UB1DCON_14 U8 (O[14], I[14]);
  UB1DCON_15 U9 (O[15], I[15]);
  UB1DCON_16 U10 (O[16], I[16]);
  UB1DCON_17 U11 (O[17], I[17]);
endmodule

module UBCON_17_8 (O, I);
  output [17:8] O;
  input [17:8] I;
  UB1DCON_8 U0 (O[8], I[8]);
  UB1DCON_9 U1 (O[9], I[9]);
  UB1DCON_10 U2 (O[10], I[10]);
  UB1DCON_11 U3 (O[11], I[11]);
  UB1DCON_12 U4 (O[12], I[12]);
  UB1DCON_13 U5 (O[13], I[13]);
  UB1DCON_14 U6 (O[14], I[14]);
  UB1DCON_15 U7 (O[15], I[15]);
  UB1DCON_16 U8 (O[16], I[16]);
  UB1DCON_17 U9 (O[17], I[17]);
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

module UBCON_5_4 (O, I);
  output [5:4] O;
  input [5:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
endmodule

module UBCON_9_0 (O, I);
  output [9:0] O;
  input [9:0] I;
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
endmodule

module UBCON_9_8 (O, I);
  output [9:8] O;
  input [9:8] I;
  UB1DCON_8 U0 (O[8], I[8]);
  UB1DCON_9 U1 (O[9], I[9]);
endmodule

module UBCSe_18_3_17_0 (S, X, Y);
  output [19:0] S;
  input [18:3] X;
  input [17:0] Y;
  wire [18:3] Z;
  UBExtender_17_3_1000 U0 (Z[18:3], Y[17:3]);
  UBPureCSe_18_3 U1 (S[19:3], X[18:3], Z[18:3]);
  UBCON_2_0 U2 (S[2:0], Y[2:0]);
endmodule

module UBExtender_17_3_1000 (O, I);
  output [18:3] O;
  input [17:3] I;
  UBCON_17_3 U0 (O[17:3], I[17:3]);
  UBZero_18_18 U1 (O[18]);
endmodule

module UBPureCSe_18_3 (S, X, Y);
  output [19:3] S;
  input [18:3] X;
  input [18:3] Y;
  wire C;
  UBPriCSlA_18_3 U0 (S, X, Y, C);
  UBZero_3_3 U1 (C);
endmodule

module UBR4BE_7_0 (O__ds, O__d1, O__d0, I);
  output [4:0] O__ds, O__d1, O__d0;
  input [7:0] I;
  wire T;
  NUBZero_8_8 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEEH_4_2 U5 (O__ds[4], O__d1[4], O__d0[4], T, I[7]);
endmodule

module UBR4BPPG_7_0_7_0 (PP0, PP1, PP2, PP3, PP4, PP5, IN1, IN2);
  output [10:0] PP0;
  output [12:0] PP1;
  output [14:2] PP2;
  output [16:4] PP3;
  output [17:6] PP4;
  output [9:8] PP5;
  input [7:0] IN1;
  input [7:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire [4:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [9:0] PPT0;
  wire [11:2] PPT1;
  wire [13:4] PPT2;
  wire [15:6] PPT3;
  wire [17:8] PPT4;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  UBR4BE_7_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_7_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_7_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_7_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_7_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_7_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBOne_10 U6 (B0);
  UBCMBIN_10_10_9_0 U7 (PP0, B0, PPT0);
  UBOne_12 U8 (B1);
  UBCMBIN_12_12_11_000 U9 (PP1, B1, PPT1, S0);
  UBOne_14 U10 (B2);
  UBCMBIN_14_14_13_000 U11 (PP2, B2, PPT2, S1);
  UBOne_16 U12 (B3);
  UBCMBIN_16_16_15_000 U13 (PP3, B3, PPT3, S2);
  UBCMBIN_17_8_6_6 U14 (PP4, PPT4, S3);
  UBOne_9 U15 (B4);
  UBCMBIN_9_9_8_8 U16 (PP5, B4, S4);
endmodule

module UBRCB_13_10 (Co, S, X, Y, Ci);
  output Co;
  output [13:10] S;
  input Ci;
  input [13:10] X;
  input [13:10] Y;
  wire C11;
  wire C12;
  wire C13;
  UBFA_10 U0 (C11, S[10], X[10], Y[10], Ci);
  UBFA_11 U1 (C12, S[11], X[11], Y[11], C11);
  UBFA_12 U2 (C13, S[12], X[12], Y[12], C12);
  UBFA_13 U3 (Co, S[13], X[13], Y[13], C13);
endmodule

module UBRCB_18_14 (Co, S, X, Y, Ci);
  output Co;
  output [18:14] S;
  input Ci;
  input [18:14] X;
  input [18:14] Y;
  wire C15;
  wire C16;
  wire C17;
  wire C18;
  UBFA_14 U0 (C15, S[14], X[14], Y[14], Ci);
  UBFA_15 U1 (C16, S[15], X[15], Y[15], C15);
  UBFA_16 U2 (C17, S[16], X[16], Y[16], C16);
  UBFA_17 U3 (C18, S[17], X[17], Y[17], C17);
  UBFA_18 U4 (Co, S[18], X[18], Y[18], C18);
endmodule

module UBRCB_3_3 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_3 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_4_4 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_4 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_6_5 (Co, S, X, Y, Ci);
  output Co;
  output [6:5] S;
  input Ci;
  input [6:5] X;
  input [6:5] Y;
  wire C6;
  UBFA_5 U0 (C6, S[5], X[5], Y[5], Ci);
  UBFA_6 U1 (Co, S[6], X[6], Y[6], C6);
endmodule

module UBRCB_9_7 (Co, S, X, Y, Ci);
  output Co;
  output [9:7] S;
  input Ci;
  input [9:7] X;
  input [9:7] Y;
  wire C8;
  wire C9;
  UBFA_7 U0 (C8, S[7], X[7], Y[7], Ci);
  UBFA_8 U1 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U2 (Co, S[9], X[9], Y[9], C9);
endmodule

module UBSD4VPPG_7_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [9:0] PP;
  input [7:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [8:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_8_8 U1 (NZ);
  TCU4VPPG_8_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_9_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_7_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [11:2] PP;
  input [7:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [10:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_8_8 U1 (NZ);
  TCU4VPPG_8_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_11_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_7_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [13:4] PP;
  input [7:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [12:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_8_8 U1 (NZ);
  TCU4VPPG_8_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_13_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_7_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [15:6] PP;
  input [7:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [14:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_8_8 U1 (NZ);
  TCU4VPPG_8_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_15_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBSD4VPPG_7_0_4 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [17:8] PP;
  input [7:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [16:8] W_R;
  wire W_T;
  SD41DDECON_4 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_8_8 U1 (NZ);
  TCU4VPPG_8_0_4 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_17_8 U3 (PP, W_T, W_R, S);
  UBBBG_8 U4 (C, S);
endmodule

module UBTCCONV18_19_0 (O, I);
  output [20:0] O;
  input [19:0] I;
  UBTC1CON20_0 U0 (O[0], I[0]);
  UBTC1CON20_1 U1 (O[1], I[1]);
  UBTC1CON20_2 U2 (O[2], I[2]);
  UBTC1CON20_3 U3 (O[3], I[3]);
  UBTC1CON20_4 U4 (O[4], I[4]);
  UBTC1CON20_5 U5 (O[5], I[5]);
  UBTC1CON20_6 U6 (O[6], I[6]);
  UBTC1CON20_7 U7 (O[7], I[7]);
  UBTC1CON20_8 U8 (O[8], I[8]);
  UBTC1CON20_9 U9 (O[9], I[9]);
  UBTC1CON20_10 U10 (O[10], I[10]);
  UBTC1CON20_11 U11 (O[11], I[11]);
  UBTC1CON20_12 U12 (O[12], I[12]);
  UBTC1CON20_13 U13 (O[13], I[13]);
  UBTC1CON20_14 U14 (O[14], I[14]);
  UBTC1CON20_15 U15 (O[15], I[15]);
  UBTC1CON20_16 U16 (O[16], I[16]);
  UBTC1CON20_17 U17 (O[17], I[17]);
  UBTCTCONV_19_18 U18 (O[20:18], I[19:18]);
endmodule

