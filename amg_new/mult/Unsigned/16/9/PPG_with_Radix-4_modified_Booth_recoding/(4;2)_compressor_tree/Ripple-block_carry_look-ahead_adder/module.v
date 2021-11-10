/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_15_0_8000

  Number system: Unsigned binary
  Multiplicand length: 16
  Multiplier length: 9
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: (4;2) compressor tree
  Final stage addition: Ripple-block carry look-ahead adder
----------------------------------------------------------------------------*/

module NUBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
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

module R4BEEH_4_3(O_ds, O_d1, O_d0, I2, I1, I0);
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

module NUBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
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

module U4DPPG_15_0(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_0(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPG_15_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_17(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_18(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_19(O, I, S);
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

module U4DPPG_15_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_19(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_20(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_21(O, I, S);
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

module U4DPPG_15_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_3(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_21(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_22(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_23(O, I, S);
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

module U4DPPG_15_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_4(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_23(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_24(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_25(O, I, S);
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

module UBOne_18(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_18(O, I);
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

module UB1DCON_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBOne_20(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module UBOne_22(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UBOne_24(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UB1DCON_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UBOne_17(O);
  output O;
  assign O = 1;
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

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UB1B4_2CMP_4(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_5(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_6(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_7(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_8(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_9(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_10(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_11(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_12(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_13(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_14(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_15(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_16(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_17(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B4_2CMP_18(Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2 ^ IN3;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci ) | ( ~ W2 & IN3 );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B3_2CMP_19(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B3_2CMP_20(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
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

module UBHA_22(C, S, X, Y);
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

module UBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
endmodule

module UB1B3_2CMP_18(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B3_2CMP_21(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B3_2CMP_22(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
endmodule

module UB1B3_2CMP_23(Co, C, S, IN0, IN1, IN2, Ci);
  output C;
  output Co;
  output S;
  input Ci;
  input IN0;
  input IN1;
  input IN2;
  wire W0;
  wire W1;
  wire W2;
  assign W0 = IN0 ^ IN1;
  assign W1 = IN2;
  assign W2 = W0 ^ W1;
  assign S = W2 ^ Ci;
  assign C = ( W2 & Ci );
  assign Co = ( W0 & IN2 ) | ( ~ W0 & IN0 );
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

module RCLAU_2(Go, Po, C, G, P, Cin);
  output [1:1] C;
  output Go;
  output Po;
  input Cin;
  input [1:0] G;
  input [1:0] P;
  assign Po = P[0] & P[1];
  assign Go = G[1] | ( P[1] & G[0] );
  assign C[1] = G[0] | ( P[0] & Cin );
endmodule

module PriMRCLA_25_2(S, X, Y, Cin);
  output [26:2] S;
  input Cin;
  input [25:2] X;
  input [25:2] Y;
  wire [5:0] C1;
  wire [1:0] C2;
  wire [5:0] G1;
  wire [1:0] G2;
  wire [5:0] P1;
  wire [1:0] P2;
  assign C1[0] = C2[0];
  assign C1[4] = C2[1];
  assign C2[0] = Cin;
  assign C2[1] = G2[0] | ( P2[0] & C2[0] );
  assign S[26] = G2[1] | ( P2[1] & C2[1] );
  RCLAlU_4 U0 (G1[0], P1[0], S[5:2], X[5:2], Y[5:2], C1[0]);
  RCLAlU_4 U1 (G1[1], P1[1], S[9:6], X[9:6], Y[9:6], C1[1]);
  RCLAlU_4 U2 (G1[2], P1[2], S[13:10], X[13:10], Y[13:10], C1[2]);
  RCLAlU_4 U3 (G1[3], P1[3], S[17:14], X[17:14], Y[17:14], C1[3]);
  RCLAlU_4 U4 (G1[4], P1[4], S[21:18], X[21:18], Y[21:18], C1[4]);
  RCLAlU_4 U5 (G1[5], P1[5], S[25:22], X[25:22], Y[25:22], C1[5]);
  RCLAU_4 U6 (G2[0], P2[0], C1[3:1], G1[3:0], P1[3:0], C2[0]);
  RCLAU_2 U7 (G2[1], P2[1], C1[5], G1[5:4], P1[5:4], C2[1]);
endmodule

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module UBTC1CON26_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON26_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_26_26(O, I);
  output [26:26] O;
  input [26:26] I;
  assign O = ~ I;
endmodule

module Multiplier_15_0_8000(P, IN1, IN2);
  output [24:0] P;
  input [15:0] IN1;
  input [8:0] IN2;
  wire [26:0] W;
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
  MultUB_R4B_C42_RC000 U0 (W, IN1, IN2);
endmodule

module C42TR_18_0_20_0_2000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [25:2] S1;
  output [25:0] S2;
  input [18:0] PP0;
  input [20:0] PP1;
  input [22:2] PP2;
  input [24:4] PP3;
  input [25:6] PP4;
  input [17:8] PP5;
  wire [24:0] W1_0;
  wire [23:1] W1_1;
  UB4_2Comp_18_0_20000 U0 (W1_1[23:1], W1_0[24:0], PP0, PP1, PP2, PP3);
  UB4_2Comp_24_0_23000 U1 (S1[25:2], S2[25:0], W1_0[24:0], W1_1[23:1], PP4, PP5);
endmodule

module MultUB_R4B_C42_RC000 (P, IN1, IN2);
  output [26:0] P;
  input [15:0] IN1;
  input [8:0] IN2;
  wire [18:0] PP0;
  wire [20:0] PP1;
  wire [22:2] PP2;
  wire [24:4] PP3;
  wire [25:6] PP4;
  wire [17:8] PP5;
  wire [25:2] S1;
  wire [25:0] S2;
  wire [26:0] UP;
  UBR4BPPG_15_0_8_0 U0 (PP0, PP1, PP2, PP3, PP4, PP5, IN1, IN2);
  C42TR_18_0_20_0_2000 U1 (S1[25:2], S2[25:0], PP0, PP1, PP2, PP3, PP4, PP5);
  UBRCL_25_2_25_0 U2 (UP, S1[25:2], S2[25:0]);
  UBTCCONV26_26_0 U3 (P, UP);
endmodule

module PureCSA_3_2 (C, S, X, Y, Z);
  output [4:3] C;
  output [3:2] S;
  input [3:2] X;
  input [3:2] Y;
  input [3:2] Z;
  UBFA_2 U0 (C[3], S[2], X[2], Y[2], Z[2]);
  UBFA_3 U1 (C[4], S[3], X[3], Y[3], Z[3]);
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

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_5_1 (C, S, X, Y);
  output [6:2] C;
  output [5:1] S;
  input [5:1] X;
  input [5:1] Y;
  UBHA_1 U0 (C[2], S[1], X[1], Y[1]);
  UBHA_2 U1 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U2 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U3 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U4 (C[6], S[5], X[5], Y[5]);
endmodule

module TCU4VPPG_16_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [16:0] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [16:1] P;
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
  U4DPPG_15_0 U15 (P[16], O_R[15], IN1_R[15], U__d1, U__d0, P[15]);
  U4DPPGH_16_0 U16 (O_T, O_R[16], IN1_T, U__d1, U__d0, P[16]);
endmodule

module TCU4VPPG_16_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [18:2] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [18:3] P;
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
  U4DPPG_15_1 U15 (P[18], O_R[17], IN1_R[15], U__d1, U__d0, P[17]);
  U4DPPGH_16_1 U16 (O_T, O_R[18], IN1_T, U__d1, U__d0, P[18]);
endmodule

module TCU4VPPG_16_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [20:4] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [20:5] P;
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
  U4DPPG_15_2 U15 (P[20], O_R[19], IN1_R[15], U__d1, U__d0, P[19]);
  U4DPPGH_16_2 U16 (O_T, O_R[20], IN1_T, U__d1, U__d0, P[20]);
endmodule

module TCU4VPPG_16_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [22:6] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [22:7] P;
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
  U4DPPG_15_3 U15 (P[22], O_R[21], IN1_R[15], U__d1, U__d0, P[21]);
  U4DPPGH_16_3 U16 (O_T, O_R[22], IN1_T, U__d1, U__d0, P[22]);
endmodule

module TCU4VPPG_16_0_4 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [24:8] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [24:9] P;
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
  U4DPPG_15_4 U15 (P[24], O_R[23], IN1_R[15], U__d1, U__d0, P[23]);
  U4DPPGH_16_4 U16 (O_T, O_R[24], IN1_T, U__d1, U__d0, P[24]);
endmodule

module TUBWCON_17_0 (O, I_T, I_R, S);
  output [17:0] O;
  input [16:0] I_R;
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
  BWCPP_16 U16 (O[16], I_R[16], S);
  BWCNP_17 U17 (O[17], I_T, S);
endmodule

module TUBWCON_19_2 (O, I_T, I_R, S);
  output [19:2] O;
  input [18:2] I_R;
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
  BWCPP_18 U16 (O[18], I_R[18], S);
  BWCNP_19 U17 (O[19], I_T, S);
endmodule

module TUBWCON_21_4 (O, I_T, I_R, S);
  output [21:4] O;
  input [20:4] I_R;
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
  BWCPP_20 U16 (O[20], I_R[20], S);
  BWCNP_21 U17 (O[21], I_T, S);
endmodule

module TUBWCON_23_6 (O, I_T, I_R, S);
  output [23:6] O;
  input [22:6] I_R;
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
  BWCPP_22 U16 (O[22], I_R[22], S);
  BWCNP_23 U17 (O[23], I_T, S);
endmodule

module TUBWCON_25_8 (O, I_T, I_R, S);
  output [25:8] O;
  input [24:8] I_R;
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
  BWCPP_24 U16 (O[24], I_R[24], S);
  BWCNP_25 U17 (O[25], I_T, S);
endmodule

module UB4_2Comp_18_0_20000 (C, S, IN0, IN1, IN2, IN3);
  output [23:1] C;
  output [24:0] S;
  input [18:0] IN0;
  input [20:0] IN1;
  input [22:2] IN2;
  input [24:4] IN3;
  wire W0;
  wire W1;
  wire WZ;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], IN1[1:0], IN0[1:0]);
  PureCSA_3_2 U1 (C[4:3], S[3:2], IN2[3:2], IN1[3:2], IN0[3:2]);
  UBZero_4_4 U2 (WZ);
  UBPure4_2CMP_18_4 U3 (W0, C[19:5], S[18:4], IN3[18:4], IN2[18:4], IN1[18:4], IN0[18:4], WZ);
  UBPure3_2CMP_20_1000 U4 (W1, C[21:20], S[20:19], IN3[20:19], IN2[20:19], IN1[20:19], W0);
  UBFA_21 U5 (C[22], S[21], IN3[21], IN2[21], W1);
  UBHA_22 U6 (C[23], S[22], IN3[22], IN2[22]);
  UBCON_24_23 U7 (S[24:23], IN3[24:23]);
endmodule

module UB4_2Comp_24_0_23000 (C, S, IN0, IN1, IN2, IN3);
  output [25:2] C;
  output [25:0] S;
  input [24:0] IN0;
  input [23:1] IN1;
  input [25:6] IN2;
  input [17:8] IN3;
  wire W0;
  wire W1;
  wire WZ;
  UB1DCON_0 U0 (S[0], IN0[0]);
  PureCSHA_5_1 U1 (C[6:2], S[5:1], IN1[5:1], IN0[5:1]);
  PureCSA_7_6 U2 (C[8:7], S[7:6], IN2[7:6], IN1[7:6], IN0[7:6]);
  UBZero_8_8 U3 (WZ);
  UBPure4_2CMP_17_8 U4 (W0, C[18:9], S[17:8], IN3[17:8], IN2[17:8], IN1[17:8], IN0[17:8], WZ);
  UBPure3_2CMP_23_1000 U5 (W1, C[24:19], S[23:18], IN2[23:18], IN0[23:18], IN1[23:18], W0);
  UBFA_24 U6 (C[25], S[24], IN2[24], IN0[24], W1);
  UB1DCON_25 U7 (S[25], IN2[25]);
endmodule

module UBCMBIN_17_17_8_8 (O, IN0, IN1);
  output [17:8] O;
  input IN0;
  input IN1;
  UB1DCON_17 U0 (O[17], IN0);
  UBZero_16_9 U1 (O[16:9]);
  UB1DCON_8 U2 (O[8], IN1);
endmodule

module UBCMBIN_18_18_17_000 (O, IN0, IN1);
  output [18:0] O;
  input IN0;
  input [17:0] IN1;
  UB1DCON_18 U0 (O[18], IN0);
  UBCON_17_0 U1 (O[17:0], IN1);
endmodule

module UBCMBIN_20_20_19_000 (O, IN0, IN1, IN2);
  output [20:0] O;
  input IN0;
  input [19:2] IN1;
  input IN2;
  UB1DCON_20 U0 (O[20], IN0);
  UBCON_19_2 U1 (O[19:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_22_22_21_000 (O, IN0, IN1, IN2);
  output [22:2] O;
  input IN0;
  input [21:4] IN1;
  input IN2;
  UB1DCON_22 U0 (O[22], IN0);
  UBCON_21_4 U1 (O[21:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_24_24_23_000 (O, IN0, IN1, IN2);
  output [24:4] O;
  input IN0;
  input [23:6] IN1;
  input IN2;
  UB1DCON_24 U0 (O[24], IN0);
  UBCON_23_6 U1 (O[23:6], IN1);
  UBZero_5_5 U2 (O[5]);
  UB1DCON_4 U3 (O[4], IN2);
endmodule

module UBCMBIN_25_8_6_6 (O, IN0, IN1);
  output [25:6] O;
  input [25:8] IN0;
  input IN1;
  UBCON_25_8 U0 (O[25:8], IN0);
  UBZero_7_7 U1 (O[7]);
  UB1DCON_6 U2 (O[6], IN1);
endmodule

module UBCON_17_0 (O, I);
  output [17:0] O;
  input [17:0] I;
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
  UB1DCON_17 U17 (O[17], I[17]);
endmodule

module UBCON_19_2 (O, I);
  output [19:2] O;
  input [19:2] I;
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
  UB1DCON_19 U17 (O[19], I[19]);
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_21_4 (O, I);
  output [21:4] O;
  input [21:4] I;
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
  UB1DCON_21 U17 (O[21], I[21]);
endmodule

module UBCON_23_6 (O, I);
  output [23:6] O;
  input [23:6] I;
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
  UB1DCON_23 U17 (O[23], I[23]);
endmodule

module UBCON_24_23 (O, I);
  output [24:23] O;
  input [24:23] I;
  UB1DCON_23 U0 (O[23], I[23]);
  UB1DCON_24 U1 (O[24], I[24]);
endmodule

module UBCON_25_8 (O, I);
  output [25:8] O;
  input [25:8] I;
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
  UB1DCON_25 U17 (O[25], I[25]);
endmodule

module UBPure3_2CMP_20_1000 (Co, C, S, IN0, IN1, IN2, Ci);
  output [21:20] C;
  output Co;
  output [20:19] S;
  input Ci;
  input [20:19] IN0;
  input [20:19] IN1;
  input [20:19] IN2;
  wire W;
  UB1B3_2CMP_19 U0 (W, C[20], S[19], IN0[19], IN1[19], IN2[19], Ci);
  UB1B3_2CMP_20 U1 (Co, C[21], S[20], IN0[20], IN1[20], IN2[20], W);
endmodule

module UBPure3_2CMP_23_1000 (Co, C, S, IN0, IN1, IN2, Ci);
  output [24:19] C;
  output Co;
  output [23:18] S;
  input Ci;
  input [23:18] IN0;
  input [23:18] IN1;
  input [23:18] IN2;
  wire [23:19] W;
  UB1B3_2CMP_18 U0 (W[19], C[19], S[18], IN0[18], IN1[18], IN2[18], Ci);
  UB1B3_2CMP_19 U1 (W[20], C[20], S[19], IN0[19], IN1[19], IN2[19], W[19]);
  UB1B3_2CMP_20 U2 (W[21], C[21], S[20], IN0[20], IN1[20], IN2[20], W[20]);
  UB1B3_2CMP_21 U3 (W[22], C[22], S[21], IN0[21], IN1[21], IN2[21], W[21]);
  UB1B3_2CMP_22 U4 (W[23], C[23], S[22], IN0[22], IN1[22], IN2[22], W[22]);
  UB1B3_2CMP_23 U5 (Co, C[24], S[23], IN0[23], IN1[23], IN2[23], W[23]);
endmodule

module UBPure4_2CMP_17_8 (Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output [18:9] C;
  output Co;
  output [17:8] S;
  input Ci;
  input [17:8] IN0;
  input [17:8] IN1;
  input [17:8] IN2;
  input [17:8] IN3;
  wire [17:9] W;
  UB1B4_2CMP_8 U0 (W[9], C[9], S[8], IN0[8], IN1[8], IN2[8], IN3[8], Ci);
  UB1B4_2CMP_9 U1 (W[10], C[10], S[9], IN0[9], IN1[9], IN2[9], IN3[9], W[9]);
  UB1B4_2CMP_10 U2 (W[11], C[11], S[10], IN0[10], IN1[10], IN2[10], IN3[10], W[10]);
  UB1B4_2CMP_11 U3 (W[12], C[12], S[11], IN0[11], IN1[11], IN2[11], IN3[11], W[11]);
  UB1B4_2CMP_12 U4 (W[13], C[13], S[12], IN0[12], IN1[12], IN2[12], IN3[12], W[12]);
  UB1B4_2CMP_13 U5 (W[14], C[14], S[13], IN0[13], IN1[13], IN2[13], IN3[13], W[13]);
  UB1B4_2CMP_14 U6 (W[15], C[15], S[14], IN0[14], IN1[14], IN2[14], IN3[14], W[14]);
  UB1B4_2CMP_15 U7 (W[16], C[16], S[15], IN0[15], IN1[15], IN2[15], IN3[15], W[15]);
  UB1B4_2CMP_16 U8 (W[17], C[17], S[16], IN0[16], IN1[16], IN2[16], IN3[16], W[16]);
  UB1B4_2CMP_17 U9 (Co, C[18], S[17], IN0[17], IN1[17], IN2[17], IN3[17], W[17]);
endmodule

module UBPure4_2CMP_18_4 (Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output [19:5] C;
  output Co;
  output [18:4] S;
  input Ci;
  input [18:4] IN0;
  input [18:4] IN1;
  input [18:4] IN2;
  input [18:4] IN3;
  wire [18:5] W;
  UB1B4_2CMP_4 U0 (W[5], C[5], S[4], IN0[4], IN1[4], IN2[4], IN3[4], Ci);
  UB1B4_2CMP_5 U1 (W[6], C[6], S[5], IN0[5], IN1[5], IN2[5], IN3[5], W[5]);
  UB1B4_2CMP_6 U2 (W[7], C[7], S[6], IN0[6], IN1[6], IN2[6], IN3[6], W[6]);
  UB1B4_2CMP_7 U3 (W[8], C[8], S[7], IN0[7], IN1[7], IN2[7], IN3[7], W[7]);
  UB1B4_2CMP_8 U4 (W[9], C[9], S[8], IN0[8], IN1[8], IN2[8], IN3[8], W[8]);
  UB1B4_2CMP_9 U5 (W[10], C[10], S[9], IN0[9], IN1[9], IN2[9], IN3[9], W[9]);
  UB1B4_2CMP_10 U6 (W[11], C[11], S[10], IN0[10], IN1[10], IN2[10], IN3[10], W[10]);
  UB1B4_2CMP_11 U7 (W[12], C[12], S[11], IN0[11], IN1[11], IN2[11], IN3[11], W[11]);
  UB1B4_2CMP_12 U8 (W[13], C[13], S[12], IN0[12], IN1[12], IN2[12], IN3[12], W[12]);
  UB1B4_2CMP_13 U9 (W[14], C[14], S[13], IN0[13], IN1[13], IN2[13], IN3[13], W[13]);
  UB1B4_2CMP_14 U10 (W[15], C[15], S[14], IN0[14], IN1[14], IN2[14], IN3[14], W[14]);
  UB1B4_2CMP_15 U11 (W[16], C[16], S[15], IN0[15], IN1[15], IN2[15], IN3[15], W[15]);
  UB1B4_2CMP_16 U12 (W[17], C[17], S[16], IN0[16], IN1[16], IN2[16], IN3[16], W[16]);
  UB1B4_2CMP_17 U13 (W[18], C[18], S[17], IN0[17], IN1[17], IN2[17], IN3[17], W[17]);
  UB1B4_2CMP_18 U14 (Co, C[19], S[18], IN0[18], IN1[18], IN2[18], IN3[18], W[18]);
endmodule

module UBPureRCL_25_2 (S, X, Y);
  output [26:2] S;
  input [25:2] X;
  input [25:2] Y;
  wire C;
  PriMRCLA_25_2 U0 (S, X, Y, C);
  UBZero_2_2 U1 (C);
endmodule

module UBR4BE_8_0 (O__ds, O__d1, O__d0, I);
  output [4:0] O__ds, O__d1, O__d0;
  input [8:0] I;
  wire T;
  NUBZero_9_9 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEEH_4_3 U5 (O__ds[4], O__d1[4], O__d0[4], T, I[8], I[7]);
endmodule

module UBR4BPPG_15_0_8_0 (PP0, PP1, PP2, PP3, PP4, PP5, IN1, IN2);
  output [18:0] PP0;
  output [20:0] PP1;
  output [22:2] PP2;
  output [24:4] PP3;
  output [25:6] PP4;
  output [17:8] PP5;
  input [15:0] IN1;
  input [8:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire [4:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [17:0] PPT0;
  wire [19:2] PPT1;
  wire [21:4] PPT2;
  wire [23:6] PPT3;
  wire [25:8] PPT4;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  UBR4BE_8_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_15_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_15_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_15_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_15_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_15_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBOne_18 U6 (B0);
  UBCMBIN_18_18_17_000 U7 (PP0, B0, PPT0);
  UBOne_20 U8 (B1);
  UBCMBIN_20_20_19_000 U9 (PP1, B1, PPT1, S0);
  UBOne_22 U10 (B2);
  UBCMBIN_22_22_21_000 U11 (PP2, B2, PPT2, S1);
  UBOne_24 U12 (B3);
  UBCMBIN_24_24_23_000 U13 (PP3, B3, PPT3, S2);
  UBCMBIN_25_8_6_6 U14 (PP4, PPT4, S3);
  UBOne_17 U15 (B4);
  UBCMBIN_17_17_8_8 U16 (PP5, B4, S4);
endmodule

module UBRCL_25_2_25_0 (S, X, Y);
  output [26:0] S;
  input [25:2] X;
  input [25:0] Y;
  UBPureRCL_25_2 U0 (S[26:2], X[25:2], Y[25:2]);
  UBCON_1_0 U1 (S[1:0], Y[1:0]);
endmodule

module UBSD4VPPG_15_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [17:0] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [16:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_17_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [19:2] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [18:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_19_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [21:4] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [20:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_21_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [23:6] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [22:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_23_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_4 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [25:8] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [24:8] W_R;
  wire W_T;
  SD41DDECON_4 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_4 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_25_8 U3 (PP, W_T, W_R, S);
  UBBBG_8 U4 (C, S);
endmodule

module UBTCCONV26_26_0 (O, I);
  output [26:0] O;
  input [26:0] I;
  UBTC1CON26_0 U0 (O[0], I[0]);
  UBTC1CON26_1 U1 (O[1], I[1]);
  UBTC1CON26_2 U2 (O[2], I[2]);
  UBTC1CON26_3 U3 (O[3], I[3]);
  UBTC1CON26_4 U4 (O[4], I[4]);
  UBTC1CON26_5 U5 (O[5], I[5]);
  UBTC1CON26_6 U6 (O[6], I[6]);
  UBTC1CON26_7 U7 (O[7], I[7]);
  UBTC1CON26_8 U8 (O[8], I[8]);
  UBTC1CON26_9 U9 (O[9], I[9]);
  UBTC1CON26_10 U10 (O[10], I[10]);
  UBTC1CON26_11 U11 (O[11], I[11]);
  UBTC1CON26_12 U12 (O[12], I[12]);
  UBTC1CON26_13 U13 (O[13], I[13]);
  UBTC1CON26_14 U14 (O[14], I[14]);
  UBTC1CON26_15 U15 (O[15], I[15]);
  UBTC1CON26_16 U16 (O[16], I[16]);
  UBTC1CON26_17 U17 (O[17], I[17]);
  UBTC1CON26_18 U18 (O[18], I[18]);
  UBTC1CON26_19 U19 (O[19], I[19]);
  UBTC1CON26_20 U20 (O[20], I[20]);
  UBTC1CON26_21 U21 (O[21], I[21]);
  UBTC1CON26_22 U22 (O[22], I[22]);
  UBTC1CON26_23 U23 (O[23], I[23]);
  UBTC1CON26_24 U24 (O[24], I[24]);
  UBTC1CON26_25 U25 (O[25], I[25]);
  UBTCTCONV_26_26 U26 (O[26], I[26]);
endmodule

