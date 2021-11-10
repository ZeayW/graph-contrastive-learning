/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_15_0_1000

  Number system: Unsigned binary
  Multiplicand length: 16
  Multiplier length: 16
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: (4;2) compressor tree
  Final stage addition: Han-Carlson adder
----------------------------------------------------------------------------*/

module NUBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
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

module R4BEE_7(O_ds, O_d1, O_d0, I2, I1, I0);
  output O_ds, O_d1, O_d0;
  input I0;
  input I1;
  input I2;
  assign O_d0 = I1 ^ I0;
  assign O_d1 = ( I2 ^ I1 ) & ( ~ ( I1 ^ I0 ) );
  assign O_ds = I2;
endmodule

module R4BEEH_8_2(O_ds, O_d1, O_d0, I1, I0);
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

module U4DPPG_15_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_5(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_25(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_26(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_27(O, I, S);
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

module U4DPPG_15_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_27(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_28(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_29(O, I, S);
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

module U4DPPG_15_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_7(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_29(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_30(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_31(O, I, S);
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

module SD41DDECON_8(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module U4DPPGL_0_8(Po, O, I, U_d1, U_d0);
  output O;
  output Po;
  input I;
  input U_d1, U_d0;
  assign O = I & U_d0;
  assign Po = I & U_d1;
endmodule

module U4DPPG_1_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_2_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_3_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_4_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_5_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_6_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_7_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_8_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_9_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_10_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_11_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_12_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_13_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_14_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPG_15_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & U_d1;
endmodule

module U4DPPGH_16_8(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module BWCPP_31(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCPP_32(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ I;
endmodule

module BWCNP_33(O, I, S);
  output O;
  input I;
  input S;
  assign O = ( ~ S ) ^ I;
endmodule

module UBBBG_16(O, S);
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

module UBOne_26(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_26(O, I);
  output O;
  input I;
  assign O = I;
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

module UBOne_28(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module UBOne_30(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module UBOne_32(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_32(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_31(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
endmodule

module UB1DCON_33(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
endmodule

module UBOne_17(O);
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

module UB1B4_2CMP_19(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_20(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_21(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_22(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_23(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B3_2CMP_24(Co, C, S, IN0, IN1, IN2, Ci);
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

module UBFA_25(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_26(C, S, X, Y);
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

module UBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
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

module UB1B3_2CMP_25(Co, C, S, IN0, IN1, IN2, Ci);
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

module UB1B3_2CMP_26(Co, C, S, IN0, IN1, IN2, Ci);
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

module UB1B3_2CMP_27(Co, C, S, IN0, IN1, IN2, Ci);
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

module UB1B3_2CMP_28(Co, C, S, IN0, IN1, IN2, Ci);
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

module UB1B3_2CMP_29(Co, C, S, IN0, IN1, IN2, Ci);
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

module UB1B3_2CMP_30(Co, C, S, IN0, IN1, IN2, Ci);
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

module UBFA_31(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_32(C, S, X, Y);
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

module UB1B4_2CMP_24(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_25(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_26(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UB1B4_2CMP_27(Co, C, S, IN0, IN1, IN2, IN3, Ci);
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

module UBFA_29(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_30(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_31(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_33(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_34_34(O);
  output [34:34] O;
  assign O[34] = 0;
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

module UBPriHCA_34_3(S, X, Y, Cin);
  output [35:3] S;
  input Cin;
  input [34:3] X;
  input [34:3] Y;
  wire [34:3] G0;
  wire [34:3] G1;
  wire [34:3] G2;
  wire [34:3] G3;
  wire [34:3] G4;
  wire [34:3] G5;
  wire [34:3] G6;
  wire [34:3] P0;
  wire [34:3] P1;
  wire [34:3] P2;
  wire [34:3] P3;
  wire [34:3] P4;
  wire [34:3] P5;
  wire [34:3] P6;
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
  assign P1[15] = P0[15];
  assign G1[15] = G0[15];
  assign P1[17] = P0[17];
  assign G1[17] = G0[17];
  assign P1[19] = P0[19];
  assign G1[19] = G0[19];
  assign P1[21] = P0[21];
  assign G1[21] = G0[21];
  assign P1[23] = P0[23];
  assign G1[23] = G0[23];
  assign P1[25] = P0[25];
  assign G1[25] = G0[25];
  assign P1[27] = P0[27];
  assign G1[27] = G0[27];
  assign P1[29] = P0[29];
  assign G1[29] = G0[29];
  assign P1[31] = P0[31];
  assign G1[31] = G0[31];
  assign P1[33] = P0[33];
  assign G1[33] = G0[33];
  assign P2[3] = P1[3];
  assign G2[3] = G1[3];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P2[7] = P1[7];
  assign G2[7] = G1[7];
  assign P2[9] = P1[9];
  assign G2[9] = G1[9];
  assign P2[11] = P1[11];
  assign G2[11] = G1[11];
  assign P2[13] = P1[13];
  assign G2[13] = G1[13];
  assign P2[15] = P1[15];
  assign G2[15] = G1[15];
  assign P2[17] = P1[17];
  assign G2[17] = G1[17];
  assign P2[19] = P1[19];
  assign G2[19] = G1[19];
  assign P2[21] = P1[21];
  assign G2[21] = G1[21];
  assign P2[23] = P1[23];
  assign G2[23] = G1[23];
  assign P2[25] = P1[25];
  assign G2[25] = G1[25];
  assign P2[27] = P1[27];
  assign G2[27] = G1[27];
  assign P2[29] = P1[29];
  assign G2[29] = G1[29];
  assign P2[31] = P1[31];
  assign G2[31] = G1[31];
  assign P2[33] = P1[33];
  assign G2[33] = G1[33];
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
  assign P3[9] = P2[9];
  assign G3[9] = G2[9];
  assign P3[11] = P2[11];
  assign G3[11] = G2[11];
  assign P3[13] = P2[13];
  assign G3[13] = G2[13];
  assign P3[15] = P2[15];
  assign G3[15] = G2[15];
  assign P3[17] = P2[17];
  assign G3[17] = G2[17];
  assign P3[19] = P2[19];
  assign G3[19] = G2[19];
  assign P3[21] = P2[21];
  assign G3[21] = G2[21];
  assign P3[23] = P2[23];
  assign G3[23] = G2[23];
  assign P3[25] = P2[25];
  assign G3[25] = G2[25];
  assign P3[27] = P2[27];
  assign G3[27] = G2[27];
  assign P3[29] = P2[29];
  assign G3[29] = G2[29];
  assign P3[31] = P2[31];
  assign G3[31] = G2[31];
  assign P3[33] = P2[33];
  assign G3[33] = G2[33];
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
  assign P4[13] = P3[13];
  assign G4[13] = G3[13];
  assign P4[15] = P3[15];
  assign G4[15] = G3[15];
  assign P4[17] = P3[17];
  assign G4[17] = G3[17];
  assign P4[19] = P3[19];
  assign G4[19] = G3[19];
  assign P4[21] = P3[21];
  assign G4[21] = G3[21];
  assign P4[23] = P3[23];
  assign G4[23] = G3[23];
  assign P4[25] = P3[25];
  assign G4[25] = G3[25];
  assign P4[27] = P3[27];
  assign G4[27] = G3[27];
  assign P4[29] = P3[29];
  assign G4[29] = G3[29];
  assign P4[31] = P3[31];
  assign G4[31] = G3[31];
  assign P4[33] = P3[33];
  assign G4[33] = G3[33];
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
  assign P5[8] = P4[8];
  assign G5[8] = G4[8];
  assign P5[9] = P4[9];
  assign G5[9] = G4[9];
  assign P5[10] = P4[10];
  assign G5[10] = G4[10];
  assign P5[11] = P4[11];
  assign G5[11] = G4[11];
  assign P5[12] = P4[12];
  assign G5[12] = G4[12];
  assign P5[13] = P4[13];
  assign G5[13] = G4[13];
  assign P5[14] = P4[14];
  assign G5[14] = G4[14];
  assign P5[15] = P4[15];
  assign G5[15] = G4[15];
  assign P5[16] = P4[16];
  assign G5[16] = G4[16];
  assign P5[17] = P4[17];
  assign G5[17] = G4[17];
  assign P5[18] = P4[18];
  assign G5[18] = G4[18];
  assign P5[19] = P4[19];
  assign G5[19] = G4[19];
  assign P5[21] = P4[21];
  assign G5[21] = G4[21];
  assign P5[23] = P4[23];
  assign G5[23] = G4[23];
  assign P5[25] = P4[25];
  assign G5[25] = G4[25];
  assign P5[27] = P4[27];
  assign G5[27] = G4[27];
  assign P5[29] = P4[29];
  assign G5[29] = G4[29];
  assign P5[31] = P4[31];
  assign G5[31] = G4[31];
  assign P5[33] = P4[33];
  assign G5[33] = G4[33];
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
  assign P6[16] = P5[16];
  assign G6[16] = G5[16];
  assign P6[18] = P5[18];
  assign G6[18] = G5[18];
  assign P6[20] = P5[20];
  assign G6[20] = G5[20];
  assign P6[22] = P5[22];
  assign G6[22] = G5[22];
  assign P6[24] = P5[24];
  assign G6[24] = G5[24];
  assign P6[26] = P5[26];
  assign G6[26] = G5[26];
  assign P6[28] = P5[28];
  assign G6[28] = G5[28];
  assign P6[30] = P5[30];
  assign G6[30] = G5[30];
  assign P6[32] = P5[32];
  assign G6[32] = G5[32];
  assign P6[34] = P5[34];
  assign G6[34] = G5[34];
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
  assign S[15] = ( G6[14] | ( P6[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G6[15] | ( P6[15] & Cin ) ) ^ P0[16];
  assign S[17] = ( G6[16] | ( P6[16] & Cin ) ) ^ P0[17];
  assign S[18] = ( G6[17] | ( P6[17] & Cin ) ) ^ P0[18];
  assign S[19] = ( G6[18] | ( P6[18] & Cin ) ) ^ P0[19];
  assign S[20] = ( G6[19] | ( P6[19] & Cin ) ) ^ P0[20];
  assign S[21] = ( G6[20] | ( P6[20] & Cin ) ) ^ P0[21];
  assign S[22] = ( G6[21] | ( P6[21] & Cin ) ) ^ P0[22];
  assign S[23] = ( G6[22] | ( P6[22] & Cin ) ) ^ P0[23];
  assign S[24] = ( G6[23] | ( P6[23] & Cin ) ) ^ P0[24];
  assign S[25] = ( G6[24] | ( P6[24] & Cin ) ) ^ P0[25];
  assign S[26] = ( G6[25] | ( P6[25] & Cin ) ) ^ P0[26];
  assign S[27] = ( G6[26] | ( P6[26] & Cin ) ) ^ P0[27];
  assign S[28] = ( G6[27] | ( P6[27] & Cin ) ) ^ P0[28];
  assign S[29] = ( G6[28] | ( P6[28] & Cin ) ) ^ P0[29];
  assign S[30] = ( G6[29] | ( P6[29] & Cin ) ) ^ P0[30];
  assign S[31] = ( G6[30] | ( P6[30] & Cin ) ) ^ P0[31];
  assign S[32] = ( G6[31] | ( P6[31] & Cin ) ) ^ P0[32];
  assign S[33] = ( G6[32] | ( P6[32] & Cin ) ) ^ P0[33];
  assign S[34] = ( G6[33] | ( P6[33] & Cin ) ) ^ P0[34];
  assign S[35] = G6[34] | ( P6[34] & Cin );
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
  GPGenerator U12 (G0[15], P0[15], X[15], Y[15]);
  GPGenerator U13 (G0[16], P0[16], X[16], Y[16]);
  GPGenerator U14 (G0[17], P0[17], X[17], Y[17]);
  GPGenerator U15 (G0[18], P0[18], X[18], Y[18]);
  GPGenerator U16 (G0[19], P0[19], X[19], Y[19]);
  GPGenerator U17 (G0[20], P0[20], X[20], Y[20]);
  GPGenerator U18 (G0[21], P0[21], X[21], Y[21]);
  GPGenerator U19 (G0[22], P0[22], X[22], Y[22]);
  GPGenerator U20 (G0[23], P0[23], X[23], Y[23]);
  GPGenerator U21 (G0[24], P0[24], X[24], Y[24]);
  GPGenerator U22 (G0[25], P0[25], X[25], Y[25]);
  GPGenerator U23 (G0[26], P0[26], X[26], Y[26]);
  GPGenerator U24 (G0[27], P0[27], X[27], Y[27]);
  GPGenerator U25 (G0[28], P0[28], X[28], Y[28]);
  GPGenerator U26 (G0[29], P0[29], X[29], Y[29]);
  GPGenerator U27 (G0[30], P0[30], X[30], Y[30]);
  GPGenerator U28 (G0[31], P0[31], X[31], Y[31]);
  GPGenerator U29 (G0[32], P0[32], X[32], Y[32]);
  GPGenerator U30 (G0[33], P0[33], X[33], Y[33]);
  GPGenerator U31 (G0[34], P0[34], X[34], Y[34]);
  CarryOperator U32 (G1[4], P1[4], G0[4], P0[4], G0[3], P0[3]);
  CarryOperator U33 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U34 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U35 (G1[10], P1[10], G0[10], P0[10], G0[9], P0[9]);
  CarryOperator U36 (G1[12], P1[12], G0[12], P0[12], G0[11], P0[11]);
  CarryOperator U37 (G1[14], P1[14], G0[14], P0[14], G0[13], P0[13]);
  CarryOperator U38 (G1[16], P1[16], G0[16], P0[16], G0[15], P0[15]);
  CarryOperator U39 (G1[18], P1[18], G0[18], P0[18], G0[17], P0[17]);
  CarryOperator U40 (G1[20], P1[20], G0[20], P0[20], G0[19], P0[19]);
  CarryOperator U41 (G1[22], P1[22], G0[22], P0[22], G0[21], P0[21]);
  CarryOperator U42 (G1[24], P1[24], G0[24], P0[24], G0[23], P0[23]);
  CarryOperator U43 (G1[26], P1[26], G0[26], P0[26], G0[25], P0[25]);
  CarryOperator U44 (G1[28], P1[28], G0[28], P0[28], G0[27], P0[27]);
  CarryOperator U45 (G1[30], P1[30], G0[30], P0[30], G0[29], P0[29]);
  CarryOperator U46 (G1[32], P1[32], G0[32], P0[32], G0[31], P0[31]);
  CarryOperator U47 (G1[34], P1[34], G0[34], P0[34], G0[33], P0[33]);
  CarryOperator U48 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U49 (G2[8], P2[8], G1[8], P1[8], G1[6], P1[6]);
  CarryOperator U50 (G2[10], P2[10], G1[10], P1[10], G1[8], P1[8]);
  CarryOperator U51 (G2[12], P2[12], G1[12], P1[12], G1[10], P1[10]);
  CarryOperator U52 (G2[14], P2[14], G1[14], P1[14], G1[12], P1[12]);
  CarryOperator U53 (G2[16], P2[16], G1[16], P1[16], G1[14], P1[14]);
  CarryOperator U54 (G2[18], P2[18], G1[18], P1[18], G1[16], P1[16]);
  CarryOperator U55 (G2[20], P2[20], G1[20], P1[20], G1[18], P1[18]);
  CarryOperator U56 (G2[22], P2[22], G1[22], P1[22], G1[20], P1[20]);
  CarryOperator U57 (G2[24], P2[24], G1[24], P1[24], G1[22], P1[22]);
  CarryOperator U58 (G2[26], P2[26], G1[26], P1[26], G1[24], P1[24]);
  CarryOperator U59 (G2[28], P2[28], G1[28], P1[28], G1[26], P1[26]);
  CarryOperator U60 (G2[30], P2[30], G1[30], P1[30], G1[28], P1[28]);
  CarryOperator U61 (G2[32], P2[32], G1[32], P1[32], G1[30], P1[30]);
  CarryOperator U62 (G2[34], P2[34], G1[34], P1[34], G1[32], P1[32]);
  CarryOperator U63 (G3[8], P3[8], G2[8], P2[8], G2[4], P2[4]);
  CarryOperator U64 (G3[10], P3[10], G2[10], P2[10], G2[6], P2[6]);
  CarryOperator U65 (G3[12], P3[12], G2[12], P2[12], G2[8], P2[8]);
  CarryOperator U66 (G3[14], P3[14], G2[14], P2[14], G2[10], P2[10]);
  CarryOperator U67 (G3[16], P3[16], G2[16], P2[16], G2[12], P2[12]);
  CarryOperator U68 (G3[18], P3[18], G2[18], P2[18], G2[14], P2[14]);
  CarryOperator U69 (G3[20], P3[20], G2[20], P2[20], G2[16], P2[16]);
  CarryOperator U70 (G3[22], P3[22], G2[22], P2[22], G2[18], P2[18]);
  CarryOperator U71 (G3[24], P3[24], G2[24], P2[24], G2[20], P2[20]);
  CarryOperator U72 (G3[26], P3[26], G2[26], P2[26], G2[22], P2[22]);
  CarryOperator U73 (G3[28], P3[28], G2[28], P2[28], G2[24], P2[24]);
  CarryOperator U74 (G3[30], P3[30], G2[30], P2[30], G2[26], P2[26]);
  CarryOperator U75 (G3[32], P3[32], G2[32], P2[32], G2[28], P2[28]);
  CarryOperator U76 (G3[34], P3[34], G2[34], P2[34], G2[30], P2[30]);
  CarryOperator U77 (G4[12], P4[12], G3[12], P3[12], G3[4], P3[4]);
  CarryOperator U78 (G4[14], P4[14], G3[14], P3[14], G3[6], P3[6]);
  CarryOperator U79 (G4[16], P4[16], G3[16], P3[16], G3[8], P3[8]);
  CarryOperator U80 (G4[18], P4[18], G3[18], P3[18], G3[10], P3[10]);
  CarryOperator U81 (G4[20], P4[20], G3[20], P3[20], G3[12], P3[12]);
  CarryOperator U82 (G4[22], P4[22], G3[22], P3[22], G3[14], P3[14]);
  CarryOperator U83 (G4[24], P4[24], G3[24], P3[24], G3[16], P3[16]);
  CarryOperator U84 (G4[26], P4[26], G3[26], P3[26], G3[18], P3[18]);
  CarryOperator U85 (G4[28], P4[28], G3[28], P3[28], G3[20], P3[20]);
  CarryOperator U86 (G4[30], P4[30], G3[30], P3[30], G3[22], P3[22]);
  CarryOperator U87 (G4[32], P4[32], G3[32], P3[32], G3[24], P3[24]);
  CarryOperator U88 (G4[34], P4[34], G3[34], P3[34], G3[26], P3[26]);
  CarryOperator U89 (G5[20], P5[20], G4[20], P4[20], G4[4], P4[4]);
  CarryOperator U90 (G5[22], P5[22], G4[22], P4[22], G4[6], P4[6]);
  CarryOperator U91 (G5[24], P5[24], G4[24], P4[24], G4[8], P4[8]);
  CarryOperator U92 (G5[26], P5[26], G4[26], P4[26], G4[10], P4[10]);
  CarryOperator U93 (G5[28], P5[28], G4[28], P4[28], G4[12], P4[12]);
  CarryOperator U94 (G5[30], P5[30], G4[30], P4[30], G4[14], P4[14]);
  CarryOperator U95 (G5[32], P5[32], G4[32], P4[32], G4[16], P4[16]);
  CarryOperator U96 (G5[34], P5[34], G4[34], P4[34], G4[18], P4[18]);
  CarryOperator U97 (G6[5], P6[5], G5[5], P5[5], G5[4], P5[4]);
  CarryOperator U98 (G6[7], P6[7], G5[7], P5[7], G5[6], P5[6]);
  CarryOperator U99 (G6[9], P6[9], G5[9], P5[9], G5[8], P5[8]);
  CarryOperator U100 (G6[11], P6[11], G5[11], P5[11], G5[10], P5[10]);
  CarryOperator U101 (G6[13], P6[13], G5[13], P5[13], G5[12], P5[12]);
  CarryOperator U102 (G6[15], P6[15], G5[15], P5[15], G5[14], P5[14]);
  CarryOperator U103 (G6[17], P6[17], G5[17], P5[17], G5[16], P5[16]);
  CarryOperator U104 (G6[19], P6[19], G5[19], P5[19], G5[18], P5[18]);
  CarryOperator U105 (G6[21], P6[21], G5[21], P5[21], G5[20], P5[20]);
  CarryOperator U106 (G6[23], P6[23], G5[23], P5[23], G5[22], P5[22]);
  CarryOperator U107 (G6[25], P6[25], G5[25], P5[25], G5[24], P5[24]);
  CarryOperator U108 (G6[27], P6[27], G5[27], P5[27], G5[26], P5[26]);
  CarryOperator U109 (G6[29], P6[29], G5[29], P5[29], G5[28], P5[28]);
  CarryOperator U110 (G6[31], P6[31], G5[31], P5[31], G5[30], P5[30]);
  CarryOperator U111 (G6[33], P6[33], G5[33], P5[33], G5[32], P5[32]);
endmodule

module UBTC1CON36_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_31(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_32(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON36_33(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_35_34(O, I);
  output [36:34] O;
  input [35:34] I;
  assign O[34] = ~ I[34];
  assign O[35] = ~ I[35] ^ ( I[34] );
  assign O[36] = ~ ( I[35] | I[34] );
endmodule

module Multiplier_15_0_1000(P, IN1, IN2);
  output [31:0] P;
  input [15:0] IN1;
  input [15:0] IN2;
  wire [36:0] W;
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
  assign P[30] = W[30];
  assign P[31] = W[31];
  MultUB_R4B_C42_HC000 U0 (W, IN1, IN2);
endmodule

module C42TR_18_0_20_0_2000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  output [34:3] S1;
  output [33:0] S2;
  input [18:0] PP0;
  input [20:0] PP1;
  input [22:2] PP2;
  input [24:4] PP3;
  input [26:6] PP4;
  input [28:8] PP5;
  input [30:10] PP6;
  input [32:12] PP7;
  input [33:14] PP8;
  input [17:16] PP9;
  wire [24:0] W1_0;
  wire [23:1] W1_1;
  wire [28:0] W2_2;
  wire [27:2] W2_3;
  wire [33:10] W2_4;
  wire [33:13] W2_5;
  UB4_2Comp_18_0_20000 U0 (W1_1[23:1], W1_0[24:0], PP0, PP1, PP2, PP3);
  UB4_2Comp_24_0_23000 U1 (W2_3[27:2], W2_2[28:0], W1_0[24:0], W1_1[23:1], PP4, PP5);
  UB4_2Comp_30_10_3000 U2 (W2_5[33:13], W2_4[33:10], PP6, PP7, PP8, PP9);
  UB4_2Comp_28_0_27000 U3 (S1[34:3], S2[33:0], W2_2[28:0], W2_3[27:2], W2_4[33:10], W2_5[33:13]);
endmodule

module MultUB_R4B_C42_HC000 (P, IN1, IN2);
  output [36:0] P;
  input [15:0] IN1;
  input [15:0] IN2;
  wire [18:0] PP0;
  wire [20:0] PP1;
  wire [22:2] PP2;
  wire [24:4] PP3;
  wire [26:6] PP4;
  wire [28:8] PP5;
  wire [30:10] PP6;
  wire [32:12] PP7;
  wire [33:14] PP8;
  wire [17:16] PP9;
  wire [34:3] S1;
  wire [33:0] S2;
  wire [35:0] UP;
  UBR4BPPG_15_0_15_000 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9, IN1, IN2);
  C42TR_18_0_20_0_2000 U1 (S1[34:3], S2[33:0], PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  UBHCA_34_3_33_0 U2 (UP, S1[34:3], S2[33:0]);
  UBTCCONV34_35_0 U3 (P, UP);
endmodule

module PureCSA_12_10 (C, S, X, Y, Z);
  output [13:11] C;
  output [12:10] S;
  input [12:10] X;
  input [12:10] Y;
  input [12:10] Z;
  UBFA_10 U0 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U1 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U2 (C[13], S[12], X[12], Y[12], Z[12]);
endmodule

module PureCSA_15_14 (C, S, X, Y, Z);
  output [16:15] C;
  output [15:14] S;
  input [15:14] X;
  input [15:14] Y;
  input [15:14] Z;
  UBFA_14 U0 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U1 (C[16], S[15], X[15], Y[15], Z[15]);
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

module PureCSHA_13_12 (C, S, X, Y);
  output [14:13] C;
  output [13:12] S;
  input [13:12] X;
  input [13:12] Y;
  UBHA_12 U0 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U1 (C[14], S[13], X[13], Y[13]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_33_30 (C, S, X, Y);
  output [34:31] C;
  output [33:30] S;
  input [33:30] X;
  input [33:30] Y;
  UBHA_30 U0 (C[31], S[30], X[30], Y[30]);
  UBHA_31 U1 (C[32], S[31], X[31], Y[31]);
  UBHA_32 U2 (C[33], S[32], X[32], Y[32]);
  UBHA_33 U3 (C[34], S[33], X[33], Y[33]);
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

module PureCSHA_9_2 (C, S, X, Y);
  output [10:3] C;
  output [9:2] S;
  input [9:2] X;
  input [9:2] Y;
  UBHA_2 U0 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U2 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U3 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U4 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U5 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U6 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U7 (C[10], S[9], X[9], Y[9]);
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

module TCU4VPPG_16_0_5 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [26:10] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [26:11] P;
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
  U4DPPG_15_5 U15 (P[26], O_R[25], IN1_R[15], U__d1, U__d0, P[25]);
  U4DPPGH_16_5 U16 (O_T, O_R[26], IN1_T, U__d1, U__d0, P[26]);
endmodule

module TCU4VPPG_16_0_6 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [28:12] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [28:13] P;
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
  U4DPPG_15_6 U15 (P[28], O_R[27], IN1_R[15], U__d1, U__d0, P[27]);
  U4DPPGH_16_6 U16 (O_T, O_R[28], IN1_T, U__d1, U__d0, P[28]);
endmodule

module TCU4VPPG_16_0_7 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [30:14] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [30:15] P;
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
  U4DPPG_15_7 U15 (P[30], O_R[29], IN1_R[15], U__d1, U__d0, P[29]);
  U4DPPGH_16_7 U16 (O_T, O_R[30], IN1_T, U__d1, U__d0, P[30]);
endmodule

module TCU4VPPG_16_0_8 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [32:16] O_R;
  output O_T;
  input [15:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [32:17] P;
  U4DPPGL_0_8 U0 (P[17], O_R[16], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_8 U1 (P[18], O_R[17], IN1_R[1], U__d1, U__d0, P[17]);
  U4DPPG_2_8 U2 (P[19], O_R[18], IN1_R[2], U__d1, U__d0, P[18]);
  U4DPPG_3_8 U3 (P[20], O_R[19], IN1_R[3], U__d1, U__d0, P[19]);
  U4DPPG_4_8 U4 (P[21], O_R[20], IN1_R[4], U__d1, U__d0, P[20]);
  U4DPPG_5_8 U5 (P[22], O_R[21], IN1_R[5], U__d1, U__d0, P[21]);
  U4DPPG_6_8 U6 (P[23], O_R[22], IN1_R[6], U__d1, U__d0, P[22]);
  U4DPPG_7_8 U7 (P[24], O_R[23], IN1_R[7], U__d1, U__d0, P[23]);
  U4DPPG_8_8 U8 (P[25], O_R[24], IN1_R[8], U__d1, U__d0, P[24]);
  U4DPPG_9_8 U9 (P[26], O_R[25], IN1_R[9], U__d1, U__d0, P[25]);
  U4DPPG_10_8 U10 (P[27], O_R[26], IN1_R[10], U__d1, U__d0, P[26]);
  U4DPPG_11_8 U11 (P[28], O_R[27], IN1_R[11], U__d1, U__d0, P[27]);
  U4DPPG_12_8 U12 (P[29], O_R[28], IN1_R[12], U__d1, U__d0, P[28]);
  U4DPPG_13_8 U13 (P[30], O_R[29], IN1_R[13], U__d1, U__d0, P[29]);
  U4DPPG_14_8 U14 (P[31], O_R[30], IN1_R[14], U__d1, U__d0, P[30]);
  U4DPPG_15_8 U15 (P[32], O_R[31], IN1_R[15], U__d1, U__d0, P[31]);
  U4DPPGH_16_8 U16 (O_T, O_R[32], IN1_T, U__d1, U__d0, P[32]);
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

module TUBWCON_27_10 (O, I_T, I_R, S);
  output [27:10] O;
  input [26:10] I_R;
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
  BWCPP_26 U16 (O[26], I_R[26], S);
  BWCNP_27 U17 (O[27], I_T, S);
endmodule

module TUBWCON_29_12 (O, I_T, I_R, S);
  output [29:12] O;
  input [28:12] I_R;
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
  BWCPP_28 U16 (O[28], I_R[28], S);
  BWCNP_29 U17 (O[29], I_T, S);
endmodule

module TUBWCON_31_14 (O, I_T, I_R, S);
  output [31:14] O;
  input [30:14] I_R;
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
  BWCPP_30 U16 (O[30], I_R[30], S);
  BWCNP_31 U17 (O[31], I_T, S);
endmodule

module TUBWCON_33_16 (O, I_T, I_R, S);
  output [33:16] O;
  input [32:16] I_R;
  input I_T;
  input S;
  BWCPP_16 U0 (O[16], I_R[16], S);
  BWCPP_17 U1 (O[17], I_R[17], S);
  BWCPP_18 U2 (O[18], I_R[18], S);
  BWCPP_19 U3 (O[19], I_R[19], S);
  BWCPP_20 U4 (O[20], I_R[20], S);
  BWCPP_21 U5 (O[21], I_R[21], S);
  BWCPP_22 U6 (O[22], I_R[22], S);
  BWCPP_23 U7 (O[23], I_R[23], S);
  BWCPP_24 U8 (O[24], I_R[24], S);
  BWCPP_25 U9 (O[25], I_R[25], S);
  BWCPP_26 U10 (O[26], I_R[26], S);
  BWCPP_27 U11 (O[27], I_R[27], S);
  BWCPP_28 U12 (O[28], I_R[28], S);
  BWCPP_29 U13 (O[29], I_R[29], S);
  BWCPP_30 U14 (O[30], I_R[30], S);
  BWCPP_31 U15 (O[31], I_R[31], S);
  BWCPP_32 U16 (O[32], I_R[32], S);
  BWCNP_33 U17 (O[33], I_T, S);
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
  output [27:2] C;
  output [28:0] S;
  input [24:0] IN0;
  input [23:1] IN1;
  input [26:6] IN2;
  input [28:8] IN3;
  wire W0;
  wire W1;
  wire WZ;
  UB1DCON_0 U0 (S[0], IN0[0]);
  PureCSHA_5_1 U1 (C[6:2], S[5:1], IN1[5:1], IN0[5:1]);
  PureCSA_7_6 U2 (C[8:7], S[7:6], IN2[7:6], IN1[7:6], IN0[7:6]);
  UBZero_8_8 U3 (WZ);
  UBPure4_2CMP_23_8 U4 (W0, C[24:9], S[23:8], IN3[23:8], IN2[23:8], IN1[23:8], IN0[23:8], WZ);
  UB1B3_2CMP_24 U5 (W1, C[25], S[24], IN3[24], IN2[24], IN0[24], W0);
  UBFA_25 U6 (C[26], S[25], IN3[25], IN2[25], W1);
  UBHA_26 U7 (C[27], S[26], IN3[26], IN2[26]);
  UBCON_28_27 U8 (S[28:27], IN3[28:27]);
endmodule

module UB4_2Comp_28_0_27000 (C, S, IN0, IN1, IN2, IN3);
  output [34:3] C;
  output [33:0] S;
  input [28:0] IN0;
  input [27:2] IN1;
  input [33:10] IN2;
  input [33:13] IN3;
  wire W0;
  wire W1;
  wire WZ;
  UBCON_1_0 U0 (S[1:0], IN0[1:0]);
  PureCSHA_9_2 U1 (C[10:3], S[9:2], IN1[9:2], IN0[9:2]);
  PureCSA_12_10 U2 (C[13:11], S[12:10], IN2[12:10], IN1[12:10], IN0[12:10]);
  UBZero_13_13 U3 (WZ);
  UBPure4_2CMP_27_1000 U4 (W0, C[28:14], S[27:13], IN3[27:13], IN2[27:13], IN1[27:13], IN0[27:13], WZ);
  UB1B3_2CMP_28 U5 (W1, C[29], S[28], IN3[28], IN2[28], IN0[28], W0);
  UBFA_29 U6 (C[30], S[29], IN3[29], IN2[29], W1);
  PureCSHA_33_30 U7 (C[34:31], S[33:30], IN3[33:30], IN2[33:30]);
endmodule

module UB4_2Comp_30_10_3000 (C, S, IN0, IN1, IN2, IN3);
  output [33:13] C;
  output [33:10] S;
  input [30:10] IN0;
  input [32:12] IN1;
  input [33:14] IN2;
  input [17:16] IN3;
  wire W0;
  wire W1;
  wire WZ;
  UBCON_11_10 U0 (S[11:10], IN0[11:10]);
  PureCSHA_13_12 U1 (C[14:13], S[13:12], IN1[13:12], IN0[13:12]);
  PureCSA_15_14 U2 (C[16:15], S[15:14], IN2[15:14], IN1[15:14], IN0[15:14]);
  UBZero_16_16 U3 (WZ);
  UBPure4_2CMP_17_1000 U4 (W0, C[18:17], S[17:16], IN3[17:16], IN2[17:16], IN1[17:16], IN0[17:16], WZ);
  UBPure3_2CMP_30_1000 U5 (W1, C[31:19], S[30:18], IN2[30:18], IN1[30:18], IN0[30:18], W0);
  UBFA_31 U6 (C[32], S[31], IN2[31], IN1[31], W1);
  UBHA_32 U7 (C[33], S[32], IN2[32], IN1[32]);
  UB1DCON_33 U8 (S[33], IN2[33]);
endmodule

module UBCMBIN_17_17_16_000 (O, IN0, IN1);
  output [17:16] O;
  input IN0;
  input IN1;
  UB1DCON_17 U0 (O[17], IN0);
  UB1DCON_16 U1 (O[16], IN1);
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

module UBCMBIN_26_26_25_000 (O, IN0, IN1, IN2);
  output [26:6] O;
  input IN0;
  input [25:8] IN1;
  input IN2;
  UB1DCON_26 U0 (O[26], IN0);
  UBCON_25_8 U1 (O[25:8], IN1);
  UBZero_7_7 U2 (O[7]);
  UB1DCON_6 U3 (O[6], IN2);
endmodule

module UBCMBIN_28_28_27_000 (O, IN0, IN1, IN2);
  output [28:8] O;
  input IN0;
  input [27:10] IN1;
  input IN2;
  UB1DCON_28 U0 (O[28], IN0);
  UBCON_27_10 U1 (O[27:10], IN1);
  UBZero_9_9 U2 (O[9]);
  UB1DCON_8 U3 (O[8], IN2);
endmodule

module UBCMBIN_30_30_29_000 (O, IN0, IN1, IN2);
  output [30:10] O;
  input IN0;
  input [29:12] IN1;
  input IN2;
  UB1DCON_30 U0 (O[30], IN0);
  UBCON_29_12 U1 (O[29:12], IN1);
  UBZero_11_11 U2 (O[11]);
  UB1DCON_10 U3 (O[10], IN2);
endmodule

module UBCMBIN_32_32_31_000 (O, IN0, IN1, IN2);
  output [32:12] O;
  input IN0;
  input [31:14] IN1;
  input IN2;
  UB1DCON_32 U0 (O[32], IN0);
  UBCON_31_14 U1 (O[31:14], IN1);
  UBZero_13_13 U2 (O[13]);
  UB1DCON_12 U3 (O[12], IN2);
endmodule

module UBCMBIN_33_16_14_000 (O, IN0, IN1);
  output [33:14] O;
  input [33:16] IN0;
  input IN1;
  UBCON_33_16 U0 (O[33:16], IN0);
  UBZero_15_15 U1 (O[15]);
  UB1DCON_14 U2 (O[14], IN1);
endmodule

module UBCON_11_10 (O, I);
  output [11:10] O;
  input [11:10] I;
  UB1DCON_10 U0 (O[10], I[10]);
  UB1DCON_11 U1 (O[11], I[11]);
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

module UBCON_27_10 (O, I);
  output [27:10] O;
  input [27:10] I;
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
  UB1DCON_27 U17 (O[27], I[27]);
endmodule

module UBCON_28_27 (O, I);
  output [28:27] O;
  input [28:27] I;
  UB1DCON_27 U0 (O[27], I[27]);
  UB1DCON_28 U1 (O[28], I[28]);
endmodule

module UBCON_29_12 (O, I);
  output [29:12] O;
  input [29:12] I;
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
  UB1DCON_29 U17 (O[29], I[29]);
endmodule

module UBCON_2_0 (O, I);
  output [2:0] O;
  input [2:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
endmodule

module UBCON_31_14 (O, I);
  output [31:14] O;
  input [31:14] I;
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
  UB1DCON_31 U17 (O[31], I[31]);
endmodule

module UBCON_33_16 (O, I);
  output [33:16] O;
  input [33:16] I;
  UB1DCON_16 U0 (O[16], I[16]);
  UB1DCON_17 U1 (O[17], I[17]);
  UB1DCON_18 U2 (O[18], I[18]);
  UB1DCON_19 U3 (O[19], I[19]);
  UB1DCON_20 U4 (O[20], I[20]);
  UB1DCON_21 U5 (O[21], I[21]);
  UB1DCON_22 U6 (O[22], I[22]);
  UB1DCON_23 U7 (O[23], I[23]);
  UB1DCON_24 U8 (O[24], I[24]);
  UB1DCON_25 U9 (O[25], I[25]);
  UB1DCON_26 U10 (O[26], I[26]);
  UB1DCON_27 U11 (O[27], I[27]);
  UB1DCON_28 U12 (O[28], I[28]);
  UB1DCON_29 U13 (O[29], I[29]);
  UB1DCON_30 U14 (O[30], I[30]);
  UB1DCON_31 U15 (O[31], I[31]);
  UB1DCON_32 U16 (O[32], I[32]);
  UB1DCON_33 U17 (O[33], I[33]);
endmodule

module UBCON_33_3 (O, I);
  output [33:3] O;
  input [33:3] I;
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
  UB1DCON_18 U15 (O[18], I[18]);
  UB1DCON_19 U16 (O[19], I[19]);
  UB1DCON_20 U17 (O[20], I[20]);
  UB1DCON_21 U18 (O[21], I[21]);
  UB1DCON_22 U19 (O[22], I[22]);
  UB1DCON_23 U20 (O[23], I[23]);
  UB1DCON_24 U21 (O[24], I[24]);
  UB1DCON_25 U22 (O[25], I[25]);
  UB1DCON_26 U23 (O[26], I[26]);
  UB1DCON_27 U24 (O[27], I[27]);
  UB1DCON_28 U25 (O[28], I[28]);
  UB1DCON_29 U26 (O[29], I[29]);
  UB1DCON_30 U27 (O[30], I[30]);
  UB1DCON_31 U28 (O[31], I[31]);
  UB1DCON_32 U29 (O[32], I[32]);
  UB1DCON_33 U30 (O[33], I[33]);
endmodule

module UBExtender_33_3_3000 (O, I);
  output [34:3] O;
  input [33:3] I;
  UBCON_33_3 U0 (O[33:3], I[33:3]);
  UBZero_34_34 U1 (O[34]);
endmodule

module UBHCA_34_3_33_0 (S, X, Y);
  output [35:0] S;
  input [34:3] X;
  input [33:0] Y;
  wire [34:3] Z;
  UBExtender_33_3_3000 U0 (Z[34:3], Y[33:3]);
  UBPureHCA_34_3 U1 (S[35:3], X[34:3], Z[34:3]);
  UBCON_2_0 U2 (S[2:0], Y[2:0]);
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

module UBPure3_2CMP_30_1000 (Co, C, S, IN0, IN1, IN2, Ci);
  output [31:19] C;
  output Co;
  output [30:18] S;
  input Ci;
  input [30:18] IN0;
  input [30:18] IN1;
  input [30:18] IN2;
  wire [30:19] W;
  UB1B3_2CMP_18 U0 (W[19], C[19], S[18], IN0[18], IN1[18], IN2[18], Ci);
  UB1B3_2CMP_19 U1 (W[20], C[20], S[19], IN0[19], IN1[19], IN2[19], W[19]);
  UB1B3_2CMP_20 U2 (W[21], C[21], S[20], IN0[20], IN1[20], IN2[20], W[20]);
  UB1B3_2CMP_21 U3 (W[22], C[22], S[21], IN0[21], IN1[21], IN2[21], W[21]);
  UB1B3_2CMP_22 U4 (W[23], C[23], S[22], IN0[22], IN1[22], IN2[22], W[22]);
  UB1B3_2CMP_23 U5 (W[24], C[24], S[23], IN0[23], IN1[23], IN2[23], W[23]);
  UB1B3_2CMP_24 U6 (W[25], C[25], S[24], IN0[24], IN1[24], IN2[24], W[24]);
  UB1B3_2CMP_25 U7 (W[26], C[26], S[25], IN0[25], IN1[25], IN2[25], W[25]);
  UB1B3_2CMP_26 U8 (W[27], C[27], S[26], IN0[26], IN1[26], IN2[26], W[26]);
  UB1B3_2CMP_27 U9 (W[28], C[28], S[27], IN0[27], IN1[27], IN2[27], W[27]);
  UB1B3_2CMP_28 U10 (W[29], C[29], S[28], IN0[28], IN1[28], IN2[28], W[28]);
  UB1B3_2CMP_29 U11 (W[30], C[30], S[29], IN0[29], IN1[29], IN2[29], W[29]);
  UB1B3_2CMP_30 U12 (Co, C[31], S[30], IN0[30], IN1[30], IN2[30], W[30]);
endmodule

module UBPure4_2CMP_17_1000 (Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output [18:17] C;
  output Co;
  output [17:16] S;
  input Ci;
  input [17:16] IN0;
  input [17:16] IN1;
  input [17:16] IN2;
  input [17:16] IN3;
  wire W;
  UB1B4_2CMP_16 U0 (W, C[17], S[16], IN0[16], IN1[16], IN2[16], IN3[16], Ci);
  UB1B4_2CMP_17 U1 (Co, C[18], S[17], IN0[17], IN1[17], IN2[17], IN3[17], W);
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

module UBPure4_2CMP_23_8 (Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output [24:9] C;
  output Co;
  output [23:8] S;
  input Ci;
  input [23:8] IN0;
  input [23:8] IN1;
  input [23:8] IN2;
  input [23:8] IN3;
  wire [23:9] W;
  UB1B4_2CMP_8 U0 (W[9], C[9], S[8], IN0[8], IN1[8], IN2[8], IN3[8], Ci);
  UB1B4_2CMP_9 U1 (W[10], C[10], S[9], IN0[9], IN1[9], IN2[9], IN3[9], W[9]);
  UB1B4_2CMP_10 U2 (W[11], C[11], S[10], IN0[10], IN1[10], IN2[10], IN3[10], W[10]);
  UB1B4_2CMP_11 U3 (W[12], C[12], S[11], IN0[11], IN1[11], IN2[11], IN3[11], W[11]);
  UB1B4_2CMP_12 U4 (W[13], C[13], S[12], IN0[12], IN1[12], IN2[12], IN3[12], W[12]);
  UB1B4_2CMP_13 U5 (W[14], C[14], S[13], IN0[13], IN1[13], IN2[13], IN3[13], W[13]);
  UB1B4_2CMP_14 U6 (W[15], C[15], S[14], IN0[14], IN1[14], IN2[14], IN3[14], W[14]);
  UB1B4_2CMP_15 U7 (W[16], C[16], S[15], IN0[15], IN1[15], IN2[15], IN3[15], W[15]);
  UB1B4_2CMP_16 U8 (W[17], C[17], S[16], IN0[16], IN1[16], IN2[16], IN3[16], W[16]);
  UB1B4_2CMP_17 U9 (W[18], C[18], S[17], IN0[17], IN1[17], IN2[17], IN3[17], W[17]);
  UB1B4_2CMP_18 U10 (W[19], C[19], S[18], IN0[18], IN1[18], IN2[18], IN3[18], W[18]);
  UB1B4_2CMP_19 U11 (W[20], C[20], S[19], IN0[19], IN1[19], IN2[19], IN3[19], W[19]);
  UB1B4_2CMP_20 U12 (W[21], C[21], S[20], IN0[20], IN1[20], IN2[20], IN3[20], W[20]);
  UB1B4_2CMP_21 U13 (W[22], C[22], S[21], IN0[21], IN1[21], IN2[21], IN3[21], W[21]);
  UB1B4_2CMP_22 U14 (W[23], C[23], S[22], IN0[22], IN1[22], IN2[22], IN3[22], W[22]);
  UB1B4_2CMP_23 U15 (Co, C[24], S[23], IN0[23], IN1[23], IN2[23], IN3[23], W[23]);
endmodule

module UBPure4_2CMP_27_1000 (Co, C, S, IN0, IN1, IN2, IN3, Ci);
  output [28:14] C;
  output Co;
  output [27:13] S;
  input Ci;
  input [27:13] IN0;
  input [27:13] IN1;
  input [27:13] IN2;
  input [27:13] IN3;
  wire [27:14] W;
  UB1B4_2CMP_13 U0 (W[14], C[14], S[13], IN0[13], IN1[13], IN2[13], IN3[13], Ci);
  UB1B4_2CMP_14 U1 (W[15], C[15], S[14], IN0[14], IN1[14], IN2[14], IN3[14], W[14]);
  UB1B4_2CMP_15 U2 (W[16], C[16], S[15], IN0[15], IN1[15], IN2[15], IN3[15], W[15]);
  UB1B4_2CMP_16 U3 (W[17], C[17], S[16], IN0[16], IN1[16], IN2[16], IN3[16], W[16]);
  UB1B4_2CMP_17 U4 (W[18], C[18], S[17], IN0[17], IN1[17], IN2[17], IN3[17], W[17]);
  UB1B4_2CMP_18 U5 (W[19], C[19], S[18], IN0[18], IN1[18], IN2[18], IN3[18], W[18]);
  UB1B4_2CMP_19 U6 (W[20], C[20], S[19], IN0[19], IN1[19], IN2[19], IN3[19], W[19]);
  UB1B4_2CMP_20 U7 (W[21], C[21], S[20], IN0[20], IN1[20], IN2[20], IN3[20], W[20]);
  UB1B4_2CMP_21 U8 (W[22], C[22], S[21], IN0[21], IN1[21], IN2[21], IN3[21], W[21]);
  UB1B4_2CMP_22 U9 (W[23], C[23], S[22], IN0[22], IN1[22], IN2[22], IN3[22], W[22]);
  UB1B4_2CMP_23 U10 (W[24], C[24], S[23], IN0[23], IN1[23], IN2[23], IN3[23], W[23]);
  UB1B4_2CMP_24 U11 (W[25], C[25], S[24], IN0[24], IN1[24], IN2[24], IN3[24], W[24]);
  UB1B4_2CMP_25 U12 (W[26], C[26], S[25], IN0[25], IN1[25], IN2[25], IN3[25], W[25]);
  UB1B4_2CMP_26 U13 (W[27], C[27], S[26], IN0[26], IN1[26], IN2[26], IN3[26], W[26]);
  UB1B4_2CMP_27 U14 (Co, C[28], S[27], IN0[27], IN1[27], IN2[27], IN3[27], W[27]);
endmodule

module UBPureHCA_34_3 (S, X, Y);
  output [35:3] S;
  input [34:3] X;
  input [34:3] Y;
  wire C;
  UBPriHCA_34_3 U0 (S, X, Y, C);
  UBZero_3_3 U1 (C);
endmodule

module UBR4BE_15_0 (O__ds, O__d1, O__d0, I);
  output [8:0] O__ds, O__d1, O__d0;
  input [15:0] I;
  wire T;
  NUBZero_16_16 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEE_4 U5 (O__ds[4], O__d1[4], O__d0[4], I[9], I[8], I[7]);
  R4BEE_5 U6 (O__ds[5], O__d1[5], O__d0[5], I[11], I[10], I[9]);
  R4BEE_6 U7 (O__ds[6], O__d1[6], O__d0[6], I[13], I[12], I[11]);
  R4BEE_7 U8 (O__ds[7], O__d1[7], O__d0[7], I[15], I[14], I[13]);
  R4BEEH_8_2 U9 (O__ds[8], O__d1[8], O__d0[8], T, I[15]);
endmodule

module UBR4BPPG_15_0_15_000 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9, IN1, IN2);
  output [18:0] PP0;
  output [20:0] PP1;
  output [22:2] PP2;
  output [24:4] PP3;
  output [26:6] PP4;
  output [28:8] PP5;
  output [30:10] PP6;
  output [32:12] PP7;
  output [33:14] PP8;
  output [17:16] PP9;
  input [15:0] IN1;
  input [15:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire B5;
  wire B6;
  wire B7;
  wire B8;
  wire [8:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [17:0] PPT0;
  wire [19:2] PPT1;
  wire [21:4] PPT2;
  wire [23:6] PPT3;
  wire [25:8] PPT4;
  wire [27:10] PPT5;
  wire [29:12] PPT6;
  wire [31:14] PPT7;
  wire [33:16] PPT8;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  wire S5;
  wire S6;
  wire S7;
  wire S8;
  UBR4BE_15_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_15_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_15_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_15_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_15_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_15_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBSD4VPPG_15_0_5 U6 (PPT5, S5, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBSD4VPPG_15_0_6 U7 (PPT6, S6, IN1, IN2SD__ds[6], IN2SD__d1[6], IN2SD__d0[6]);
  UBSD4VPPG_15_0_7 U8 (PPT7, S7, IN1, IN2SD__ds[7], IN2SD__d1[7], IN2SD__d0[7]);
  UBSD4VPPG_15_0_8 U9 (PPT8, S8, IN1, IN2SD__ds[8], IN2SD__d1[8], IN2SD__d0[8]);
  UBOne_18 U10 (B0);
  UBCMBIN_18_18_17_000 U11 (PP0, B0, PPT0);
  UBOne_20 U12 (B1);
  UBCMBIN_20_20_19_000 U13 (PP1, B1, PPT1, S0);
  UBOne_22 U14 (B2);
  UBCMBIN_22_22_21_000 U15 (PP2, B2, PPT2, S1);
  UBOne_24 U16 (B3);
  UBCMBIN_24_24_23_000 U17 (PP3, B3, PPT3, S2);
  UBOne_26 U18 (B4);
  UBCMBIN_26_26_25_000 U19 (PP4, B4, PPT4, S3);
  UBOne_28 U20 (B5);
  UBCMBIN_28_28_27_000 U21 (PP5, B5, PPT5, S4);
  UBOne_30 U22 (B6);
  UBCMBIN_30_30_29_000 U23 (PP6, B6, PPT6, S5);
  UBOne_32 U24 (B7);
  UBCMBIN_32_32_31_000 U25 (PP7, B7, PPT7, S6);
  UBCMBIN_33_16_14_000 U26 (PP8, PPT8, S7);
  UBOne_17 U27 (B8);
  UBCMBIN_17_17_16_000 U28 (PP9, B8, S8);
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

module UBSD4VPPG_15_0_5 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [27:10] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [26:10] W_R;
  wire W_T;
  SD41DDECON_5 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_5 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_27_10 U3 (PP, W_T, W_R, S);
  UBBBG_10 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_6 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [29:12] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [28:12] W_R;
  wire W_T;
  SD41DDECON_6 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_6 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_29_12 U3 (PP, W_T, W_R, S);
  UBBBG_12 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_7 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [31:14] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [30:14] W_R;
  wire W_T;
  SD41DDECON_7 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_7 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_31_14 U3 (PP, W_T, W_R, S);
  UBBBG_14 U4 (C, S);
endmodule

module UBSD4VPPG_15_0_8 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [33:16] PP;
  input [15:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [32:16] W_R;
  wire W_T;
  SD41DDECON_8 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_16_16 U1 (NZ);
  TCU4VPPG_16_0_8 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_33_16 U3 (PP, W_T, W_R, S);
  UBBBG_16 U4 (C, S);
endmodule

module UBTCCONV34_35_0 (O, I);
  output [36:0] O;
  input [35:0] I;
  UBTC1CON36_0 U0 (O[0], I[0]);
  UBTC1CON36_1 U1 (O[1], I[1]);
  UBTC1CON36_2 U2 (O[2], I[2]);
  UBTC1CON36_3 U3 (O[3], I[3]);
  UBTC1CON36_4 U4 (O[4], I[4]);
  UBTC1CON36_5 U5 (O[5], I[5]);
  UBTC1CON36_6 U6 (O[6], I[6]);
  UBTC1CON36_7 U7 (O[7], I[7]);
  UBTC1CON36_8 U8 (O[8], I[8]);
  UBTC1CON36_9 U9 (O[9], I[9]);
  UBTC1CON36_10 U10 (O[10], I[10]);
  UBTC1CON36_11 U11 (O[11], I[11]);
  UBTC1CON36_12 U12 (O[12], I[12]);
  UBTC1CON36_13 U13 (O[13], I[13]);
  UBTC1CON36_14 U14 (O[14], I[14]);
  UBTC1CON36_15 U15 (O[15], I[15]);
  UBTC1CON36_16 U16 (O[16], I[16]);
  UBTC1CON36_17 U17 (O[17], I[17]);
  UBTC1CON36_18 U18 (O[18], I[18]);
  UBTC1CON36_19 U19 (O[19], I[19]);
  UBTC1CON36_20 U20 (O[20], I[20]);
  UBTC1CON36_21 U21 (O[21], I[21]);
  UBTC1CON36_22 U22 (O[22], I[22]);
  UBTC1CON36_23 U23 (O[23], I[23]);
  UBTC1CON36_24 U24 (O[24], I[24]);
  UBTC1CON36_25 U25 (O[25], I[25]);
  UBTC1CON36_26 U26 (O[26], I[26]);
  UBTC1CON36_27 U27 (O[27], I[27]);
  UBTC1CON36_28 U28 (O[28], I[28]);
  UBTC1CON36_29 U29 (O[29], I[29]);
  UBTC1CON36_30 U30 (O[30], I[30]);
  UBTC1CON36_31 U31 (O[31], I[31]);
  UBTC1CON36_32 U32 (O[32], I[32]);
  UBTC1CON36_33 U33 (O[33], I[33]);
  UBTCTCONV_35_34 U34 (O[36:34], I[35:34]);
endmodule

