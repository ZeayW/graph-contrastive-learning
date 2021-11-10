/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_15_0_1000

  Number system: Unsigned binary
  Multiplicand length: 16
  Multiplier length: 16
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Overturned-stairs tree
  Final stage addition: Conditional sum adder
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

module UBHA_19(C, S, X, Y);
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

module UBHA_26(C, S, X, Y);
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

module UBHA_22(C, S, X, Y);
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

module UBFA_29(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBFA_30(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBHA_31(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_32(C, S, X, Y);
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

module UBHA_29(C, S, X, Y);
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

module UBHA_33(C, S, X, Y);
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

module UBHA_24(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_27(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UB1DCON_34(O, I);
  output O;
  input I;
  assign O = I;
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

module UBHA_18(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_21(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBHA_23(C, S, X, Y);
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

module UBHA_34(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
endmodule

module UBZero_35_35(O);
  output [35:35] O;
  assign O[35] = 0;
endmodule

module UBHCSuB_5_5(C, S, X, Y, Ci);
  output C;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_5 U0 (C, S, X, Y, Ci);
endmodule

module UBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
endmodule

module UBOne_6(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_6_6(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_6_6 U0 (Ci_0);
  UBOne_6 U1 (Ci_1);
  UBFA_6 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_6 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBHCSuB_6_5(C, S, X, Y, Ci);
  output C;
  output [6:5] S;
  input Ci;
  input [6:5] X;
  input [6:5] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire S_0;
  wire S_1;
  assign S[6] = ( S_0 & ( ~ Co ) ) | ( S_1 & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_5_5 U0 (Co, S[5], X[5], Y[5], Ci);
  UBCSuB_6_6 U1 (C_0, C_1, S_0, S_1, X[6], Y[6]);
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_7_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_7_7 U0 (Ci_0);
  UBOne_7 U1 (Ci_1);
  UBFA_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
endmodule

module UBOne_8(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_8_8(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_8_8 U0 (Ci_0);
  UBOne_8 U1 (Ci_1);
  UBFA_8 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_8 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_8_7(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [8:7] S_0;
  output [8:7] S_1;
  input [8:7] X;
  input [8:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[8] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[8] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_7_7 U0 (Ci_0, Ci_1, S_0[7], S_1[7], X[7], Y[7]);
  UBCSuB_8_8 U1 (Co_0, Co_1, So_0, So_1, X[8], Y[8]);
endmodule

module UBHCSuB_8_5(C, S, X, Y, Ci);
  output C;
  output [8:5] S;
  input Ci;
  input [8:5] X;
  input [8:5] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [8:7] S_0;
  wire [8:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Co ) ) | ( S_1[7] & Co );
  assign S[8] = ( S_0[8] & ( ~ Co ) ) | ( S_1[8] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_6_5 U0 (Co, S[6:5], X[6:5], Y[6:5], Ci);
  UBCSuB_8_7 U1 (C_0, C_1, S_0, S_1, X[8:7], Y[8:7]);
endmodule

module UBOne_9(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_9_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_9_9 U0 (Ci_0);
  UBOne_9 U1 (Ci_1);
  UBFA_9 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_9 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
endmodule

module UBOne_10(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_10_10(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_10_10 U0 (Ci_0);
  UBOne_10 U1 (Ci_1);
  UBFA_10 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_10 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_10_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [10:9] S_0;
  output [10:9] S_1;
  input [10:9] X;
  input [10:9] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[10] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[10] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_9_9 U0 (Ci_0, Ci_1, S_0[9], S_1[9], X[9], Y[9]);
  UBCSuB_10_10 U1 (Co_0, Co_1, So_0, So_1, X[10], Y[10]);
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_11_11(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_11_11 U0 (Ci_0);
  UBOne_11 U1 (Ci_1);
  UBFA_11 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_11 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_12_12(O);
  output [12:12] O;
  assign O[12] = 0;
endmodule

module UBOne_12(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_12_12(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_12_12 U0 (Ci_0);
  UBOne_12 U1 (Ci_1);
  UBFA_12 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_12 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_12_11(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [12:11] S_0;
  output [12:11] S_1;
  input [12:11] X;
  input [12:11] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[12] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[12] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_11_11 U0 (Ci_0, Ci_1, S_0[11], S_1[11], X[11], Y[11]);
  UBCSuB_12_12 U1 (Co_0, Co_1, So_0, So_1, X[12], Y[12]);
endmodule

module UBCSuB_12_9(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [12:9] S_0;
  output [12:9] S_1;
  input [12:9] X;
  input [12:9] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [12:11] So_0;
  wire [12:11] So_1;
  assign S_0[11] = ( So_0[11] & ( ~ Ci_0 ) ) | ( So_1[11] & Ci_0 );
  assign S_0[12] = ( So_0[12] & ( ~ Ci_0 ) ) | ( So_1[12] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[11] = ( So_0[11] & ( ~ Ci_1 ) ) | ( So_1[11] & Ci_1 );
  assign S_1[12] = ( So_0[12] & ( ~ Ci_1 ) ) | ( So_1[12] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_10_9 U0 (Ci_0, Ci_1, S_0[10:9], S_1[10:9], X[10:9], Y[10:9]);
  UBCSuB_12_11 U1 (Co_0, Co_1, So_0, So_1, X[12:11], Y[12:11]);
endmodule

module UBHCSuB_12_5(C, S, X, Y, Ci);
  output C;
  output [12:5] S;
  input Ci;
  input [12:5] X;
  input [12:5] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [12:9] S_0;
  wire [12:9] S_1;
  assign S[9] = ( S_0[9] & ( ~ Co ) ) | ( S_1[9] & Co );
  assign S[10] = ( S_0[10] & ( ~ Co ) ) | ( S_1[10] & Co );
  assign S[11] = ( S_0[11] & ( ~ Co ) ) | ( S_1[11] & Co );
  assign S[12] = ( S_0[12] & ( ~ Co ) ) | ( S_1[12] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_8_5 U0 (Co, S[8:5], X[8:5], Y[8:5], Ci);
  UBCSuB_12_9 U1 (C_0, C_1, S_0, S_1, X[12:9], Y[12:9]);
endmodule

module UBOne_13(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_13_13(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_13_13 U0 (Ci_0);
  UBOne_13 U1 (Ci_1);
  UBFA_13 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_13 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
endmodule

module UBOne_14(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_14_14(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_14_14 U0 (Ci_0);
  UBOne_14 U1 (Ci_1);
  UBFA_14 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_14 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_14_13(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [14:13] S_0;
  output [14:13] S_1;
  input [14:13] X;
  input [14:13] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[14] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[14] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_13_13 U0 (Ci_0, Ci_1, S_0[13], S_1[13], X[13], Y[13]);
  UBCSuB_14_14 U1 (Co_0, Co_1, So_0, So_1, X[14], Y[14]);
endmodule

module UBOne_15(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_15_15(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_15_15 U0 (Ci_0);
  UBOne_15 U1 (Ci_1);
  UBFA_15 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_15 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
endmodule

module UBOne_16(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_16_16(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_16_16 U0 (Ci_0);
  UBOne_16 U1 (Ci_1);
  UBFA_16 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_16 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_16_15(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [16:15] S_0;
  output [16:15] S_1;
  input [16:15] X;
  input [16:15] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[16] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[16] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_15_15 U0 (Ci_0, Ci_1, S_0[15], S_1[15], X[15], Y[15]);
  UBCSuB_16_16 U1 (Co_0, Co_1, So_0, So_1, X[16], Y[16]);
endmodule

module UBCSuB_16_13(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [16:13] S_0;
  output [16:13] S_1;
  input [16:13] X;
  input [16:13] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [16:15] So_0;
  wire [16:15] So_1;
  assign S_0[15] = ( So_0[15] & ( ~ Ci_0 ) ) | ( So_1[15] & Ci_0 );
  assign S_0[16] = ( So_0[16] & ( ~ Ci_0 ) ) | ( So_1[16] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[15] = ( So_0[15] & ( ~ Ci_1 ) ) | ( So_1[15] & Ci_1 );
  assign S_1[16] = ( So_0[16] & ( ~ Ci_1 ) ) | ( So_1[16] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_14_13 U0 (Ci_0, Ci_1, S_0[14:13], S_1[14:13], X[14:13], Y[14:13]);
  UBCSuB_16_15 U1 (Co_0, Co_1, So_0, So_1, X[16:15], Y[16:15]);
endmodule

module UBZero_17_17(O);
  output [17:17] O;
  assign O[17] = 0;
endmodule

module UBCSuB_17_17(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_17_17 U0 (Ci_0);
  UBOne_17 U1 (Ci_1);
  UBFA_17 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_17 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_18_18(O);
  output [18:18] O;
  assign O[18] = 0;
endmodule

module UBCSuB_18_18(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_18_18 U0 (Ci_0);
  UBOne_18 U1 (Ci_1);
  UBFA_18 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_18 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_18_17(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [18:17] S_0;
  output [18:17] S_1;
  input [18:17] X;
  input [18:17] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[18] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[18] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_17_17 U0 (Ci_0, Ci_1, S_0[17], S_1[17], X[17], Y[17]);
  UBCSuB_18_18 U1 (Co_0, Co_1, So_0, So_1, X[18], Y[18]);
endmodule

module UBZero_19_19(O);
  output [19:19] O;
  assign O[19] = 0;
endmodule

module UBOne_19(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_19_19(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_19_19 U0 (Ci_0);
  UBOne_19 U1 (Ci_1);
  UBFA_19 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_19 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_20_20(O);
  output [20:20] O;
  assign O[20] = 0;
endmodule

module UBCSuB_20_20(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_20_20 U0 (Ci_0);
  UBOne_20 U1 (Ci_1);
  UBFA_20 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_20 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_20_19(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [20:19] S_0;
  output [20:19] S_1;
  input [20:19] X;
  input [20:19] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[20] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[20] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_19_19 U0 (Ci_0, Ci_1, S_0[19], S_1[19], X[19], Y[19]);
  UBCSuB_20_20 U1 (Co_0, Co_1, So_0, So_1, X[20], Y[20]);
endmodule

module UBCSuB_20_17(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [20:17] S_0;
  output [20:17] S_1;
  input [20:17] X;
  input [20:17] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [20:19] So_0;
  wire [20:19] So_1;
  assign S_0[19] = ( So_0[19] & ( ~ Ci_0 ) ) | ( So_1[19] & Ci_0 );
  assign S_0[20] = ( So_0[20] & ( ~ Ci_0 ) ) | ( So_1[20] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[19] = ( So_0[19] & ( ~ Ci_1 ) ) | ( So_1[19] & Ci_1 );
  assign S_1[20] = ( So_0[20] & ( ~ Ci_1 ) ) | ( So_1[20] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_18_17 U0 (Ci_0, Ci_1, S_0[18:17], S_1[18:17], X[18:17], Y[18:17]);
  UBCSuB_20_19 U1 (Co_0, Co_1, So_0, So_1, X[20:19], Y[20:19]);
endmodule

module UBCSuB_20_13(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [20:13] S_0;
  output [20:13] S_1;
  input [20:13] X;
  input [20:13] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [20:17] So_0;
  wire [20:17] So_1;
  assign S_0[17] = ( So_0[17] & ( ~ Ci_0 ) ) | ( So_1[17] & Ci_0 );
  assign S_0[18] = ( So_0[18] & ( ~ Ci_0 ) ) | ( So_1[18] & Ci_0 );
  assign S_0[19] = ( So_0[19] & ( ~ Ci_0 ) ) | ( So_1[19] & Ci_0 );
  assign S_0[20] = ( So_0[20] & ( ~ Ci_0 ) ) | ( So_1[20] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[17] = ( So_0[17] & ( ~ Ci_1 ) ) | ( So_1[17] & Ci_1 );
  assign S_1[18] = ( So_0[18] & ( ~ Ci_1 ) ) | ( So_1[18] & Ci_1 );
  assign S_1[19] = ( So_0[19] & ( ~ Ci_1 ) ) | ( So_1[19] & Ci_1 );
  assign S_1[20] = ( So_0[20] & ( ~ Ci_1 ) ) | ( So_1[20] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_16_13 U0 (Ci_0, Ci_1, S_0[16:13], S_1[16:13], X[16:13], Y[16:13]);
  UBCSuB_20_17 U1 (Co_0, Co_1, So_0, So_1, X[20:17], Y[20:17]);
endmodule

module UBHCSuB_20_5(C, S, X, Y, Ci);
  output C;
  output [20:5] S;
  input Ci;
  input [20:5] X;
  input [20:5] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [20:13] S_0;
  wire [20:13] S_1;
  assign S[13] = ( S_0[13] & ( ~ Co ) ) | ( S_1[13] & Co );
  assign S[14] = ( S_0[14] & ( ~ Co ) ) | ( S_1[14] & Co );
  assign S[15] = ( S_0[15] & ( ~ Co ) ) | ( S_1[15] & Co );
  assign S[16] = ( S_0[16] & ( ~ Co ) ) | ( S_1[16] & Co );
  assign S[17] = ( S_0[17] & ( ~ Co ) ) | ( S_1[17] & Co );
  assign S[18] = ( S_0[18] & ( ~ Co ) ) | ( S_1[18] & Co );
  assign S[19] = ( S_0[19] & ( ~ Co ) ) | ( S_1[19] & Co );
  assign S[20] = ( S_0[20] & ( ~ Co ) ) | ( S_1[20] & Co );
  assign C = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_12_5 U0 (Co, S[12:5], X[12:5], Y[12:5], Ci);
  UBCSuB_20_13 U1 (C_0, C_1, S_0, S_1, X[20:13], Y[20:13]);
endmodule

module UBZero_21_21(O);
  output [21:21] O;
  assign O[21] = 0;
endmodule

module UBOne_21(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_21_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_21_21 U0 (Ci_0);
  UBOne_21 U1 (Ci_1);
  UBFA_21 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_21 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_22_22(O);
  output [22:22] O;
  assign O[22] = 0;
endmodule

module UBCSuB_22_22(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_22_22 U0 (Ci_0);
  UBOne_22 U1 (Ci_1);
  UBFA_22 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_22 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_22_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [22:21] S_0;
  output [22:21] S_1;
  input [22:21] X;
  input [22:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[22] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[22] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_21_21 U0 (Ci_0, Ci_1, S_0[21], S_1[21], X[21], Y[21]);
  UBCSuB_22_22 U1 (Co_0, Co_1, So_0, So_1, X[22], Y[22]);
endmodule

module UBZero_23_23(O);
  output [23:23] O;
  assign O[23] = 0;
endmodule

module UBOne_23(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_23_23(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_23_23 U0 (Ci_0);
  UBOne_23 U1 (Ci_1);
  UBFA_23 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_23 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_24_24(O);
  output [24:24] O;
  assign O[24] = 0;
endmodule

module UBCSuB_24_24(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_24_24 U0 (Ci_0);
  UBOne_24 U1 (Ci_1);
  UBFA_24 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_24 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_24_23(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [24:23] S_0;
  output [24:23] S_1;
  input [24:23] X;
  input [24:23] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[24] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[24] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_23_23 U0 (Ci_0, Ci_1, S_0[23], S_1[23], X[23], Y[23]);
  UBCSuB_24_24 U1 (Co_0, Co_1, So_0, So_1, X[24], Y[24]);
endmodule

module UBCSuB_24_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [24:21] S_0;
  output [24:21] S_1;
  input [24:21] X;
  input [24:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [24:23] So_0;
  wire [24:23] So_1;
  assign S_0[23] = ( So_0[23] & ( ~ Ci_0 ) ) | ( So_1[23] & Ci_0 );
  assign S_0[24] = ( So_0[24] & ( ~ Ci_0 ) ) | ( So_1[24] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[23] = ( So_0[23] & ( ~ Ci_1 ) ) | ( So_1[23] & Ci_1 );
  assign S_1[24] = ( So_0[24] & ( ~ Ci_1 ) ) | ( So_1[24] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_22_21 U0 (Ci_0, Ci_1, S_0[22:21], S_1[22:21], X[22:21], Y[22:21]);
  UBCSuB_24_23 U1 (Co_0, Co_1, So_0, So_1, X[24:23], Y[24:23]);
endmodule

module UBZero_25_25(O);
  output [25:25] O;
  assign O[25] = 0;
endmodule

module UBOne_25(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_25_25(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_25_25 U0 (Ci_0);
  UBOne_25 U1 (Ci_1);
  UBFA_25 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_25 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_26_26(O);
  output [26:26] O;
  assign O[26] = 0;
endmodule

module UBCSuB_26_26(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_26_26 U0 (Ci_0);
  UBOne_26 U1 (Ci_1);
  UBFA_26 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_26 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_26_25(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [26:25] S_0;
  output [26:25] S_1;
  input [26:25] X;
  input [26:25] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[26] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[26] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_25_25 U0 (Ci_0, Ci_1, S_0[25], S_1[25], X[25], Y[25]);
  UBCSuB_26_26 U1 (Co_0, Co_1, So_0, So_1, X[26], Y[26]);
endmodule

module UBZero_27_27(O);
  output [27:27] O;
  assign O[27] = 0;
endmodule

module UBOne_27(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_27_27(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_27_27 U0 (Ci_0);
  UBOne_27 U1 (Ci_1);
  UBFA_27 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_27 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_28_28(O);
  output [28:28] O;
  assign O[28] = 0;
endmodule

module UBCSuB_28_28(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_28_28 U0 (Ci_0);
  UBOne_28 U1 (Ci_1);
  UBFA_28 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_28 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_28_27(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [28:27] S_0;
  output [28:27] S_1;
  input [28:27] X;
  input [28:27] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[28] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[28] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_27_27 U0 (Ci_0, Ci_1, S_0[27], S_1[27], X[27], Y[27]);
  UBCSuB_28_28 U1 (Co_0, Co_1, So_0, So_1, X[28], Y[28]);
endmodule

module UBCSuB_28_25(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [28:25] S_0;
  output [28:25] S_1;
  input [28:25] X;
  input [28:25] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [28:27] So_0;
  wire [28:27] So_1;
  assign S_0[27] = ( So_0[27] & ( ~ Ci_0 ) ) | ( So_1[27] & Ci_0 );
  assign S_0[28] = ( So_0[28] & ( ~ Ci_0 ) ) | ( So_1[28] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[27] = ( So_0[27] & ( ~ Ci_1 ) ) | ( So_1[27] & Ci_1 );
  assign S_1[28] = ( So_0[28] & ( ~ Ci_1 ) ) | ( So_1[28] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_26_25 U0 (Ci_0, Ci_1, S_0[26:25], S_1[26:25], X[26:25], Y[26:25]);
  UBCSuB_28_27 U1 (Co_0, Co_1, So_0, So_1, X[28:27], Y[28:27]);
endmodule

module UBCSuB_28_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [28:21] S_0;
  output [28:21] S_1;
  input [28:21] X;
  input [28:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [28:25] So_0;
  wire [28:25] So_1;
  assign S_0[25] = ( So_0[25] & ( ~ Ci_0 ) ) | ( So_1[25] & Ci_0 );
  assign S_0[26] = ( So_0[26] & ( ~ Ci_0 ) ) | ( So_1[26] & Ci_0 );
  assign S_0[27] = ( So_0[27] & ( ~ Ci_0 ) ) | ( So_1[27] & Ci_0 );
  assign S_0[28] = ( So_0[28] & ( ~ Ci_0 ) ) | ( So_1[28] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[25] = ( So_0[25] & ( ~ Ci_1 ) ) | ( So_1[25] & Ci_1 );
  assign S_1[26] = ( So_0[26] & ( ~ Ci_1 ) ) | ( So_1[26] & Ci_1 );
  assign S_1[27] = ( So_0[27] & ( ~ Ci_1 ) ) | ( So_1[27] & Ci_1 );
  assign S_1[28] = ( So_0[28] & ( ~ Ci_1 ) ) | ( So_1[28] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_24_21 U0 (Ci_0, Ci_1, S_0[24:21], S_1[24:21], X[24:21], Y[24:21]);
  UBCSuB_28_25 U1 (Co_0, Co_1, So_0, So_1, X[28:25], Y[28:25]);
endmodule

module UBZero_29_29(O);
  output [29:29] O;
  assign O[29] = 0;
endmodule

module UBOne_29(O);
  output O;
  assign O = 1;
endmodule

module UBCSuB_29_29(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_29_29 U0 (Ci_0);
  UBOne_29 U1 (Ci_1);
  UBFA_29 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_29 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_30_30(O);
  output [30:30] O;
  assign O[30] = 0;
endmodule

module UBCSuB_30_30(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_30_30 U0 (Ci_0);
  UBOne_30 U1 (Ci_1);
  UBFA_30 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_30 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_30_29(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [30:29] S_0;
  output [30:29] S_1;
  input [30:29] X;
  input [30:29] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[30] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[30] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_29_29 U0 (Ci_0, Ci_1, S_0[29], S_1[29], X[29], Y[29]);
  UBCSuB_30_30 U1 (Co_0, Co_1, So_0, So_1, X[30], Y[30]);
endmodule

module UBZero_31_31(O);
  output [31:31] O;
  assign O[31] = 0;
endmodule

module UBOne_31(O);
  output O;
  assign O = 1;
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

module UBCSuB_31_31(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_31_31 U0 (Ci_0);
  UBOne_31 U1 (Ci_1);
  UBFA_31 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_31 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_32_32(O);
  output [32:32] O;
  assign O[32] = 0;
endmodule

module UBFA_32(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSuB_32_32(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_32_32 U0 (Ci_0);
  UBOne_32 U1 (Ci_1);
  UBFA_32 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_32 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_32_31(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [32:31] S_0;
  output [32:31] S_1;
  input [32:31] X;
  input [32:31] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[32] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[32] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_31_31 U0 (Ci_0, Ci_1, S_0[31], S_1[31], X[31], Y[31]);
  UBCSuB_32_32 U1 (Co_0, Co_1, So_0, So_1, X[32], Y[32]);
endmodule

module UBCSuB_32_29(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [32:29] S_0;
  output [32:29] S_1;
  input [32:29] X;
  input [32:29] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [32:31] So_0;
  wire [32:31] So_1;
  assign S_0[31] = ( So_0[31] & ( ~ Ci_0 ) ) | ( So_1[31] & Ci_0 );
  assign S_0[32] = ( So_0[32] & ( ~ Ci_0 ) ) | ( So_1[32] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[31] = ( So_0[31] & ( ~ Ci_1 ) ) | ( So_1[31] & Ci_1 );
  assign S_1[32] = ( So_0[32] & ( ~ Ci_1 ) ) | ( So_1[32] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_30_29 U0 (Ci_0, Ci_1, S_0[30:29], S_1[30:29], X[30:29], Y[30:29]);
  UBCSuB_32_31 U1 (Co_0, Co_1, So_0, So_1, X[32:31], Y[32:31]);
endmodule

module UBZero_33_33(O);
  output [33:33] O;
  assign O[33] = 0;
endmodule

module UBOne_33(O);
  output O;
  assign O = 1;
endmodule

module UBFA_33(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSuB_33_33(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_33_33 U0 (Ci_0);
  UBOne_33 U1 (Ci_1);
  UBFA_33 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_33 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_34_34(O);
  output [34:34] O;
  assign O[34] = 0;
endmodule

module UBOne_34(O);
  output O;
  assign O = 1;
endmodule

module UBFA_34(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSuB_34_34(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_34_34 U0 (Ci_0);
  UBOne_34 U1 (Ci_1);
  UBFA_34 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_34 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_34_33(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [34:33] S_0;
  output [34:33] S_1;
  input [34:33] X;
  input [34:33] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire So_0;
  wire So_1;
  assign S_0[34] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[34] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_33_33 U0 (Ci_0, Ci_1, S_0[33], S_1[33], X[33], Y[33]);
  UBCSuB_34_34 U1 (Co_0, Co_1, So_0, So_1, X[34], Y[34]);
endmodule

module UBOne_35(O);
  output O;
  assign O = 1;
endmodule

module UBFA_35(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSuB_35_35(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output S_0;
  output S_1;
  input X;
  input Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBZero_35_35 U0 (Ci_0);
  UBOne_35 U1 (Ci_1);
  UBFA_35 U2 (Co_0, S_0, X, Y, Ci_0);
  UBFA_35 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBCSuB_35_33(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [35:33] S_0;
  output [35:33] S_1;
  input [35:33] X;
  input [35:33] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [35:35] So_0;
  wire [35:35] So_1;
  assign S_0[35] = ( So_0 & ( ~ Ci_0 ) ) | ( So_1 & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[35] = ( So_0 & ( ~ Ci_1 ) ) | ( So_1 & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_34_33 U0 (Ci_0, Ci_1, S_0[34:33], S_1[34:33], X[34:33], Y[34:33]);
  UBCSuB_35_35 U1 (Co_0, Co_1, So_0, So_1, X[35], Y[35]);
endmodule

module UBCSuB_35_29(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [35:29] S_0;
  output [35:29] S_1;
  input [35:29] X;
  input [35:29] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [35:33] So_0;
  wire [35:33] So_1;
  assign S_0[33] = ( So_0[33] & ( ~ Ci_0 ) ) | ( So_1[33] & Ci_0 );
  assign S_0[34] = ( So_0[34] & ( ~ Ci_0 ) ) | ( So_1[34] & Ci_0 );
  assign S_0[35] = ( So_0[35] & ( ~ Ci_0 ) ) | ( So_1[35] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[33] = ( So_0[33] & ( ~ Ci_1 ) ) | ( So_1[33] & Ci_1 );
  assign S_1[34] = ( So_0[34] & ( ~ Ci_1 ) ) | ( So_1[34] & Ci_1 );
  assign S_1[35] = ( So_0[35] & ( ~ Ci_1 ) ) | ( So_1[35] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_32_29 U0 (Ci_0, Ci_1, S_0[32:29], S_1[32:29], X[32:29], Y[32:29]);
  UBCSuB_35_33 U1 (Co_0, Co_1, So_0, So_1, X[35:33], Y[35:33]);
endmodule

module UBCSuB_35_21(C_0, C_1, S_0, S_1, X, Y);
  output C_0;
  output C_1;
  output [35:21] S_0;
  output [35:21] S_1;
  input [35:21] X;
  input [35:21] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [35:29] So_0;
  wire [35:29] So_1;
  assign S_0[29] = ( So_0[29] & ( ~ Ci_0 ) ) | ( So_1[29] & Ci_0 );
  assign S_0[30] = ( So_0[30] & ( ~ Ci_0 ) ) | ( So_1[30] & Ci_0 );
  assign S_0[31] = ( So_0[31] & ( ~ Ci_0 ) ) | ( So_1[31] & Ci_0 );
  assign S_0[32] = ( So_0[32] & ( ~ Ci_0 ) ) | ( So_1[32] & Ci_0 );
  assign S_0[33] = ( So_0[33] & ( ~ Ci_0 ) ) | ( So_1[33] & Ci_0 );
  assign S_0[34] = ( So_0[34] & ( ~ Ci_0 ) ) | ( So_1[34] & Ci_0 );
  assign S_0[35] = ( So_0[35] & ( ~ Ci_0 ) ) | ( So_1[35] & Ci_0 );
  assign C_0 = ( Co_0 & ( ~ Ci_0 ) ) | ( Co_1 & Ci_0 );
  assign S_1[29] = ( So_0[29] & ( ~ Ci_1 ) ) | ( So_1[29] & Ci_1 );
  assign S_1[30] = ( So_0[30] & ( ~ Ci_1 ) ) | ( So_1[30] & Ci_1 );
  assign S_1[31] = ( So_0[31] & ( ~ Ci_1 ) ) | ( So_1[31] & Ci_1 );
  assign S_1[32] = ( So_0[32] & ( ~ Ci_1 ) ) | ( So_1[32] & Ci_1 );
  assign S_1[33] = ( So_0[33] & ( ~ Ci_1 ) ) | ( So_1[33] & Ci_1 );
  assign S_1[34] = ( So_0[34] & ( ~ Ci_1 ) ) | ( So_1[34] & Ci_1 );
  assign S_1[35] = ( So_0[35] & ( ~ Ci_1 ) ) | ( So_1[35] & Ci_1 );
  assign C_1 = ( Co_0 & ( ~ Ci_1 ) ) | ( Co_1 & Ci_1 );
  UBCSuB_28_21 U0 (Ci_0, Ci_1, S_0[28:21], S_1[28:21], X[28:21], Y[28:21]);
  UBCSuB_35_29 U1 (Co_0, Co_1, So_0, So_1, X[35:29], Y[35:29]);
endmodule

module UBPriCSuA_35_5(S, X, Y, Cin);
  output [36:5] S;
  input Cin;
  input [35:5] X;
  input [35:5] Y;
  wire C_0;
  wire C_1;
  wire Co;
  wire [35:21] S_0;
  wire [35:21] S_1;
  assign S[21] = ( S_0[21] & ( ~ Co ) ) | ( S_1[21] & Co );
  assign S[22] = ( S_0[22] & ( ~ Co ) ) | ( S_1[22] & Co );
  assign S[23] = ( S_0[23] & ( ~ Co ) ) | ( S_1[23] & Co );
  assign S[24] = ( S_0[24] & ( ~ Co ) ) | ( S_1[24] & Co );
  assign S[25] = ( S_0[25] & ( ~ Co ) ) | ( S_1[25] & Co );
  assign S[26] = ( S_0[26] & ( ~ Co ) ) | ( S_1[26] & Co );
  assign S[27] = ( S_0[27] & ( ~ Co ) ) | ( S_1[27] & Co );
  assign S[28] = ( S_0[28] & ( ~ Co ) ) | ( S_1[28] & Co );
  assign S[29] = ( S_0[29] & ( ~ Co ) ) | ( S_1[29] & Co );
  assign S[30] = ( S_0[30] & ( ~ Co ) ) | ( S_1[30] & Co );
  assign S[31] = ( S_0[31] & ( ~ Co ) ) | ( S_1[31] & Co );
  assign S[32] = ( S_0[32] & ( ~ Co ) ) | ( S_1[32] & Co );
  assign S[33] = ( S_0[33] & ( ~ Co ) ) | ( S_1[33] & Co );
  assign S[34] = ( S_0[34] & ( ~ Co ) ) | ( S_1[34] & Co );
  assign S[35] = ( S_0[35] & ( ~ Co ) ) | ( S_1[35] & Co );
  assign S[36] = ( C_0 & ( ~ Co ) ) | ( C_1 & Co );
  UBHCSuB_20_5 U0 (Co, S[20:5], X[20:5], Y[20:5], Cin);
  UBCSuB_35_21 U1 (C_0, C_1, S_0, S_1, X[35:21], Y[35:21]);
endmodule

module UBTC1CON37_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_31(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_32(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON37_33(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_36_34(O, I);
  output [37:34] O;
  input [36:34] I;
  assign O[34] = ~ I[34];
  assign O[35] = ~ I[35] ^ ( I[34] );
  assign O[36] = ~ I[36] ^ ( I[35] | I[34] );
  assign O[37] = ~ ( I[36] | I[35] | I[34] );
endmodule

module Multiplier_15_0_1000(P, IN1, IN2);
  output [31:0] P;
  input [15:0] IN1;
  input [15:0] IN2;
  wire [37:0] W;
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
  MultUB_R4B_OS_CSu000 U0 (W, IN1, IN2);
endmodule

module CSA_18_0_20_0_22_000 (C, S, X, Y, Z);
  output [21:1] C;
  output [22:0] S;
  input [18:0] X;
  input [20:0] Y;
  input [22:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_18_2 U1 (C[19:3], S[18:2], Z[18:2], Y[18:2], X[18:2]);
  PureCSHA_20_19 U2 (C[21:20], S[20:19], Z[20:19], Y[20:19]);
  UBCON_22_21 U3 (S[22:21], Z[22:21]);
endmodule

module CSA_21_1_22_0_27_000 (C, S, X, Y, Z);
  output [23:2] C;
  output [27:0] S;
  input [21:1] X;
  input [22:0] Y;
  input [27:7] Z;
  UB1DCON_0 U0 (S[0], Y[0]);
  PureCSHA_6_1 U1 (C[7:2], S[6:1], X[6:1], Y[6:1]);
  PureCSA_21_7 U2 (C[22:8], S[21:7], Z[21:7], X[21:7], Y[21:7]);
  UBHA_22 U3 (C[23], S[22], Z[22], Y[22]);
  UBCON_27_23 U4 (S[27:23], Z[27:23]);
endmodule

module CSA_23_2_27_0_34_000 (C, S, X, Y, Z);
  output [28:3] C;
  output [34:0] S;
  input [23:2] X;
  input [27:0] Y;
  input [34:11] Z;
  UBCON_1_0 U0 (S[1:0], Y[1:0]);
  PureCSHA_10_2 U1 (C[11:3], S[10:2], X[10:2], Y[10:2]);
  PureCSA_23_11 U2 (C[24:12], S[23:11], Z[23:11], X[23:11], Y[23:11]);
  PureCSHA_27_24 U3 (C[28:25], S[27:24], Z[27:24], Y[27:24]);
  UBCON_34_28 U4 (S[34:28], Z[34:28]);
endmodule

module CSA_24_4_26_6_28_000 (C, S, X, Y, Z);
  output [27:7] C;
  output [28:4] S;
  input [24:4] X;
  input [26:6] Y;
  input [28:8] Z;
  UBCON_5_4 U0 (S[5:4], X[5:4]);
  PureCSHA_7_6 U1 (C[8:7], S[7:6], Y[7:6], X[7:6]);
  PureCSA_24_8 U2 (C[25:9], S[24:8], Z[24:8], Y[24:8], X[24:8]);
  PureCSHA_26_25 U3 (C[27:26], S[26:25], Z[26:25], Y[26:25]);
  UBCON_28_27 U4 (S[28:27], Z[28:27]);
endmodule

module CSA_28_3_34_0_33_000 (C, S, X, Y, Z);
  output [34:4] C;
  output [34:0] S;
  input [28:3] X;
  input [34:0] Y;
  input [33:4] Z;
  UBCON_2_0 U0 (S[2:0], Y[2:0]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
  PureCSA_28_4 U2 (C[29:5], S[28:4], Z[28:4], X[28:4], Y[28:4]);
  PureCSHA_33_29 U3 (C[34:30], S[33:29], Y[33:29], Z[33:29]);
  UB1DCON_34 U4 (S[34], Y[34]);
endmodule

module CSA_28_4_33_13_33000 (C, S, X, Y, Z);
  output [34:11] C;
  output [33:4] S;
  input [28:4] X;
  input [33:13] Y;
  input [33:10] Z;
  UBCON_9_4 U0 (S[9:4], X[9:4]);
  PureCSHA_12_10 U1 (C[13:11], S[12:10], Z[12:10], X[12:10]);
  PureCSA_28_13 U2 (C[29:14], S[28:13], Y[28:13], Z[28:13], X[28:13]);
  PureCSHA_33_29 U3 (C[34:30], S[33:29], Z[33:29], Y[33:29]);
endmodule

module CSA_30_10_32_12_3000 (C, S, X, Y, Z);
  output [33:13] C;
  output [33:10] S;
  input [30:10] X;
  input [32:12] Y;
  input [33:14] Z;
  UBCON_11_10 U0 (S[11:10], X[11:10]);
  PureCSHA_13_12 U1 (C[14:13], S[13:12], Y[13:12], X[13:12]);
  PureCSA_30_14 U2 (C[31:15], S[30:14], Z[30:14], Y[30:14], X[30:14]);
  PureCSHA_32_31 U3 (C[33:32], S[32:31], Z[32:31], Y[32:31]);
  UB1DCON_33 U4 (S[33], Z[33]);
endmodule

module CSA_34_4_34_0_17_000 (C, S, X, Y, Z);
  output [35:5] C;
  output [34:0] S;
  input [34:4] X;
  input [34:0] Y;
  input [17:16] Z;
  UBCON_3_0 U0 (S[3:0], Y[3:0]);
  PureCSHA_15_4 U1 (C[16:5], S[15:4], X[15:4], Y[15:4]);
  PureCSA_17_16 U2 (C[18:17], S[17:16], Z[17:16], X[17:16], Y[17:16]);
  PureCSHA_34_18 U3 (C[35:19], S[34:18], X[34:18], Y[34:18]);
endmodule

module MultUB_R4B_OS_CSu000 (P, IN1, IN2);
  output [37:0] P;
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
  wire [35:5] S1;
  wire [34:0] S2;
  wire [36:0] UP;
  UBR4BPPG_15_0_15_000 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9, IN1, IN2);
  OSTR_18_0_20_0_22000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  UBCSu_35_5_34_0 U2 (UP, S1, S2);
  UBTCCONV34_36_0 U3 (P, UP);
endmodule

module OSBODY_18_0_20_0_000 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  output [34:4] S0;
  output [34:0] S1;
  output [17:16] S2;
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
  wire [28:3] W0;
  wire [34:0] W1;
  wire [33:4] W2;
  OSBODY_18_0_20_0_001 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  OSCON_28_3_34_0_3000 U1 (S0, S1, S2, W0, W1, W2, PP9);
endmodule

module OSBODY_18_0_20_0_001 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  output [28:3] S0;
  output [34:0] S1;
  output [33:4] S2;
  input [18:0] PP0;
  input [20:0] PP1;
  input [22:2] PP2;
  input [24:4] PP3;
  input [26:6] PP4;
  input [28:8] PP5;
  input [30:10] PP6;
  input [32:12] PP7;
  input [33:14] PP8;
  wire [23:2] W0;
  wire [27:0] W1;
  wire [28:4] W2;
  wire [33:13] W3;
  wire [33:10] W4;
  OSBODY_18_0_20_0_002 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5);
  UBARYACC_30_10_32000 U1 (W3, W4, PP6, PP7, PP8);
  OSCON_23_2_27_0_2000 U2 (S0, S1, S2, W0, W1, W2, W3, W4);
endmodule

module OSBODY_18_0_20_0_002 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [23:2] S0;
  output [27:0] S1;
  output [28:4] S2;
  input [18:0] PP0;
  input [20:0] PP1;
  input [22:2] PP2;
  input [24:4] PP3;
  input [26:6] PP4;
  input [28:8] PP5;
  wire [21:1] W0;
  wire [22:0] W1;
  wire [24:4] W2;
  wire [26:6] W3;
  wire [28:8] W4;
  OSBODY_18_0_20_0_003 U0 (W0, W1, W2, PP0, PP1, PP2, PP3);
  UBARYACC_26_6_28_000 U1 (W3, W4, PP4, PP5);
  OSCON_21_1_22_0_2000 U2 (S0, S1, S2, W0, W1, W2, W3, W4);
endmodule

module OSBODY_18_0_20_0_003 (S0, S1, S2, PP0, PP1, PP2, PP3);
  output [21:1] S0;
  output [22:0] S1;
  output [24:4] S2;
  input [18:0] PP0;
  input [20:0] PP1;
  input [22:2] PP2;
  input [24:4] PP3;
  CSA_18_0_20_0_22_000 U0 (S0, S1, PP0, PP1, PP2);
  UBCON_24_4 U1 (S2, PP3);
endmodule

module OSCON_21_1_22_0_2000 (S0, S1, S2, IN0, IN1, IN2, IN3, IN4);
  output [23:2] S0;
  output [27:0] S1;
  output [28:4] S2;
  input [21:1] IN0;
  input [22:0] IN1;
  input [24:4] IN2;
  input [26:6] IN3;
  input [28:8] IN4;
  wire [27:7] W;
  CSA_24_4_26_6_28_000 U0 (W, S2, IN2, IN3, IN4);
  CSA_21_1_22_0_27_000 U1 (S0, S1, IN0, IN1, W);
endmodule

module OSCON_23_2_27_0_2000 (S0, S1, S2, IN0, IN1, IN2, IN3, IN4);
  output [28:3] S0;
  output [34:0] S1;
  output [33:4] S2;
  input [23:2] IN0;
  input [27:0] IN1;
  input [28:4] IN2;
  input [33:13] IN3;
  input [33:10] IN4;
  wire [34:11] W;
  CSA_28_4_33_13_33000 U0 (W, S2, IN2, IN3, IN4);
  CSA_23_2_27_0_34_000 U1 (S0, S1, IN0, IN1, W);
endmodule

module OSCON_28_3_34_0_3000 (S0, S1, S2, IN0, IN1, IN2, IN3);
  output [34:4] S0;
  output [34:0] S1;
  output [17:16] S2;
  input [28:3] IN0;
  input [34:0] IN1;
  input [33:4] IN2;
  input [17:16] IN3;
  UBCON_17_16 U0 (S2, IN3);
  CSA_28_3_34_0_33_000 U1 (S0, S1, IN0, IN1, IN2);
endmodule

module OSTR_18_0_20_0_22000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  output [35:5] S1;
  output [34:0] S2;
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
  wire [34:4] W0;
  wire [34:0] W1;
  wire [17:16] W2;
  OSBODY_18_0_20_0_000 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, PP9);
  CSA_34_4_34_0_17_000 U1 (S1, S2, W0, W1, W2);
endmodule

module PureCSA_17_16 (C, S, X, Y, Z);
  output [18:17] C;
  output [17:16] S;
  input [17:16] X;
  input [17:16] Y;
  input [17:16] Z;
  UBFA_16 U0 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U1 (C[18], S[17], X[17], Y[17], Z[17]);
endmodule

module PureCSA_18_2 (C, S, X, Y, Z);
  output [19:3] C;
  output [18:2] S;
  input [18:2] X;
  input [18:2] Y;
  input [18:2] Z;
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
  UBFA_18 U16 (C[19], S[18], X[18], Y[18], Z[18]);
endmodule

module PureCSA_21_7 (C, S, X, Y, Z);
  output [22:8] C;
  output [21:7] S;
  input [21:7] X;
  input [21:7] Y;
  input [21:7] Z;
  UBFA_7 U0 (C[8], S[7], X[7], Y[7], Z[7]);
  UBFA_8 U1 (C[9], S[8], X[8], Y[8], Z[8]);
  UBFA_9 U2 (C[10], S[9], X[9], Y[9], Z[9]);
  UBFA_10 U3 (C[11], S[10], X[10], Y[10], Z[10]);
  UBFA_11 U4 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U5 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U6 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U7 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U8 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U9 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U10 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U11 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U12 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U13 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U14 (C[22], S[21], X[21], Y[21], Z[21]);
endmodule

module PureCSA_23_11 (C, S, X, Y, Z);
  output [24:12] C;
  output [23:11] S;
  input [23:11] X;
  input [23:11] Y;
  input [23:11] Z;
  UBFA_11 U0 (C[12], S[11], X[11], Y[11], Z[11]);
  UBFA_12 U1 (C[13], S[12], X[12], Y[12], Z[12]);
  UBFA_13 U2 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U3 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U4 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U5 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U6 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U7 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U8 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U9 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U10 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U11 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U12 (C[24], S[23], X[23], Y[23], Z[23]);
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

module PureCSA_28_13 (C, S, X, Y, Z);
  output [29:14] C;
  output [28:13] S;
  input [28:13] X;
  input [28:13] Y;
  input [28:13] Z;
  UBFA_13 U0 (C[14], S[13], X[13], Y[13], Z[13]);
  UBFA_14 U1 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U2 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U3 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U4 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U5 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U6 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U7 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U8 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U9 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U10 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U11 (C[25], S[24], X[24], Y[24], Z[24]);
  UBFA_25 U12 (C[26], S[25], X[25], Y[25], Z[25]);
  UBFA_26 U13 (C[27], S[26], X[26], Y[26], Z[26]);
  UBFA_27 U14 (C[28], S[27], X[27], Y[27], Z[27]);
  UBFA_28 U15 (C[29], S[28], X[28], Y[28], Z[28]);
endmodule

module PureCSA_28_4 (C, S, X, Y, Z);
  output [29:5] C;
  output [28:4] S;
  input [28:4] X;
  input [28:4] Y;
  input [28:4] Z;
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
  UBFA_21 U17 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U18 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U19 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U20 (C[25], S[24], X[24], Y[24], Z[24]);
  UBFA_25 U21 (C[26], S[25], X[25], Y[25], Z[25]);
  UBFA_26 U22 (C[27], S[26], X[26], Y[26], Z[26]);
  UBFA_27 U23 (C[28], S[27], X[27], Y[27], Z[27]);
  UBFA_28 U24 (C[29], S[28], X[28], Y[28], Z[28]);
endmodule

module PureCSA_30_14 (C, S, X, Y, Z);
  output [31:15] C;
  output [30:14] S;
  input [30:14] X;
  input [30:14] Y;
  input [30:14] Z;
  UBFA_14 U0 (C[15], S[14], X[14], Y[14], Z[14]);
  UBFA_15 U1 (C[16], S[15], X[15], Y[15], Z[15]);
  UBFA_16 U2 (C[17], S[16], X[16], Y[16], Z[16]);
  UBFA_17 U3 (C[18], S[17], X[17], Y[17], Z[17]);
  UBFA_18 U4 (C[19], S[18], X[18], Y[18], Z[18]);
  UBFA_19 U5 (C[20], S[19], X[19], Y[19], Z[19]);
  UBFA_20 U6 (C[21], S[20], X[20], Y[20], Z[20]);
  UBFA_21 U7 (C[22], S[21], X[21], Y[21], Z[21]);
  UBFA_22 U8 (C[23], S[22], X[22], Y[22], Z[22]);
  UBFA_23 U9 (C[24], S[23], X[23], Y[23], Z[23]);
  UBFA_24 U10 (C[25], S[24], X[24], Y[24], Z[24]);
  UBFA_25 U11 (C[26], S[25], X[25], Y[25], Z[25]);
  UBFA_26 U12 (C[27], S[26], X[26], Y[26], Z[26]);
  UBFA_27 U13 (C[28], S[27], X[27], Y[27], Z[27]);
  UBFA_28 U14 (C[29], S[28], X[28], Y[28], Z[28]);
  UBFA_29 U15 (C[30], S[29], X[29], Y[29], Z[29]);
  UBFA_30 U16 (C[31], S[30], X[30], Y[30], Z[30]);
endmodule

module PureCSHA_10_2 (C, S, X, Y);
  output [11:3] C;
  output [10:2] S;
  input [10:2] X;
  input [10:2] Y;
  UBHA_2 U0 (C[3], S[2], X[2], Y[2]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
  UBHA_4 U2 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U3 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U4 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U5 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U6 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U7 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U8 (C[11], S[10], X[10], Y[10]);
endmodule

module PureCSHA_12_10 (C, S, X, Y);
  output [13:11] C;
  output [12:10] S;
  input [12:10] X;
  input [12:10] Y;
  UBHA_10 U0 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U1 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U2 (C[13], S[12], X[12], Y[12]);
endmodule

module PureCSHA_13_12 (C, S, X, Y);
  output [14:13] C;
  output [13:12] S;
  input [13:12] X;
  input [13:12] Y;
  UBHA_12 U0 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U1 (C[14], S[13], X[13], Y[13]);
endmodule

module PureCSHA_15_4 (C, S, X, Y);
  output [16:5] C;
  output [15:4] S;
  input [15:4] X;
  input [15:4] Y;
  UBHA_4 U0 (C[5], S[4], X[4], Y[4]);
  UBHA_5 U1 (C[6], S[5], X[5], Y[5]);
  UBHA_6 U2 (C[7], S[6], X[6], Y[6]);
  UBHA_7 U3 (C[8], S[7], X[7], Y[7]);
  UBHA_8 U4 (C[9], S[8], X[8], Y[8]);
  UBHA_9 U5 (C[10], S[9], X[9], Y[9]);
  UBHA_10 U6 (C[11], S[10], X[10], Y[10]);
  UBHA_11 U7 (C[12], S[11], X[11], Y[11]);
  UBHA_12 U8 (C[13], S[12], X[12], Y[12]);
  UBHA_13 U9 (C[14], S[13], X[13], Y[13]);
  UBHA_14 U10 (C[15], S[14], X[14], Y[14]);
  UBHA_15 U11 (C[16], S[15], X[15], Y[15]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_20_19 (C, S, X, Y);
  output [21:20] C;
  output [20:19] S;
  input [20:19] X;
  input [20:19] Y;
  UBHA_19 U0 (C[20], S[19], X[19], Y[19]);
  UBHA_20 U1 (C[21], S[20], X[20], Y[20]);
endmodule

module PureCSHA_26_25 (C, S, X, Y);
  output [27:26] C;
  output [26:25] S;
  input [26:25] X;
  input [26:25] Y;
  UBHA_25 U0 (C[26], S[25], X[25], Y[25]);
  UBHA_26 U1 (C[27], S[26], X[26], Y[26]);
endmodule

module PureCSHA_27_24 (C, S, X, Y);
  output [28:25] C;
  output [27:24] S;
  input [27:24] X;
  input [27:24] Y;
  UBHA_24 U0 (C[25], S[24], X[24], Y[24]);
  UBHA_25 U1 (C[26], S[25], X[25], Y[25]);
  UBHA_26 U2 (C[27], S[26], X[26], Y[26]);
  UBHA_27 U3 (C[28], S[27], X[27], Y[27]);
endmodule

module PureCSHA_32_31 (C, S, X, Y);
  output [33:32] C;
  output [32:31] S;
  input [32:31] X;
  input [32:31] Y;
  UBHA_31 U0 (C[32], S[31], X[31], Y[31]);
  UBHA_32 U1 (C[33], S[32], X[32], Y[32]);
endmodule

module PureCSHA_33_29 (C, S, X, Y);
  output [34:30] C;
  output [33:29] S;
  input [33:29] X;
  input [33:29] Y;
  UBHA_29 U0 (C[30], S[29], X[29], Y[29]);
  UBHA_30 U1 (C[31], S[30], X[30], Y[30]);
  UBHA_31 U2 (C[32], S[31], X[31], Y[31]);
  UBHA_32 U3 (C[33], S[32], X[32], Y[32]);
  UBHA_33 U4 (C[34], S[33], X[33], Y[33]);
endmodule

module PureCSHA_34_18 (C, S, X, Y);
  output [35:19] C;
  output [34:18] S;
  input [34:18] X;
  input [34:18] Y;
  UBHA_18 U0 (C[19], S[18], X[18], Y[18]);
  UBHA_19 U1 (C[20], S[19], X[19], Y[19]);
  UBHA_20 U2 (C[21], S[20], X[20], Y[20]);
  UBHA_21 U3 (C[22], S[21], X[21], Y[21]);
  UBHA_22 U4 (C[23], S[22], X[22], Y[22]);
  UBHA_23 U5 (C[24], S[23], X[23], Y[23]);
  UBHA_24 U6 (C[25], S[24], X[24], Y[24]);
  UBHA_25 U7 (C[26], S[25], X[25], Y[25]);
  UBHA_26 U8 (C[27], S[26], X[26], Y[26]);
  UBHA_27 U9 (C[28], S[27], X[27], Y[27]);
  UBHA_28 U10 (C[29], S[28], X[28], Y[28]);
  UBHA_29 U11 (C[30], S[29], X[29], Y[29]);
  UBHA_30 U12 (C[31], S[30], X[30], Y[30]);
  UBHA_31 U13 (C[32], S[31], X[31], Y[31]);
  UBHA_32 U14 (C[33], S[32], X[32], Y[32]);
  UBHA_33 U15 (C[34], S[33], X[33], Y[33]);
  UBHA_34 U16 (C[35], S[34], X[34], Y[34]);
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

module UBARYACC_26_6_28_000 (S1, S2, PP0, PP1);
  output [26:6] S1;
  output [28:8] S2;
  input [26:6] PP0;
  input [28:8] PP1;
  UBCON_26_6 U0 (S1, PP0);
  UBCON_28_8 U1 (S2, PP1);
endmodule

module UBARYACC_30_10_32000 (S1, S2, PP0, PP1, PP2);
  output [33:13] S1;
  output [33:10] S2;
  input [30:10] PP0;
  input [32:12] PP1;
  input [33:14] PP2;
  CSA_30_10_32_12_3000 U0 (S1, S2, PP0, PP1, PP2);
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

module UBCON_17_16 (O, I);
  output [17:16] O;
  input [17:16] I;
  UB1DCON_16 U0 (O[16], I[16]);
  UB1DCON_17 U1 (O[17], I[17]);
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

module UBCON_22_21 (O, I);
  output [22:21] O;
  input [22:21] I;
  UB1DCON_21 U0 (O[21], I[21]);
  UB1DCON_22 U1 (O[22], I[22]);
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

module UBCON_24_4 (O, I);
  output [24:4] O;
  input [24:4] I;
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
  UB1DCON_22 U18 (O[22], I[22]);
  UB1DCON_23 U19 (O[23], I[23]);
  UB1DCON_24 U20 (O[24], I[24]);
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

module UBCON_26_6 (O, I);
  output [26:6] O;
  input [26:6] I;
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
  UB1DCON_24 U18 (O[24], I[24]);
  UB1DCON_25 U19 (O[25], I[25]);
  UB1DCON_26 U20 (O[26], I[26]);
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

module UBCON_27_23 (O, I);
  output [27:23] O;
  input [27:23] I;
  UB1DCON_23 U0 (O[23], I[23]);
  UB1DCON_24 U1 (O[24], I[24]);
  UB1DCON_25 U2 (O[25], I[25]);
  UB1DCON_26 U3 (O[26], I[26]);
  UB1DCON_27 U4 (O[27], I[27]);
endmodule

module UBCON_28_27 (O, I);
  output [28:27] O;
  input [28:27] I;
  UB1DCON_27 U0 (O[27], I[27]);
  UB1DCON_28 U1 (O[28], I[28]);
endmodule

module UBCON_28_8 (O, I);
  output [28:8] O;
  input [28:8] I;
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
  UB1DCON_26 U18 (O[26], I[26]);
  UB1DCON_27 U19 (O[27], I[27]);
  UB1DCON_28 U20 (O[28], I[28]);
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

module UBCON_34_28 (O, I);
  output [34:28] O;
  input [34:28] I;
  UB1DCON_28 U0 (O[28], I[28]);
  UB1DCON_29 U1 (O[29], I[29]);
  UB1DCON_30 U2 (O[30], I[30]);
  UB1DCON_31 U3 (O[31], I[31]);
  UB1DCON_32 U4 (O[32], I[32]);
  UB1DCON_33 U5 (O[33], I[33]);
  UB1DCON_34 U6 (O[34], I[34]);
endmodule

module UBCON_34_5 (O, I);
  output [34:5] O;
  input [34:5] I;
  UB1DCON_5 U0 (O[5], I[5]);
  UB1DCON_6 U1 (O[6], I[6]);
  UB1DCON_7 U2 (O[7], I[7]);
  UB1DCON_8 U3 (O[8], I[8]);
  UB1DCON_9 U4 (O[9], I[9]);
  UB1DCON_10 U5 (O[10], I[10]);
  UB1DCON_11 U6 (O[11], I[11]);
  UB1DCON_12 U7 (O[12], I[12]);
  UB1DCON_13 U8 (O[13], I[13]);
  UB1DCON_14 U9 (O[14], I[14]);
  UB1DCON_15 U10 (O[15], I[15]);
  UB1DCON_16 U11 (O[16], I[16]);
  UB1DCON_17 U12 (O[17], I[17]);
  UB1DCON_18 U13 (O[18], I[18]);
  UB1DCON_19 U14 (O[19], I[19]);
  UB1DCON_20 U15 (O[20], I[20]);
  UB1DCON_21 U16 (O[21], I[21]);
  UB1DCON_22 U17 (O[22], I[22]);
  UB1DCON_23 U18 (O[23], I[23]);
  UB1DCON_24 U19 (O[24], I[24]);
  UB1DCON_25 U20 (O[25], I[25]);
  UB1DCON_26 U21 (O[26], I[26]);
  UB1DCON_27 U22 (O[27], I[27]);
  UB1DCON_28 U23 (O[28], I[28]);
  UB1DCON_29 U24 (O[29], I[29]);
  UB1DCON_30 U25 (O[30], I[30]);
  UB1DCON_31 U26 (O[31], I[31]);
  UB1DCON_32 U27 (O[32], I[32]);
  UB1DCON_33 U28 (O[33], I[33]);
  UB1DCON_34 U29 (O[34], I[34]);
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

module UBCON_5_4 (O, I);
  output [5:4] O;
  input [5:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
endmodule

module UBCON_9_4 (O, I);
  output [9:4] O;
  input [9:4] I;
  UB1DCON_4 U0 (O[4], I[4]);
  UB1DCON_5 U1 (O[5], I[5]);
  UB1DCON_6 U2 (O[6], I[6]);
  UB1DCON_7 U3 (O[7], I[7]);
  UB1DCON_8 U4 (O[8], I[8]);
  UB1DCON_9 U5 (O[9], I[9]);
endmodule

module UBCSu_35_5_34_0 (S, X, Y);
  output [36:0] S;
  input [35:5] X;
  input [34:0] Y;
  wire [35:5] Z;
  UBExtender_34_5_3000 U0 (Z[35:5], Y[34:5]);
  UBPureCSu_35_5 U1 (S[36:5], X[35:5], Z[35:5]);
  UBCON_4_0 U2 (S[4:0], Y[4:0]);
endmodule

module UBExtender_34_5_3000 (O, I);
  output [35:5] O;
  input [34:5] I;
  UBCON_34_5 U0 (O[34:5], I[34:5]);
  UBZero_35_35 U1 (O[35]);
endmodule

module UBPureCSu_35_5 (S, X, Y);
  output [36:5] S;
  input [35:5] X;
  input [35:5] Y;
  wire C;
  UBPriCSuA_35_5 U0 (S, X, Y, C);
  UBZero_5_5 U1 (C);
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

module UBTCCONV34_36_0 (O, I);
  output [37:0] O;
  input [36:0] I;
  UBTC1CON37_0 U0 (O[0], I[0]);
  UBTC1CON37_1 U1 (O[1], I[1]);
  UBTC1CON37_2 U2 (O[2], I[2]);
  UBTC1CON37_3 U3 (O[3], I[3]);
  UBTC1CON37_4 U4 (O[4], I[4]);
  UBTC1CON37_5 U5 (O[5], I[5]);
  UBTC1CON37_6 U6 (O[6], I[6]);
  UBTC1CON37_7 U7 (O[7], I[7]);
  UBTC1CON37_8 U8 (O[8], I[8]);
  UBTC1CON37_9 U9 (O[9], I[9]);
  UBTC1CON37_10 U10 (O[10], I[10]);
  UBTC1CON37_11 U11 (O[11], I[11]);
  UBTC1CON37_12 U12 (O[12], I[12]);
  UBTC1CON37_13 U13 (O[13], I[13]);
  UBTC1CON37_14 U14 (O[14], I[14]);
  UBTC1CON37_15 U15 (O[15], I[15]);
  UBTC1CON37_16 U16 (O[16], I[16]);
  UBTC1CON37_17 U17 (O[17], I[17]);
  UBTC1CON37_18 U18 (O[18], I[18]);
  UBTC1CON37_19 U19 (O[19], I[19]);
  UBTC1CON37_20 U20 (O[20], I[20]);
  UBTC1CON37_21 U21 (O[21], I[21]);
  UBTC1CON37_22 U22 (O[22], I[22]);
  UBTC1CON37_23 U23 (O[23], I[23]);
  UBTC1CON37_24 U24 (O[24], I[24]);
  UBTC1CON37_25 U25 (O[25], I[25]);
  UBTC1CON37_26 U26 (O[26], I[26]);
  UBTC1CON37_27 U27 (O[27], I[27]);
  UBTC1CON37_28 U28 (O[28], I[28]);
  UBTC1CON37_29 U29 (O[29], I[29]);
  UBTC1CON37_30 U30 (O[30], I[30]);
  UBTC1CON37_31 U31 (O[31], I[31]);
  UBTC1CON37_32 U32 (O[32], I[32]);
  UBTC1CON37_33 U33 (O[33], I[33]);
  UBTCTCONV_36_34 U34 (O[37:34], I[36:34]);
endmodule

