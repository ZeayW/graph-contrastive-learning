/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_14_0_1000

  Number system: Unsigned binary
  Multiplicand length: 15
  Multiplier length: 15
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Array
  Final stage addition: Carry look-ahead adder
----------------------------------------------------------------------------*/

module NUBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
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

module R4BEE_4(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEE_5(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEE_6(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEEH_7_3(O_ds, O_d1, O_d0, I2, I1, I0);
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

module U4DPPG_7_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_8_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_0(Po, O, I, U_d1, U_d0, Pi);
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

module BWCPP_15(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_16(O, I, S);
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

module U4DPPG_8_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_16(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_17(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_18(O, I, S);
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

module U4DPPG_8_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_18(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_19(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_20(O, I, S);
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

module U4DPPG_8_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_20(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_21(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_22(O, I, S);
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

module U4DPPG_8_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_22(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_23(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_24(O, I, S);
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

module SD41DDECON_5(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_5(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_6_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_8_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_24(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_25(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_26(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_10(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module SD41DDECON_6(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_6(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_6_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_8_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_26(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_27(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_28(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_12(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module SD41DDECON_7(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_7(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_6_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_8_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_15_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_28(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_29(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_30(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_14(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module UBOne_17(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_17(O, I);
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

module UB1DCON_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBOne_19(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_21(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UBOne_23(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBOne_25(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBOne_27(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module UBOne_29(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module UB1DCON_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
endmodule

module UBOne_16(O);
  output O;
  assign O = 1;
endmodule

module UBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
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

module UBHA_18(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_19(C, S, X, Y);
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

module UBHA_21(C, S, X, Y);
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

module UBHA_23(C, S, X, Y);
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

module UBFA_23(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_24(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_25(C, S, X, Y);
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

module UBHA_9(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBFA_25(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_26(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_27(C, S, X, Y);
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

module UBHA_11(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBFA_27(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_28(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_29(C, S, X, Y);
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

module UBHA_17(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_20(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_22(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_24(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_26(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_28(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_30(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_31_31(O);
  output [31:31] O;
  assign O[31] = 0;
endmodule

module GPGenerator(Go, Po, A, B);
  output Go;
  output Po;
  input A;
  input B;
  assign Go = A & B;
  assign Po = A ^ B;
endmodule

module CLAUnit_25(C, G, P, Cin);
  output [25:1] C;
  input Cin;
  input [24:0] G;
  input [24:0] P;
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
  assign C[21] = G[20] | ( P[20] & G[19] ) | ( P[20] & P[19] & G[18] ) | ( P[20] & P[19] & P[18] & G[17] ) | ( P[20] & P[19] & P[18] & P[17] & G[16] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & G[15] )
 | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & G[14] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12]
 ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[20] & P[19] & P[18]
 & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[20] & P[19] & P[18]
 & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6]
 ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] )
 | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14]
 & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8]
 & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2]
 & P[1] & P[0] & Cin );
  assign C[22] = G[21] | ( P[21] & G[20] ) | ( P[21] & P[20] & G[19] ) | ( P[21] & P[20] & P[19] & G[18] ) | ( P[21] & P[20] & P[19] & P[18] & G[17] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & G[16] )
 | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & G[15] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & G[14] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13]
 ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[21] & P[20] & P[19]
 & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[21] & P[20] &
 P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] &
 P[8] & G[7] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] &
 P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6]
 & P[5] & G[4] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[21] & P[20] & P[19] & P[18] &
 P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] &
 P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2]
 & P[1] & P[0] & Cin );
  assign C[23] = G[22] | ( P[22] & G[21] ) | ( P[22] & P[21] & G[20] ) | ( P[22] & P[21] & P[20] & G[19] ) | ( P[22] & P[21] & P[20] & P[19] & G[18] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & G[17] )
 | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & G[16] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & G[15] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & G[14]
 ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[22] & P[21] & P[20]
 & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[22] & P[21] &
 P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10]
 & P[9] & G[8] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16]
 & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7]
 & P[6] & G[5] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[22] & P[21] & P[20] & P[19] &
 P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13]
 & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8]
 & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] &
 P[3] & P[2] & P[1] & G[0] ) | ( P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0]
 & Cin );
  assign C[24] = G[23] | ( P[23] & G[22] ) | ( P[23] & P[22] & G[21] ) | ( P[23] & P[22] & P[21] & G[20] ) | ( P[23] & P[22] & P[21] & P[20] & G[19] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & G[18] )
 | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & G[17] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & G[16] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & G[15]
 ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & G[14] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[23] & P[22] & P[21]
 & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[23] & P[22] &
 P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & G[10] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11]
 & P[10] & G[9] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17]
 & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] &
 P[8] & P[7] & G[6] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[23] & P[22] & P[21] & P[20]
 & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14]
 & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] &
 P[4] & P[3] & P[2] & G[1] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1]
 & G[0] ) | ( P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[25] = G[24] | ( P[24] & G[23] ) | ( P[24] & P[23] & G[22] ) | ( P[24] & P[23] & P[22] & G[21] ) | ( P[24] & P[23] & P[22] & P[21] & G[20] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & G[19] )
 | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & G[18] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & G[17] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & G[16]
 ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & G[15] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & G[14] ) | ( P[24] & P[23] & P[22]
 & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & G[13] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & G[12] ) | ( P[24] & P[23] &
 P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & G[11] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12]
 & P[11] & G[10] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] &
 P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] &
 P[10] & P[9] & P[8] & G[7] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[24] & P[23] &
 P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17]
 & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8]
 & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5]
 & P[4] & P[3] & P[2] & G[1] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3]
 & P[2] & P[1] & G[0] ) | ( P[24] & P[23] & P[22] & P[21] & P[20] & P[19] & P[18] & P[17] & P[16] & P[15] & P[14] & P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2]
 & P[1] & P[0] & Cin );
endmodule

module UBPriCLA_31_7(S, X, Y, Cin);
  output [32:7] S;
  input Cin;
  input [31:7] X;
  input [31:7] Y;
  wire [32:8] C;
  wire [31:7] G;
  wire [31:7] P;
  assign S[7] = Cin ^ P[7];
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
  assign S[20] = C[20] ^ P[20];
  assign S[21] = C[21] ^ P[21];
  assign S[22] = C[22] ^ P[22];
  assign S[23] = C[23] ^ P[23];
  assign S[24] = C[24] ^ P[24];
  assign S[25] = C[25] ^ P[25];
  assign S[26] = C[26] ^ P[26];
  assign S[27] = C[27] ^ P[27];
  assign S[28] = C[28] ^ P[28];
  assign S[29] = C[29] ^ P[29];
  assign S[30] = C[30] ^ P[30];
  assign S[31] = C[31] ^ P[31];
  assign S[32] = C[32];
  GPGenerator U0 (G[7], P[7], X[7], Y[7]);
  GPGenerator U1 (G[8], P[8], X[8], Y[8]);
  GPGenerator U2 (G[9], P[9], X[9], Y[9]);
  GPGenerator U3 (G[10], P[10], X[10], Y[10]);
  GPGenerator U4 (G[11], P[11], X[11], Y[11]);
  GPGenerator U5 (G[12], P[12], X[12], Y[12]);
  GPGenerator U6 (G[13], P[13], X[13], Y[13]);
  GPGenerator U7 (G[14], P[14], X[14], Y[14]);
  GPGenerator U8 (G[15], P[15], X[15], Y[15]);
  GPGenerator U9 (G[16], P[16], X[16], Y[16]);
  GPGenerator U10 (G[17], P[17], X[17], Y[17]);
  GPGenerator U11 (G[18], P[18], X[18], Y[18]);
  GPGenerator U12 (G[19], P[19], X[19], Y[19]);
  GPGenerator U13 (G[20], P[20], X[20], Y[20]);
  GPGenerator U14 (G[21], P[21], X[21], Y[21]);
  GPGenerator U15 (G[22], P[22], X[22], Y[22]);
  GPGenerator U16 (G[23], P[23], X[23], Y[23]);
  GPGenerator U17 (G[24], P[24], X[24], Y[24]);
  GPGenerator U18 (G[25], P[25], X[25], Y[25]);
  GPGenerator U19 (G[26], P[26], X[26], Y[26]);
  GPGenerator U20 (G[27], P[27], X[27], Y[27]);
  GPGenerator U21 (G[28], P[28], X[28], Y[28]);
  GPGenerator U22 (G[29], P[29], X[29], Y[29]);
  GPGenerator U23 (G[30], P[30], X[30], Y[30]);
  GPGenerator U24 (G[31], P[31], X[31], Y[31]);
  CLAUnit_25 U25 (C, G, P, Cin);
endmodule

module UBTC1CON33_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON33_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_32_31(O, I);
  output [33:31] O;
  input [32:31] I;
  assign O[31] = ~ I[31];
  assign O[32] = ~ I[32] ^ ( I[31] );
  assign O[33] = ~ ( I[32] | I[31] );
endmodule

module Multiplier_14_0_1000(P, IN1, IN2);
  output [29:0] P;
  input [14:0] IN1;
  input [14:0] IN2;
  wire [33:0] W;
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
  assign P[16] = W[16];
  assign P[17] = W[17];
  assign P[18] = W[18];
  assign P[19] = W[19];
  assign P[20] = W[20];
  assign P[21] = W[21];
  assign P[22] = W[22];
  assign P[23] = W[23];
  assign P[24] = W[24];
  assign P[25] = W[25];
  assign P[26] = W[26];
  assign P[27] = W[27];
  assign P[28] = W[28];
  assign P[29] = W[29];
  MultUB_R4B_ARY_CL000 U0 (W, IN1, IN2);
endmodule

module CSA_17_0_19_0_21_000 (C, S, X, Y, Z);
  output [20:1] C;
  output [21:0] S;
  input [17:0] X;
  input [19:0] Y;
  input [21:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_17_2 U1 (C[18:3], S[17:2], Z[17:2], Y[17:2], X[17:2]);
  PureCSHA_19_18 U2 (C[20:19], S[19:18], Z[19:18], Y[19:18]);
  UBCON_21_20 U3 (S[21:20], Z[21:20]);
endmodule

module CSA_21_0_20_1_23_000 (C, S, X, Y, Z);
  output [22:2] C;
  output [23:0] S;
  input [21:0] X;
  input [20:1] Y;
  input [23:4] Z;
  UB1DCON_0 U0 (S[0], X[0]);
  PureCSHA_3_1 U1 (C[4:2], S[3:1], Y[3:1], X[3:1]);
  PureCSA_20_4 U2 (C[21:5], S[20:4], Z[20:4], Y[20:4], X[20:4]);
  UBHA_21 U3 (C[22], S[21], Z[21], X[21]);
  UBCON_23_22 U4 (S[23:22], Z[23:22]);
endmodule

module CSA_23_0_22_2_25_000 (C, S, X, Y, Z);
  output [24:3] C;
  output [25:0] S;
  input [23:0] X;
  input [22:2] Y;
  input [25:6] Z;
  UBCON_1_0 U0 (S[1:0], X[1:0]);
  PureCSHA_5_2 U1 (C[6:3], S[5:2], Y[5:2], X[5:2]);
  PureCSA_22_6 U2 (C[23:7], S[22:6], Z[22:6], Y[22:6], X[22:6]);
  UBHA_23 U3 (C[24], S[23], Z[23], X[23]);
  UBCON_25_24 U4 (S[25:24], Z[25:24]);
endmodule

module CSA_25_0_24_3_27_000 (C, S, X, Y, Z);
  output [26:4] C;
  output [27:0] S;
  input [25:0] X;
  input [24:3] Y;
  input [27:8] Z;
  UBCON_2_0 U0 (S[2:0], X[2:0]);
  PureCSHA_7_3 U1 (C[8:4], S[7:3], Y[7:3], X[7:3]);
  PureCSA_24_8 U2 (C[25:9], S[24:8], Z[24:8], Y[24:8], X[24:8]);
  UBHA_25 U3 (C[26], S[25], Z[25], X[25]);
  UBCON_27_26 U4 (S[27:26], Z[27:26]);
endmodule

module CSA_27_0_26_4_29_000 (C, S, X, Y, Z);
  output [28:5] C;
  output [29:0] S;
  input [27:0] X;
  input [26:4] Y;
  input [29:10] Z;
  UBCON_3_0 U0 (S[3:0], X[3:0]);
  PureCSHA_9_4 U1 (C[10:5], S[9:4], Y[9:4], X[9:4]);
  PureCSA_26_10 U2 (C[27:11], S[26:10], Z[26:10], Y[26:10], X[26:10]);
  UBHA_27 U3 (C[28], S[27], Z[27], X[27]);
  UBCON_29_28 U4 (S[29:28], Z[29:28]);
endmodule

module CSA_29_0_28_5_30_000 (C, S, X, Y, Z);
  output [30:6] C;
  output [30:0] S;
  input [29:0] X;
  input [28:5] Y;
  input [30:12] Z;
  UBCON_4_0 U0 (S[4:0], X[4:0]);
  PureCSHA_11_5 U1 (C[12:6], S[11:5], Y[11:5], X[11:5]);
  PureCSA_28_12 U2 (C[29:13], S[28:12], Z[28:12], Y[28:12], X[28:12]);
  UBHA_29 U3 (C[30], S[29], Z[29], X[29]);
  UB1DCON_30 U4 (S[30], Z[30]);
endmodule

module CSA_30_0_30_6_16_000 (C, S, X, Y, Z);
  output [31:7] C;
  output [30:0] S;
  input [30:0] X;
  input [30:6] Y;
  input [16:14] Z;
  UBCON_5_0 U0 (S[5:0], X[5:0]);
  PureCSHA_13_6 U1 (C[14:7], S[13:6], Y[13:6], X[13:6]);
  PureCSA_16_14 U2 (C[17:15], S[16:14], Z[16:14], Y[16:14], X[16:14]);
  PureCSHA_30_17 U3 (C[31:18], S[30:17], X[30:17], Y[30:17]);
endmodule

module MultUB_R4B_ARY_CL000 (P, IN1, IN2);
  output [33:0] P;
  input [14:0] IN1;
  input [14:0] IN2;
  wire [17:0] PP0;
  wire [19:0] PP1;
  wire [21:2] PP2;
  wire [23:4] PP3;
  wire [25:6] PP4;
  wire [27:8] PP5;
  wire [29:10] PP6;
  wire [30:12] PP7;
  wire [16:14] PP8;
  wire [31:7] S1;
  wire [30:0] S2;
  wire [32:0] UP;
  UBR4BPPG_14_0_14_000 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, IN1, IN2);
  UBARYACC_17_0_19_000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  UBCLA_31_7_30_0 U2 (UP, S1, S2);
  UBTCCONV31_32_0 U3 (P, UP);
endmodule

module PureCSA_16_14 (C, S, X, Y, Z);
  output [17:15] C;
  output [16:14] S;
  input [16:14] X;
  input [16:14] Y;
  input [16:14] Z;
  UBFA_14 U0 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U1 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U2 (C[17], S[16], X[16], Y[16], Z[16]);
endmodule

module PureCSA_17_2 (C, S, X, Y, Z);
  output [18:3] C;
  output [17:2] S;
  input [17:2] X;
  input [17:2] Y;
  input [17:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
  UBFA_4 U2 (C[5], S[4], X[4], Y[4], Z[4]);
  UBFA_5 U3 (C[6], S[5], X[5], Y[5], Z[5]);
  UBFA_6 U4 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U5 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U6 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U7 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U8 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U9 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U10 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U11 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U12 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U13 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U14 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U15 (C[18], S[17], X[17], Y[17], Z[17]);
endmodule

module PureCSA_20_4 (C, S, X, Y, Z);
  output [21:5] C;
  output [20:4] S;
  input [20:4] X;
  input [20:4] Y;
  input [20:4] Z;
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
  UBFA_16 U12 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U13 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U14 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U15 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U16 (C[21], S[20], X[20], Y[20], Z[20]);
endmodule

module PureCSA_22_6 (C, S, X, Y, Z);
  output [23:7] C;
  output [22:6] S;
  input [22:6] X;
  input [22:6] Y;
  input [22:6] Z;
  UBFA_6 U0 (C[7], S[6], X[6], Y[6], Z[6]);
  UBFA_7 U1 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U2 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U3 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U4 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U5 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U6 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U7 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U8 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U9 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U10 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U11 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U12 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U13 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U14 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U15 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U16 (C[23], S[22], X[22], Y[22], Z[22]);
endmodule

module PureCSA_24_8 (C, S, X, Y, Z);
  output [25:9] C;
  output [24:8] S;
  input [24:8] X;
  input [24:8] Y;
  input [24:8] Z;
  UBFA_8 U0 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U1 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U2 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U3 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U4 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U5 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U6 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U7 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U8 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U9 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U10 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U11 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U12 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U13 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U14 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U15 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U16 (C[25], S[24], X[24], Y[24], Z[24]);
endmodule

module PureCSA_26_10 (C, S, X, Y, Z);
  output [27:11] C;
  output [26:10] S;
  input [26:10] X;
  input [26:10] Y;
  input [26:10] Z;
  UBFA_10 U0 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U1 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U2 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U3 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U4 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U5 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U6 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U7 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U8 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U9 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U10 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U11 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U12 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U13 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U14 (C[25], S[24], X[24], Y[24], Z[24]);
  UBFA_25 U15 (C[26], S[25], X[25], Y[25], Z[25]);
  UBFA_26 U16 (C[27], S[26], X[26], Y[26], Z[26]);
endmodule

module PureCSA_28_12 (C, S, X, Y, Z);
  output [29:13] C;
  output [28:12] S;
  input [28:12] X;
  input [28:12] Y;
  input [28:12] Z;
  UBFA_12 U0 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U1 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U2 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U3 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U4 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U5 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U6 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U7 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U8 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U9 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U10 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U11 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U12 (C[25], S[24], X[24], Y[24], Z[24]);
  UBFA_25 U13 (C[26], S[25], X[25], Y[25], Z[25]);
  UBFA_26 U14 (C[27], S[26], X[26], Y[26], Z[26]);
  UBFA_27 U15 (C[28], S[27], X[27], Y[27], Z[27]);
  UBFA_28 U16 (C[29], S[28], X[28], Y[28], Z[28]);
endmodule

module PureCSHA_11_5 (C, S, X, Y);
  output [12:6] C;
  output [11:5] S;
  input [11:5] X;
  input [11:5] Y;
  UBHA_5 U0 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U1 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U2 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U3 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U4 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U5 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U6 (C[12], S[11], X[11], Y[11]);
endmodule

module PureCSHA_13_6 (C, S, X, Y);
  output [14:7] C;
  output [13:6] S;
  input [13:6] X;
  input [13:6] Y;
  UBHA_6 U0 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U1 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U2 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U3 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U4 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U5 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U6 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U7 (C[14], S[13], X[13], Y[13]);
endmodule

module PureCSHA_19_18 (C, S, X, Y);
  output [20:19] C;
  output [19:18] S;
  input [19:18] X;
  input [19:18] Y;
  UBHA_18 U0 (C[19], S[18], X[18], Y[18]);
  UBHA_19 U1 (C[20], S[19], X[19], Y[19]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_30_17 (C, S, X, Y);
  output [31:18] C;
  output [30:17] S;
  input [30:17] X;
  input [30:17] Y;
  UBHA_17 U0 (C[18], S[17], X[17], Y[17]);
  UBHA_18 U1 (C[19], S[18], X[18], Y[18]);
  UBHA_19 U2 (C[20], S[19], X[19], Y[19]);
  UBHA_20 U3 (C[21], S[20], X[20], Y[20]);
  UBHA_21 U4 (C[22], S[21], X[21], Y[21]);
  UBHA_22 U5 (C[23], S[22], X[22], Y[22]);
  UBHA_23 U6 (C[24], S[23], X[23], Y[23]);
  UBHA_24 U7 (C[25], S[24], X[24], Y[24]);
  UBHA_25 U8 (C[26], S[25], X[25], Y[25]);
  UBHA_26 U9 (C[27], S[26], X[26], Y[26]);
  UBHA_27 U10 (C[28], S[27], X[27], Y[27]);
  UBHA_28 U11 (C[29], S[28], X[28], Y[28]);
  UBHA_29 U12 (C[30], S[29], X[29], Y[29]);
  UBHA_30 U13 (C[31], S[30], X[30], Y[30]);
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

module PureCSHA_7_3 (C, S, X, Y);
  output [8:4] C;
  output [7:3] S;
  input [7:3] X;
  input [7:3] Y;
  UBHA_3 U0 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U1 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U2 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U3 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U4 (C[8], S[7], X[7], Y[7]);
endmodule

module PureCSHA_9_4 (C, S, X, Y);
  output [10:5] C;
  output [9:4] S;
  input [9:4] X;
  input [9:4] Y;
  UBHA_4 U0 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U1 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U2 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U3 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U4 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U5 (C[10], S[9], X[9], Y[9]);
endmodule

module TCU4VPPG_15_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [15:0] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [15:1] P;
  U4DPPGL_0_0 U0 (P[1], O_R[0], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O_R[1], IN1_R[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O_R[2], IN1_R[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O_R[3], IN1_R[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O_R[4], IN1_R[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O_R[5], IN1_R[5], U__d1, U__d0, P[5]);
  U4DPPG_6_0 U6 (P[7], O_R[6], IN1_R[6], U__d1, U__d0, P[6]);
  U4DPPG_7_0 U7 (P[8], O_R[7], IN1_R[7], U__d1, U__d0, P[7]);
  U4DPPG_8_0 U8 (P[9], O_R[8], IN1_R[8], U__d1, U__d0, P[8]);
  U4DPPG_9_0 U9 (P[10], O_R[9], IN1_R[9], U__d1, U__d0, P[9]);
  U4DPPG_10_0 U10 (P[11], O_R[10], IN1_R[10], U__d1, U__d0, P[10]);
  U4DPPG_11_0 U11 (P[12], O_R[11], IN1_R[11], U__d1, U__d0, P[11]);
  U4DPPG_12_0 U12 (P[13], O_R[12], IN1_R[12], U__d1, U__d0, P[12]);
  U4DPPG_13_0 U13 (P[14], O_R[13], IN1_R[13], U__d1, U__d0, P[13]);
  U4DPPG_14_0 U14 (P[15], O_R[14], IN1_R[14], U__d1, U__d0, P[14]);
  U4DPPGH_15_0 U15 (O_T, O_R[15], IN1_T, U__d1, U__d0, P[15]);
endmodule

module TCU4VPPG_15_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [17:2] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [17:3] P;
  U4DPPGL_0_1 U0 (P[3], O_R[2], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O_R[3], IN1_R[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O_R[4], IN1_R[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O_R[5], IN1_R[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O_R[6], IN1_R[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O_R[7], IN1_R[5], U__d1, U__d0, P[7]);
  U4DPPG_6_1 U6 (P[9], O_R[8], IN1_R[6], U__d1, U__d0, P[8]);
  U4DPPG_7_1 U7 (P[10], O_R[9], IN1_R[7], U__d1, U__d0, P[9]);
  U4DPPG_8_1 U8 (P[11], O_R[10], IN1_R[8], U__d1, U__d0, P[10]);
  U4DPPG_9_1 U9 (P[12], O_R[11], IN1_R[9], U__d1, U__d0, P[11]);
  U4DPPG_10_1 U10 (P[13], O_R[12], IN1_R[10], U__d1, U__d0, P[12]);
  U4DPPG_11_1 U11 (P[14], O_R[13], IN1_R[11], U__d1, U__d0, P[13]);
  U4DPPG_12_1 U12 (P[15], O_R[14], IN1_R[12], U__d1, U__d0, P[14]);
  U4DPPG_13_1 U13 (P[16], O_R[15], IN1_R[13], U__d1, U__d0, P[15]);
  U4DPPG_14_1 U14 (P[17], O_R[16], IN1_R[14], U__d1, U__d0, P[16]);
  U4DPPGH_15_1 U15 (O_T, O_R[17], IN1_T, U__d1, U__d0, P[17]);
endmodule

module TCU4VPPG_15_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [19:4] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [19:5] P;
  U4DPPGL_0_2 U0 (P[5], O_R[4], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O_R[5], IN1_R[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O_R[6], IN1_R[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O_R[7], IN1_R[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O_R[8], IN1_R[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O_R[9], IN1_R[5], U__d1, U__d0, P[9]);
  U4DPPG_6_2 U6 (P[11], O_R[10], IN1_R[6], U__d1, U__d0, P[10]);
  U4DPPG_7_2 U7 (P[12], O_R[11], IN1_R[7], U__d1, U__d0, P[11]);
  U4DPPG_8_2 U8 (P[13], O_R[12], IN1_R[8], U__d1, U__d0, P[12]);
  U4DPPG_9_2 U9 (P[14], O_R[13], IN1_R[9], U__d1, U__d0, P[13]);
  U4DPPG_10_2 U10 (P[15], O_R[14], IN1_R[10], U__d1, U__d0, P[14]);
  U4DPPG_11_2 U11 (P[16], O_R[15], IN1_R[11], U__d1, U__d0, P[15]);
  U4DPPG_12_2 U12 (P[17], O_R[16], IN1_R[12], U__d1, U__d0, P[16]);
  U4DPPG_13_2 U13 (P[18], O_R[17], IN1_R[13], U__d1, U__d0, P[17]);
  U4DPPG_14_2 U14 (P[19], O_R[18], IN1_R[14], U__d1, U__d0, P[18]);
  U4DPPGH_15_2 U15 (O_T, O_R[19], IN1_T, U__d1, U__d0, P[19]);
endmodule

module TCU4VPPG_15_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [21:6] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [21:7] P;
  U4DPPGL_0_3 U0 (P[7], O_R[6], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O_R[7], IN1_R[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O_R[8], IN1_R[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O_R[9], IN1_R[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O_R[10], IN1_R[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O_R[11], IN1_R[5], U__d1, U__d0, P[11]);
  U4DPPG_6_3 U6 (P[13], O_R[12], IN1_R[6], U__d1, U__d0, P[12]);
  U4DPPG_7_3 U7 (P[14], O_R[13], IN1_R[7], U__d1, U__d0, P[13]);
  U4DPPG_8_3 U8 (P[15], O_R[14], IN1_R[8], U__d1, U__d0, P[14]);
  U4DPPG_9_3 U9 (P[16], O_R[15], IN1_R[9], U__d1, U__d0, P[15]);
  U4DPPG_10_3 U10 (P[17], O_R[16], IN1_R[10], U__d1, U__d0, P[16]);
  U4DPPG_11_3 U11 (P[18], O_R[17], IN1_R[11], U__d1, U__d0, P[17]);
  U4DPPG_12_3 U12 (P[19], O_R[18], IN1_R[12], U__d1, U__d0, P[18]);
  U4DPPG_13_3 U13 (P[20], O_R[19], IN1_R[13], U__d1, U__d0, P[19]);
  U4DPPG_14_3 U14 (P[21], O_R[20], IN1_R[14], U__d1, U__d0, P[20]);
  U4DPPGH_15_3 U15 (O_T, O_R[21], IN1_T, U__d1, U__d0, P[21]);
endmodule

module TCU4VPPG_15_0_4 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [23:8] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [23:9] P;
  U4DPPGL_0_4 U0 (P[9], O_R[8], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_4 U1 (P[10], O_R[9], IN1_R[1], U__d1, U__d0, P[9]);
  U4DPPG_2_4 U2 (P[11], O_R[10], IN1_R[2], U__d1, U__d0, P[10]);
  U4DPPG_3_4 U3 (P[12], O_R[11], IN1_R[3], U__d1, U__d0, P[11]);
  U4DPPG_4_4 U4 (P[13], O_R[12], IN1_R[4], U__d1, U__d0, P[12]);
  U4DPPG_5_4 U5 (P[14], O_R[13], IN1_R[5], U__d1, U__d0, P[13]);
  U4DPPG_6_4 U6 (P[15], O_R[14], IN1_R[6], U__d1, U__d0, P[14]);
  U4DPPG_7_4 U7 (P[16], O_R[15], IN1_R[7], U__d1, U__d0, P[15]);
  U4DPPG_8_4 U8 (P[17], O_R[16], IN1_R[8], U__d1, U__d0, P[16]);
  U4DPPG_9_4 U9 (P[18], O_R[17], IN1_R[9], U__d1, U__d0, P[17]);
  U4DPPG_10_4 U10 (P[19], O_R[18], IN1_R[10], U__d1, U__d0, P[18]);
  U4DPPG_11_4 U11 (P[20], O_R[19], IN1_R[11], U__d1, U__d0, P[19]);
  U4DPPG_12_4 U12 (P[21], O_R[20], IN1_R[12], U__d1, U__d0, P[20]);
  U4DPPG_13_4 U13 (P[22], O_R[21], IN1_R[13], U__d1, U__d0, P[21]);
  U4DPPG_14_4 U14 (P[23], O_R[22], IN1_R[14], U__d1, U__d0, P[22]);
  U4DPPGH_15_4 U15 (O_T, O_R[23], IN1_T, U__d1, U__d0, P[23]);
endmodule

module TCU4VPPG_15_0_5 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [25:10] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [25:11] P;
  U4DPPGL_0_5 U0 (P[11], O_R[10], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_5 U1 (P[12], O_R[11], IN1_R[1], U__d1, U__d0, P[11]);
  U4DPPG_2_5 U2 (P[13], O_R[12], IN1_R[2], U__d1, U__d0, P[12]);
  U4DPPG_3_5 U3 (P[14], O_R[13], IN1_R[3], U__d1, U__d0, P[13]);
  U4DPPG_4_5 U4 (P[15], O_R[14], IN1_R[4], U__d1, U__d0, P[14]);
  U4DPPG_5_5 U5 (P[16], O_R[15], IN1_R[5], U__d1, U__d0, P[15]);
  U4DPPG_6_5 U6 (P[17], O_R[16], IN1_R[6], U__d1, U__d0, P[16]);
  U4DPPG_7_5 U7 (P[18], O_R[17], IN1_R[7], U__d1, U__d0, P[17]);
  U4DPPG_8_5 U8 (P[19], O_R[18], IN1_R[8], U__d1, U__d0, P[18]);
  U4DPPG_9_5 U9 (P[20], O_R[19], IN1_R[9], U__d1, U__d0, P[19]);
  U4DPPG_10_5 U10 (P[21], O_R[20], IN1_R[10], U__d1, U__d0, P[20]);
  U4DPPG_11_5 U11 (P[22], O_R[21], IN1_R[11], U__d1, U__d0, P[21]);
  U4DPPG_12_5 U12 (P[23], O_R[22], IN1_R[12], U__d1, U__d0, P[22]);
  U4DPPG_13_5 U13 (P[24], O_R[23], IN1_R[13], U__d1, U__d0, P[23]);
  U4DPPG_14_5 U14 (P[25], O_R[24], IN1_R[14], U__d1, U__d0, P[24]);
  U4DPPGH_15_5 U15 (O_T, O_R[25], IN1_T, U__d1, U__d0, P[25]);
endmodule

module TCU4VPPG_15_0_6 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [27:12] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [27:13] P;
  U4DPPGL_0_6 U0 (P[13], O_R[12], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_6 U1 (P[14], O_R[13], IN1_R[1], U__d1, U__d0, P[13]);
  U4DPPG_2_6 U2 (P[15], O_R[14], IN1_R[2], U__d1, U__d0, P[14]);
  U4DPPG_3_6 U3 (P[16], O_R[15], IN1_R[3], U__d1, U__d0, P[15]);
  U4DPPG_4_6 U4 (P[17], O_R[16], IN1_R[4], U__d1, U__d0, P[16]);
  U4DPPG_5_6 U5 (P[18], O_R[17], IN1_R[5], U__d1, U__d0, P[17]);
  U4DPPG_6_6 U6 (P[19], O_R[18], IN1_R[6], U__d1, U__d0, P[18]);
  U4DPPG_7_6 U7 (P[20], O_R[19], IN1_R[7], U__d1, U__d0, P[19]);
  U4DPPG_8_6 U8 (P[21], O_R[20], IN1_R[8], U__d1, U__d0, P[20]);
  U4DPPG_9_6 U9 (P[22], O_R[21], IN1_R[9], U__d1, U__d0, P[21]);
  U4DPPG_10_6 U10 (P[23], O_R[22], IN1_R[10], U__d1, U__d0, P[22]);
  U4DPPG_11_6 U11 (P[24], O_R[23], IN1_R[11], U__d1, U__d0, P[23]);
  U4DPPG_12_6 U12 (P[25], O_R[24], IN1_R[12], U__d1, U__d0, P[24]);
  U4DPPG_13_6 U13 (P[26], O_R[25], IN1_R[13], U__d1, U__d0, P[25]);
  U4DPPG_14_6 U14 (P[27], O_R[26], IN1_R[14], U__d1, U__d0, P[26]);
  U4DPPGH_15_6 U15 (O_T, O_R[27], IN1_T, U__d1, U__d0, P[27]);
endmodule

module TCU4VPPG_15_0_7 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [29:14] O_R;
  output O_T;
  input [14:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [29:15] P;
  U4DPPGL_0_7 U0 (P[15], O_R[14], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_7 U1 (P[16], O_R[15], IN1_R[1], U__d1, U__d0, P[15]);
  U4DPPG_2_7 U2 (P[17], O_R[16], IN1_R[2], U__d1, U__d0, P[16]);
  U4DPPG_3_7 U3 (P[18], O_R[17], IN1_R[3], U__d1, U__d0, P[17]);
  U4DPPG_4_7 U4 (P[19], O_R[18], IN1_R[4], U__d1, U__d0, P[18]);
  U4DPPG_5_7 U5 (P[20], O_R[19], IN1_R[5], U__d1, U__d0, P[19]);
  U4DPPG_6_7 U6 (P[21], O_R[20], IN1_R[6], U__d1, U__d0, P[20]);
  U4DPPG_7_7 U7 (P[22], O_R[21], IN1_R[7], U__d1, U__d0, P[21]);
  U4DPPG_8_7 U8 (P[23], O_R[22], IN1_R[8], U__d1, U__d0, P[22]);
  U4DPPG_9_7 U9 (P[24], O_R[23], IN1_R[9], U__d1, U__d0, P[23]);
  U4DPPG_10_7 U10 (P[25], O_R[24], IN1_R[10], U__d1, U__d0, P[24]);
  U4DPPG_11_7 U11 (P[26], O_R[25], IN1_R[11], U__d1, U__d0, P[25]);
  U4DPPG_12_7 U12 (P[27], O_R[26], IN1_R[12], U__d1, U__d0, P[26]);
  U4DPPG_13_7 U13 (P[28], O_R[27], IN1_R[13], U__d1, U__d0, P[27]);
  U4DPPG_14_7 U14 (P[29], O_R[28], IN1_R[14], U__d1, U__d0, P[28]);
  U4DPPGH_15_7 U15 (O_T, O_R[29], IN1_T, U__d1, U__d0, P[29]);
endmodule

module TUBWCON_16_0 (O, I_T, I_R, S);
  output [16:0] O;
  input [15:0] I_R;
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
  BWCPP_9 U9 (O[9], I_R[9], S);
  BWCPP_10 U10 (O[10], I_R[10], S);
  BWCPP_11 U11 (O[11], I_R[11], S);
  BWCPP_12 U12 (O[12], I_R[12], S);
  BWCPP_13 U13 (O[13], I_R[13], S);
  BWCPP_14 U14 (O[14], I_R[14], S);
  BWCPP_15 U15 (O[15], I_R[15], S);
  BWCNP_16 U16 (O[16], I_T, S);
endmodule

module TUBWCON_18_2 (O, I_T, I_R, S);
  output [18:2] O;
  input [17:2] I_R;
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
  BWCPP_11 U9 (O[11], I_R[11], S);
  BWCPP_12 U10 (O[12], I_R[12], S);
  BWCPP_13 U11 (O[13], I_R[13], S);
  BWCPP_14 U12 (O[14], I_R[14], S);
  BWCPP_15 U13 (O[15], I_R[15], S);
  BWCPP_16 U14 (O[16], I_R[16], S);
  BWCPP_17 U15 (O[17], I_R[17], S);
  BWCNP_18 U16 (O[18], I_T, S);
endmodule

module TUBWCON_20_4 (O, I_T, I_R, S);
  output [20:4] O;
  input [19:4] I_R;
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
  BWCPP_13 U9 (O[13], I_R[13], S);
  BWCPP_14 U10 (O[14], I_R[14], S);
  BWCPP_15 U11 (O[15], I_R[15], S);
  BWCPP_16 U12 (O[16], I_R[16], S);
  BWCPP_17 U13 (O[17], I_R[17], S);
  BWCPP_18 U14 (O[18], I_R[18], S);
  BWCPP_19 U15 (O[19], I_R[19], S);
  BWCNP_20 U16 (O[20], I_T, S);
endmodule

module TUBWCON_22_6 (O, I_T, I_R, S);
  output [22:6] O;
  input [21:6] I_R;
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
  BWCPP_15 U9 (O[15], I_R[15], S);
  BWCPP_16 U10 (O[16], I_R[16], S);
  BWCPP_17 U11 (O[17], I_R[17], S);
  BWCPP_18 U12 (O[18], I_R[18], S);
  BWCPP_19 U13 (O[19], I_R[19], S);
  BWCPP_20 U14 (O[20], I_R[20], S);
  BWCPP_21 U15 (O[21], I_R[21], S);
  BWCNP_22 U16 (O[22], I_T, S);
endmodule

module TUBWCON_24_8 (O, I_T, I_R, S);
  output [24:8] O;
  input [23:8] I_R;
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
  BWCPP_17 U9 (O[17], I_R[17], S);
  BWCPP_18 U10 (O[18], I_R[18], S);
  BWCPP_19 U11 (O[19], I_R[19], S);
  BWCPP_20 U12 (O[20], I_R[20], S);
  BWCPP_21 U13 (O[21], I_R[21], S);
  BWCPP_22 U14 (O[22], I_R[22], S);
  BWCPP_23 U15 (O[23], I_R[23], S);
  BWCNP_24 U16 (O[24], I_T, S);
endmodule

module TUBWCON_26_10 (O, I_T, I_R, S);
  output [26:10] O;
  input [25:10] I_R;
  input I_T;
  input S;
  BWCPP_10 U0 (O[10], I_R[10], S);
  BWCPP_11 U1 (O[11], I_R[11], S);
  BWCPP_12 U2 (O[12], I_R[12], S);
  BWCPP_13 U3 (O[13], I_R[13], S);
  BWCPP_14 U4 (O[14], I_R[14], S);
  BWCPP_15 U5 (O[15], I_R[15], S);
  BWCPP_16 U6 (O[16], I_R[16], S);
  BWCPP_17 U7 (O[17], I_R[17], S);
  BWCPP_18 U8 (O[18], I_R[18], S);
  BWCPP_19 U9 (O[19], I_R[19], S);
  BWCPP_20 U10 (O[20], I_R[20], S);
  BWCPP_21 U11 (O[21], I_R[21], S);
  BWCPP_22 U12 (O[22], I_R[22], S);
  BWCPP_23 U13 (O[23], I_R[23], S);
  BWCPP_24 U14 (O[24], I_R[24], S);
  BWCPP_25 U15 (O[25], I_R[25], S);
  BWCNP_26 U16 (O[26], I_T, S);
endmodule

module TUBWCON_28_12 (O, I_T, I_R, S);
  output [28:12] O;
  input [27:12] I_R;
  input I_T;
  input S;
  BWCPP_12 U0 (O[12], I_R[12], S);
  BWCPP_13 U1 (O[13], I_R[13], S);
  BWCPP_14 U2 (O[14], I_R[14], S);
  BWCPP_15 U3 (O[15], I_R[15], S);
  BWCPP_16 U4 (O[16], I_R[16], S);
  BWCPP_17 U5 (O[17], I_R[17], S);
  BWCPP_18 U6 (O[18], I_R[18], S);
  BWCPP_19 U7 (O[19], I_R[19], S);
  BWCPP_20 U8 (O[20], I_R[20], S);
  BWCPP_21 U9 (O[21], I_R[21], S);
  BWCPP_22 U10 (O[22], I_R[22], S);
  BWCPP_23 U11 (O[23], I_R[23], S);
  BWCPP_24 U12 (O[24], I_R[24], S);
  BWCPP_25 U13 (O[25], I_R[25], S);
  BWCPP_26 U14 (O[26], I_R[26], S);
  BWCPP_27 U15 (O[27], I_R[27], S);
  BWCNP_28 U16 (O[28], I_T, S);
endmodule

module TUBWCON_30_14 (O, I_T, I_R, S);
  output [30:14] O;
  input [29:14] I_R;
  input I_T;
  input S;
  BWCPP_14 U0 (O[14], I_R[14], S);
  BWCPP_15 U1 (O[15], I_R[15], S);
  BWCPP_16 U2 (O[16], I_R[16], S);
  BWCPP_17 U3 (O[17], I_R[17], S);
  BWCPP_18 U4 (O[18], I_R[18], S);
  BWCPP_19 U5 (O[19], I_R[19], S);
  BWCPP_20 U6 (O[20], I_R[20], S);
  BWCPP_21 U7 (O[21], I_R[21], S);
  BWCPP_22 U8 (O[22], I_R[22], S);
  BWCPP_23 U9 (O[23], I_R[23], S);
  BWCPP_24 U10 (O[24], I_R[24], S);
  BWCPP_25 U11 (O[25], I_R[25], S);
  BWCPP_26 U12 (O[26], I_R[26], S);
  BWCPP_27 U13 (O[27], I_R[27], S);
  BWCPP_28 U14 (O[28], I_R[28], S);
  BWCPP_29 U15 (O[29], I_R[29], S);
  BWCNP_30 U16 (O[30], I_T, S);
endmodule

module UBARYACC_17_0_19_000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  output [31:7] S1;
  output [30:0] S2;
  input [17:0] PP0;
  input [19:0] PP1;
  input [21:2] PP2;
  input [23:4] PP3;
  input [25:6] PP4;
  input [27:8] PP5;
  input [29:10] PP6;
  input [30:12] PP7;
  input [16:14] PP8;
  wire [20:1] IC0;
  wire [22:2] IC1;
  wire [24:3] IC2;
  wire [26:4] IC3;
  wire [28:5] IC4;
  wire [30:6] IC5;
  wire [21:0] IS0;
  wire [23:0] IS1;
  wire [25:0] IS2;
  wire [27:0] IS3;
  wire [29:0] IS4;
  wire [30:0] IS5;
  CSA_17_0_19_0_21_000 U0 (IC0, IS0, PP0, PP1, PP2);
  CSA_21_0_20_1_23_000 U1 (IC1, IS1, IS0, IC0, PP3);
  CSA_23_0_22_2_25_000 U2 (IC2, IS2, IS1, IC1, PP4);
  CSA_25_0_24_3_27_000 U3 (IC3, IS3, IS2, IC2, PP5);
  CSA_27_0_26_4_29_000 U4 (IC4, IS4, IS3, IC3, PP6);
  CSA_29_0_28_5_30_000 U5 (IC5, IS5, IS4, IC4, PP7);
  CSA_30_0_30_6_16_000 U6 (S1, S2, IS5, IC5, PP8);
endmodule

module UBCLA_31_7_30_0 (S, X, Y);
  output [32:0] S;
  input [31:7] X;
  input [30:0] Y;
  wire [31:7] Z;
  UBExtender_30_7_3000 U0 (Z[31:7], Y[30:7]);
  UBPureCLA_31_7 U1 (S[32:7], X[31:7], Z[31:7]);
  UBCON_6_0 U2 (S[6:0], Y[6:0]);
endmodule

module UBCMBIN_16_16_14_000 (O, IN0, IN1);
  output [16:14] O;
  input IN0;
  input IN1;
  UB1DCON_16 U0 (O[16], IN0);
  UBZero_15_15 U1 (O[15]);
  UB1DCON_14 U2 (O[14], IN1);
endmodule

module UBCMBIN_17_17_16_000 (O, IN0, IN1);
  output [17:0] O;
  input IN0;
  input [16:0] IN1;
  UB1DCON_17 U0 (O[17], IN0);
  UBCON_16_0 U1 (O[16:0], IN1);
endmodule

module UBCMBIN_19_19_18_000 (O, IN0, IN1, IN2);
  output [19:0] O;
  input IN0;
  input [18:2] IN1;
  input IN2;
  UB1DCON_19 U0 (O[19], IN0);
  UBCON_18_2 U1 (O[18:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_21_21_20_000 (O, IN0, IN1, IN2);
  output [21:2] O;
  input IN0;
  input [20:4] IN1;
  input IN2;
  UB1DCON_21 U0 (O[21], IN0);
  UBCON_20_4 U1 (O[20:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_23_23_22_000 (O, IN0, IN1, IN2);
  output [23:4] O;
  input IN0;
  input [22:6] IN1;
  input IN2;
  UB1DCON_23 U0 (O[23], IN0);
  UBCON_22_6 U1 (O[22:6], IN1);
  UBZero_5_5 U2 (O[5]);
  UB1DCON_4 U3 (O[4], IN2);
endmodule

module UBCMBIN_25_25_24_000 (O, IN0, IN1, IN2);
  output [25:6] O;
  input IN0;
  input [24:8] IN1;
  input IN2;
  UB1DCON_25 U0 (O[25], IN0);
  UBCON_24_8 U1 (O[24:8], IN1);
  UBZero_7_7 U2 (O[7]);
  UB1DCON_6 U3 (O[6], IN2);
endmodule

module UBCMBIN_27_27_26_000 (O, IN0, IN1, IN2);
  output [27:8] O;
  input IN0;
  input [26:10] IN1;
  input IN2;
  UB1DCON_27 U0 (O[27], IN0);
  UBCON_26_10 U1 (O[26:10], IN1);
  UBZero_9_9 U2 (O[9]);
  UB1DCON_8 U3 (O[8], IN2);
endmodule

module UBCMBIN_29_29_28_000 (O, IN0, IN1, IN2);
  output [29:10] O;
  input IN0;
  input [28:12] IN1;
  input IN2;
  UB1DCON_29 U0 (O[29], IN0);
  UBCON_28_12 U1 (O[28:12], IN1);
  UBZero_11_11 U2 (O[11]);
  UB1DCON_10 U3 (O[10], IN2);
endmodule

module UBCMBIN_30_14_12_000 (O, IN0, IN1);
  output [30:12] O;
  input [30:14] IN0;
  input IN1;
  UBCON_30_14 U0 (O[30:14], IN0);
  UBZero_13_13 U1 (O[13]);
  UB1DCON_12 U2 (O[12], IN1);
endmodule

module UBCON_16_0 (O, I);
  output [16:0] O;
  input [16:0] I;
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
  UB1DCON_16 U16 (O[16], I[16]);
endmodule

module UBCON_18_2 (O, I);
  output [18:2] O;
  input [18:2] I;
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
  UB1DCON_15 U13 (O[15], I[15]);
  UB1DCON_16 U14 (O[16], I[16]);
  UB1DCON_17 U15 (O[17], I[17]);
  UB1DCON_18 U16 (O[18], I[18]);
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_20_4 (O, I);
  output [20:4] O;
  input [20:4] I;
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
  UB1DCON_17 U13 (O[17], I[17]);
  UB1DCON_18 U14 (O[18], I[18]);
  UB1DCON_19 U15 (O[19], I[19]);
  UB1DCON_20 U16 (O[20], I[20]);
endmodule

module UBCON_21_20 (O, I);
  output [21:20] O;
  input [21:20] I;
  UB1DCON_20 U0 (O[20], I[20]);
  UB1DCON_21 U1 (O[21], I[21]);
endmodule

module UBCON_22_6 (O, I);
  output [22:6] O;
  input [22:6] I;
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
  UB1DCON_18 U12 (O[18], I[18]);
  UB1DCON_19 U13 (O[19], I[19]);
  UB1DCON_20 U14 (O[20], I[20]);
  UB1DCON_21 U15 (O[21], I[21]);
  UB1DCON_22 U16 (O[22], I[22]);
endmodule

module UBCON_23_22 (O, I);
  output [23:22] O;
  input [23:22] I;
  UB1DCON_22 U0 (O[22], I[22]);
  UB1DCON_23 U1 (O[23], I[23]);
endmodule

module UBCON_24_8 (O, I);
  output [24:8] O;
  input [24:8] I;
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
  UB1DCON_18 U10 (O[18], I[18]);
  UB1DCON_19 U11 (O[19], I[19]);
  UB1DCON_20 U12 (O[20], I[20]);
  UB1DCON_21 U13 (O[21], I[21]);
  UB1DCON_22 U14 (O[22], I[22]);
  UB1DCON_23 U15 (O[23], I[23]);
  UB1DCON_24 U16 (O[24], I[24]);
endmodule

module UBCON_25_24 (O, I);
  output [25:24] O;
  input [25:24] I;
  UB1DCON_24 U0 (O[24], I[24]);
  UB1DCON_25 U1 (O[25], I[25]);
endmodule

module UBCON_26_10 (O, I);
  output [26:10] O;
  input [26:10] I;
  UB1DCON_10 U0 (O[10], I[10]);
  UB1DCON_11 U1 (O[11], I[11]);
  UB1DCON_12 U2 (O[12], I[12]);
  UB1DCON_13 U3 (O[13], I[13]);
  UB1DCON_14 U4 (O[14], I[14]);
  UB1DCON_15 U5 (O[15], I[15]);
  UB1DCON_16 U6 (O[16], I[16]);
  UB1DCON_17 U7 (O[17], I[17]);
  UB1DCON_18 U8 (O[18], I[18]);
  UB1DCON_19 U9 (O[19], I[19]);
  UB1DCON_20 U10 (O[20], I[20]);
  UB1DCON_21 U11 (O[21], I[21]);
  UB1DCON_22 U12 (O[22], I[22]);
  UB1DCON_23 U13 (O[23], I[23]);
  UB1DCON_24 U14 (O[24], I[24]);
  UB1DCON_25 U15 (O[25], I[25]);
  UB1DCON_26 U16 (O[26], I[26]);
endmodule

module UBCON_27_26 (O, I);
  output [27:26] O;
  input [27:26] I;
  UB1DCON_26 U0 (O[26], I[26]);
  UB1DCON_27 U1 (O[27], I[27]);
endmodule

module UBCON_28_12 (O, I);
  output [28:12] O;
  input [28:12] I;
  UB1DCON_12 U0 (O[12], I[12]);
  UB1DCON_13 U1 (O[13], I[13]);
  UB1DCON_14 U2 (O[14], I[14]);
  UB1DCON_15 U3 (O[15], I[15]);
  UB1DCON_16 U4 (O[16], I[16]);
  UB1DCON_17 U5 (O[17], I[17]);
  UB1DCON_18 U6 (O[18], I[18]);
  UB1DCON_19 U7 (O[19], I[19]);
  UB1DCON_20 U8 (O[20], I[20]);
  UB1DCON_21 U9 (O[21], I[21]);
  UB1DCON_22 U10 (O[22], I[22]);
  UB1DCON_23 U11 (O[23], I[23]);
  UB1DCON_24 U12 (O[24], I[24]);
  UB1DCON_25 U13 (O[25], I[25]);
  UB1DCON_26 U14 (O[26], I[26]);
  UB1DCON_27 U15 (O[27], I[27]);
  UB1DCON_28 U16 (O[28], I[28]);
endmodule

module UBCON_29_28 (O, I);
  output [29:28] O;
  input [29:28] I;
  UB1DCON_28 U0 (O[28], I[28]);
  UB1DCON_29 U1 (O[29], I[29]);
endmodule

module UBCON_2_0 (O, I);
  output [2:0] O;
  input [2:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
endmodule

module UBCON_30_14 (O, I);
  output [30:14] O;
  input [30:14] I;
  UB1DCON_14 U0 (O[14], I[14]);
  UB1DCON_15 U1 (O[15], I[15]);
  UB1DCON_16 U2 (O[16], I[16]);
  UB1DCON_17 U3 (O[17], I[17]);
  UB1DCON_18 U4 (O[18], I[18]);
  UB1DCON_19 U5 (O[19], I[19]);
  UB1DCON_20 U6 (O[20], I[20]);
  UB1DCON_21 U7 (O[21], I[21]);
  UB1DCON_22 U8 (O[22], I[22]);
  UB1DCON_23 U9 (O[23], I[23]);
  UB1DCON_24 U10 (O[24], I[24]);
  UB1DCON_25 U11 (O[25], I[25]);
  UB1DCON_26 U12 (O[26], I[26]);
  UB1DCON_27 U13 (O[27], I[27]);
  UB1DCON_28 U14 (O[28], I[28]);
  UB1DCON_29 U15 (O[29], I[29]);
  UB1DCON_30 U16 (O[30], I[30]);
endmodule

module UBCON_30_7 (O, I);
  output [30:7] O;
  input [30:7] I;
  UB1DCON_7 U0 (O[7], I[7]);
  UB1DCON_8 U1 (O[8], I[8]);
  UB1DCON_9 U2 (O[9], I[9]);
  UB1DCON_10 U3 (O[10], I[10]);
  UB1DCON_11 U4 (O[11], I[11]);
  UB1DCON_12 U5 (O[12], I[12]);
  UB1DCON_13 U6 (O[13], I[13]);
  UB1DCON_14 U7 (O[14], I[14]);
  UB1DCON_15 U8 (O[15], I[15]);
  UB1DCON_16 U9 (O[16], I[16]);
  UB1DCON_17 U10 (O[17], I[17]);
  UB1DCON_18 U11 (O[18], I[18]);
  UB1DCON_19 U12 (O[19], I[19]);
  UB1DCON_20 U13 (O[20], I[20]);
  UB1DCON_21 U14 (O[21], I[21]);
  UB1DCON_22 U15 (O[22], I[22]);
  UB1DCON_23 U16 (O[23], I[23]);
  UB1DCON_24 U17 (O[24], I[24]);
  UB1DCON_25 U18 (O[25], I[25]);
  UB1DCON_26 U19 (O[26], I[26]);
  UB1DCON_27 U20 (O[27], I[27]);
  UB1DCON_28 U21 (O[28], I[28]);
  UB1DCON_29 U22 (O[29], I[29]);
  UB1DCON_30 U23 (O[30], I[30]);
endmodule

module UBCON_3_0 (O, I);
  output [3:0] O;
  input [3:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
endmodule

module UBCON_4_0 (O, I);
  output [4:0] O;
  input [4:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
endmodule

module UBCON_5_0 (O, I);
  output [5:0] O;
  input [5:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
endmodule

module UBCON_6_0 (O, I);
  output [6:0] O;
  input [6:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
  UB1DCON_4 U4 (O[4], I[4]);
  UB1DCON_5 U5 (O[5], I[5]);
  UB1DCON_6 U6 (O[6], I[6]);
endmodule

module UBExtender_30_7_3000 (O, I);
  output [31:7] O;
  input [30:7] I;
  UBCON_30_7 U0 (O[30:7], I[30:7]);
  UBZero_31_31 U1 (O[31]);
endmodule

module UBPureCLA_31_7 (S, X, Y);
  output [32:7] S;
  input [31:7] X;
  input [31:7] Y;
  wire C;
  UBPriCLA_31_7 U0 (S, X, Y, C);
  UBZero_7_7 U1 (C);
endmodule

module UBR4BE_14_0 (O__ds, O__d1, O__d0, I);
  output [7:0] O__ds, O__d1, O__d0;
  input [14:0] I;
  wire T;
  NUBZero_15_15 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEE_4 U5 (O__ds[4], O__d1[4], O__d0[4], I[9], I[8], I[7]);
  R4BEE_5 U6 (O__ds[5], O__d1[5], O__d0[5], I[11], I[10], I[9]);
  R4BEE_6 U7 (O__ds[6], O__d1[6], O__d0[6], I[13], I[12], I[11]);
  R4BEEH_7_3 U8 (O__ds[7], O__d1[7], O__d0[7], T, I[14], I[13]);
endmodule

module UBR4BPPG_14_0_14_000 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, IN1, IN2);
  output [17:0] PP0;
  output [19:0] PP1;
  output [21:2] PP2;
  output [23:4] PP3;
  output [25:6] PP4;
  output [27:8] PP5;
  output [29:10] PP6;
  output [30:12] PP7;
  output [16:14] PP8;
  input [14:0] IN1;
  input [14:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire B5;
  wire B6;
  wire B7;
  wire [7:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [16:0] PPT0;
  wire [18:2] PPT1;
  wire [20:4] PPT2;
  wire [22:6] PPT3;
  wire [24:8] PPT4;
  wire [26:10] PPT5;
  wire [28:12] PPT6;
  wire [30:14] PPT7;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  wire S5;
  wire S6;
  wire S7;
  UBR4BE_14_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_14_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_14_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_14_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_14_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_14_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBSD4VPPG_14_0_5 U6 (PPT5, S5, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBSD4VPPG_14_0_6 U7 (PPT6, S6, IN1, IN2SD__ds[6], IN2SD__d1[6], IN2SD__d0[6]);
  UBSD4VPPG_14_0_7 U8 (PPT7, S7, IN1, IN2SD__ds[7], IN2SD__d1[7], IN2SD__d0[7]);
  UBOne_17 U9 (B0);
  UBCMBIN_17_17_16_000 U10 (PP0, B0, PPT0);
  UBOne_19 U11 (B1);
  UBCMBIN_19_19_18_000 U12 (PP1, B1, PPT1, S0);
  UBOne_21 U13 (B2);
  UBCMBIN_21_21_20_000 U14 (PP2, B2, PPT2, S1);
  UBOne_23 U15 (B3);
  UBCMBIN_23_23_22_000 U16 (PP3, B3, PPT3, S2);
  UBOne_25 U17 (B4);
  UBCMBIN_25_25_24_000 U18 (PP4, B4, PPT4, S3);
  UBOne_27 U19 (B5);
  UBCMBIN_27_27_26_000 U20 (PP5, B5, PPT5, S4);
  UBOne_29 U21 (B6);
  UBCMBIN_29_29_28_000 U22 (PP6, B6, PPT6, S5);
  UBCMBIN_30_14_12_000 U23 (PP7, PPT7, S6);
  UBOne_16 U24 (B7);
  UBCMBIN_16_16_14_000 U25 (PP8, B7, S7);
endmodule

module UBSD4VPPG_14_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [16:0] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [15:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_16_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [18:2] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [17:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_18_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [20:4] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [19:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_20_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [22:6] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [21:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_22_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_4 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [24:8] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [23:8] W_R;
  wire W_T;
  SD41DDECON_4 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_4 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_24_8 U3 (PP, W_T, W_R, S);
  UBBBG_8 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_5 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [26:10] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [25:10] W_R;
  wire W_T;
  SD41DDECON_5 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_5 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_26_10 U3 (PP, W_T, W_R, S);
  UBBBG_10 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_6 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [28:12] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [27:12] W_R;
  wire W_T;
  SD41DDECON_6 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_6 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_28_12 U3 (PP, W_T, W_R, S);
  UBBBG_12 U4 (C, S);
endmodule

module UBSD4VPPG_14_0_7 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [30:14] PP;
  input [14:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [29:14] W_R;
  wire W_T;
  SD41DDECON_7 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_15_15 U1 (NZ);
  TCU4VPPG_15_0_7 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_30_14 U3 (PP, W_T, W_R, S);
  UBBBG_14 U4 (C, S);
endmodule

module UBTCCONV31_32_0 (O, I);
  output [33:0] O;
  input [32:0] I;
  UBTC1CON33_0 U0 (O[0], I[0]);
  UBTC1CON33_1 U1 (O[1], I[1]);
  UBTC1CON33_2 U2 (O[2], I[2]);
  UBTC1CON33_3 U3 (O[3], I[3]);
  UBTC1CON33_4 U4 (O[4], I[4]);
  UBTC1CON33_5 U5 (O[5], I[5]);
  UBTC1CON33_6 U6 (O[6], I[6]);
  UBTC1CON33_7 U7 (O[7], I[7]);
  UBTC1CON33_8 U8 (O[8], I[8]);
  UBTC1CON33_9 U9 (O[9], I[9]);
  UBTC1CON33_10 U10 (O[10], I[10]);
  UBTC1CON33_11 U11 (O[11], I[11]);
  UBTC1CON33_12 U12 (O[12], I[12]);
  UBTC1CON33_13 U13 (O[13], I[13]);
  UBTC1CON33_14 U14 (O[14], I[14]);
  UBTC1CON33_15 U15 (O[15], I[15]);
  UBTC1CON33_16 U16 (O[16], I[16]);
  UBTC1CON33_17 U17 (O[17], I[17]);
  UBTC1CON33_18 U18 (O[18], I[18]);
  UBTC1CON33_19 U19 (O[19], I[19]);
  UBTC1CON33_20 U20 (O[20], I[20]);
  UBTC1CON33_21 U21 (O[21], I[21]);
  UBTC1CON33_22 U22 (O[22], I[22]);
  UBTC1CON33_23 U23 (O[23], I[23]);
  UBTC1CON33_24 U24 (O[24], I[24]);
  UBTC1CON33_25 U25 (O[25], I[25]);
  UBTC1CON33_26 U26 (O[26], I[26]);
  UBTC1CON33_27 U27 (O[27], I[27]);
  UBTC1CON33_28 U28 (O[28], I[28]);
  UBTC1CON33_29 U29 (O[29], I[29]);
  UBTC1CON33_30 U30 (O[30], I[30]);
  UBTCTCONV_32_31 U31 (O[33:31], I[32:31]);
endmodule

