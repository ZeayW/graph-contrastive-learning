/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_13_0_1000

  Number system: Unsigned binary
  Multiplicand length: 14
  Multiplier length: 14
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Overturned-stairs tree
  Final stage addition: Kogge-Stone adder
----------------------------------------------------------------------------*/

module NUBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
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

module R4BEEH_7_2(O_ds, O_d1, O_d0, I1, I0);
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

module U4DPPGH_14_0(Po, O, I, U_d1, U_d0, Pi);
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

module BWCNP_15(O, I, S);
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

module U4DPPGH_14_1(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_2(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_3(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_4(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_5(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_6(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_14_7(Po, O, I, U_d1, U_d0, Pi);
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

module UBBBG_14(O, S);
  output O;
  input S;
  assign O = S;
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

module UBOne_18(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
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

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
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

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
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

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module UBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
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

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module UB1DCON_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
endmodule

module UBOne_15(O);
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

module UBHA_17(C, S, X, Y);
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

module UBHA_23(C, S, X, Y);
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

module UBHA_20(C, S, X, Y);
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

module UBHA_16(C, S, X, Y);
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

module UBHA_21(C, S, X, Y);
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

module UBHA_27(C, S, X, Y);
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

module UBHA_29(C, S, X, Y);
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

module UB1DCON_30(O, I);
  output O;
  input I;
  assign O = I;
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

module UBPriKSA_30_4(S, X, Y, Cin);
  output [31:4] S;
  input Cin;
  input [30:4] X;
  input [30:4] Y;
  wire [30:4] G0;
  wire [30:4] G1;
  wire [30:4] G2;
  wire [30:4] G3;
  wire [30:4] G4;
  wire [30:4] G5;
  wire [30:4] P0;
  wire [30:4] P1;
  wire [30:4] P2;
  wire [30:4] P3;
  wire [30:4] P4;
  wire [30:4] P5;
  assign P1[4] = P0[4];
  assign G1[4] = G0[4];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P3[4] = P2[4];
  assign G3[4] = G2[4];
  assign P3[5] = P2[5];
  assign G3[5] = G2[5];
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P3[7] = P2[7];
  assign G3[7] = G2[7];
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
  assign S[4] = Cin ^ P0[4];
  assign S[5] = ( G5[4] | ( P5[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G5[5] | ( P5[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G5[6] | ( P5[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G5[7] | ( P5[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G5[8] | ( P5[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G5[9] | ( P5[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G5[10] | ( P5[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G5[11] | ( P5[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G5[12] | ( P5[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G5[13] | ( P5[13] & Cin ) ) ^ P0[14];
  assign S[15] = ( G5[14] | ( P5[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G5[15] | ( P5[15] & Cin ) ) ^ P0[16];
  assign S[17] = ( G5[16] | ( P5[16] & Cin ) ) ^ P0[17];
  assign S[18] = ( G5[17] | ( P5[17] & Cin ) ) ^ P0[18];
  assign S[19] = ( G5[18] | ( P5[18] & Cin ) ) ^ P0[19];
  assign S[20] = ( G5[19] | ( P5[19] & Cin ) ) ^ P0[20];
  assign S[21] = ( G5[20] | ( P5[20] & Cin ) ) ^ P0[21];
  assign S[22] = ( G5[21] | ( P5[21] & Cin ) ) ^ P0[22];
  assign S[23] = ( G5[22] | ( P5[22] & Cin ) ) ^ P0[23];
  assign S[24] = ( G5[23] | ( P5[23] & Cin ) ) ^ P0[24];
  assign S[25] = ( G5[24] | ( P5[24] & Cin ) ) ^ P0[25];
  assign S[26] = ( G5[25] | ( P5[25] & Cin ) ) ^ P0[26];
  assign S[27] = ( G5[26] | ( P5[26] & Cin ) ) ^ P0[27];
  assign S[28] = ( G5[27] | ( P5[27] & Cin ) ) ^ P0[28];
  assign S[29] = ( G5[28] | ( P5[28] & Cin ) ) ^ P0[29];
  assign S[30] = ( G5[29] | ( P5[29] & Cin ) ) ^ P0[30];
  assign S[31] = G5[30] | ( P5[30] & Cin );
  GPGenerator U0 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U1 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U2 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U3 (G0[7], P0[7], X[7], Y[7]);
  GPGenerator U4 (G0[8], P0[8], X[8], Y[8]);
  GPGenerator U5 (G0[9], P0[9], X[9], Y[9]);
  GPGenerator U6 (G0[10], P0[10], X[10], Y[10]);
  GPGenerator U7 (G0[11], P0[11], X[11], Y[11]);
  GPGenerator U8 (G0[12], P0[12], X[12], Y[12]);
  GPGenerator U9 (G0[13], P0[13], X[13], Y[13]);
  GPGenerator U10 (G0[14], P0[14], X[14], Y[14]);
  GPGenerator U11 (G0[15], P0[15], X[15], Y[15]);
  GPGenerator U12 (G0[16], P0[16], X[16], Y[16]);
  GPGenerator U13 (G0[17], P0[17], X[17], Y[17]);
  GPGenerator U14 (G0[18], P0[18], X[18], Y[18]);
  GPGenerator U15 (G0[19], P0[19], X[19], Y[19]);
  GPGenerator U16 (G0[20], P0[20], X[20], Y[20]);
  GPGenerator U17 (G0[21], P0[21], X[21], Y[21]);
  GPGenerator U18 (G0[22], P0[22], X[22], Y[22]);
  GPGenerator U19 (G0[23], P0[23], X[23], Y[23]);
  GPGenerator U20 (G0[24], P0[24], X[24], Y[24]);
  GPGenerator U21 (G0[25], P0[25], X[25], Y[25]);
  GPGenerator U22 (G0[26], P0[26], X[26], Y[26]);
  GPGenerator U23 (G0[27], P0[27], X[27], Y[27]);
  GPGenerator U24 (G0[28], P0[28], X[28], Y[28]);
  GPGenerator U25 (G0[29], P0[29], X[29], Y[29]);
  GPGenerator U26 (G0[30], P0[30], X[30], Y[30]);
  CarryOperator U27 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U28 (G1[6], P1[6], G0[6], P0[6], G0[5], P0[5]);
  CarryOperator U29 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U30 (G1[8], P1[8], G0[8], P0[8], G0[7], P0[7]);
  CarryOperator U31 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U32 (G1[10], P1[10], G0[10], P0[10], G0[9], P0[9]);
  CarryOperator U33 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U34 (G1[12], P1[12], G0[12], P0[12], G0[11], P0[11]);
  CarryOperator U35 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U36 (G1[14], P1[14], G0[14], P0[14], G0[13], P0[13]);
  CarryOperator U37 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U38 (G1[16], P1[16], G0[16], P0[16], G0[15], P0[15]);
  CarryOperator U39 (G1[17], P1[17], G0[17], P0[17], G0[16], P0[16]);
  CarryOperator U40 (G1[18], P1[18], G0[18], P0[18], G0[17], P0[17]);
  CarryOperator U41 (G1[19], P1[19], G0[19], P0[19], G0[18], P0[18]);
  CarryOperator U42 (G1[20], P1[20], G0[20], P0[20], G0[19], P0[19]);
  CarryOperator U43 (G1[21], P1[21], G0[21], P0[21], G0[20], P0[20]);
  CarryOperator U44 (G1[22], P1[22], G0[22], P0[22], G0[21], P0[21]);
  CarryOperator U45 (G1[23], P1[23], G0[23], P0[23], G0[22], P0[22]);
  CarryOperator U46 (G1[24], P1[24], G0[24], P0[24], G0[23], P0[23]);
  CarryOperator U47 (G1[25], P1[25], G0[25], P0[25], G0[24], P0[24]);
  CarryOperator U48 (G1[26], P1[26], G0[26], P0[26], G0[25], P0[25]);
  CarryOperator U49 (G1[27], P1[27], G0[27], P0[27], G0[26], P0[26]);
  CarryOperator U50 (G1[28], P1[28], G0[28], P0[28], G0[27], P0[27]);
  CarryOperator U51 (G1[29], P1[29], G0[29], P0[29], G0[28], P0[28]);
  CarryOperator U52 (G1[30], P1[30], G0[30], P0[30], G0[29], P0[29]);
  CarryOperator U53 (G2[6], P2[6], G1[6], P1[6], G1[4], P1[4]);
  CarryOperator U54 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U55 (G2[8], P2[8], G1[8], P1[8], G1[6], P1[6]);
  CarryOperator U56 (G2[9], P2[9], G1[9], P1[9], G1[7], P1[7]);
  CarryOperator U57 (G2[10], P2[10], G1[10], P1[10], G1[8], P1[8]);
  CarryOperator U58 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U59 (G2[12], P2[12], G1[12], P1[12], G1[10], P1[10]);
  CarryOperator U60 (G2[13], P2[13], G1[13], P1[13], G1[11], P1[11]);
  CarryOperator U61 (G2[14], P2[14], G1[14], P1[14], G1[12], P1[12]);
  CarryOperator U62 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U63 (G2[16], P2[16], G1[16], P1[16], G1[14], P1[14]);
  CarryOperator U64 (G2[17], P2[17], G1[17], P1[17], G1[15], P1[15]);
  CarryOperator U65 (G2[18], P2[18], G1[18], P1[18], G1[16], P1[16]);
  CarryOperator U66 (G2[19], P2[19], G1[19], P1[19], G1[17], P1[17]);
  CarryOperator U67 (G2[20], P2[20], G1[20], P1[20], G1[18], P1[18]);
  CarryOperator U68 (G2[21], P2[21], G1[21], P1[21], G1[19], P1[19]);
  CarryOperator U69 (G2[22], P2[22], G1[22], P1[22], G1[20], P1[20]);
  CarryOperator U70 (G2[23], P2[23], G1[23], P1[23], G1[21], P1[21]);
  CarryOperator U71 (G2[24], P2[24], G1[24], P1[24], G1[22], P1[22]);
  CarryOperator U72 (G2[25], P2[25], G1[25], P1[25], G1[23], P1[23]);
  CarryOperator U73 (G2[26], P2[26], G1[26], P1[26], G1[24], P1[24]);
  CarryOperator U74 (G2[27], P2[27], G1[27], P1[27], G1[25], P1[25]);
  CarryOperator U75 (G2[28], P2[28], G1[28], P1[28], G1[26], P1[26]);
  CarryOperator U76 (G2[29], P2[29], G1[29], P1[29], G1[27], P1[27]);
  CarryOperator U77 (G2[30], P2[30], G1[30], P1[30], G1[28], P1[28]);
  CarryOperator U78 (G3[8], P3[8], G2[8], P2[8], G2[4], P2[4]);
  CarryOperator U79 (G3[9], P3[9], G2[9], P2[9], G2[5], P2[5]);
  CarryOperator U80 (G3[10], P3[10], G2[10], P2[10], G2[6], P2[6]);
  CarryOperator U81 (G3[11], P3[11], G2[11], P2[11], G2[7], P2[7]);
  CarryOperator U82 (G3[12], P3[12], G2[12], P2[12], G2[8], P2[8]);
  CarryOperator U83 (G3[13], P3[13], G2[13], P2[13], G2[9], P2[9]);
  CarryOperator U84 (G3[14], P3[14], G2[14], P2[14], G2[10], P2[10]);
  CarryOperator U85 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U86 (G3[16], P3[16], G2[16], P2[16], G2[12], P2[12]);
  CarryOperator U87 (G3[17], P3[17], G2[17], P2[17], G2[13], P2[13]);
  CarryOperator U88 (G3[18], P3[18], G2[18], P2[18], G2[14], P2[14]);
  CarryOperator U89 (G3[19], P3[19], G2[19], P2[19], G2[15], P2[15]);
  CarryOperator U90 (G3[20], P3[20], G2[20], P2[20], G2[16], P2[16]);
  CarryOperator U91 (G3[21], P3[21], G2[21], P2[21], G2[17], P2[17]);
  CarryOperator U92 (G3[22], P3[22], G2[22], P2[22], G2[18], P2[18]);
  CarryOperator U93 (G3[23], P3[23], G2[23], P2[23], G2[19], P2[19]);
  CarryOperator U94 (G3[24], P3[24], G2[24], P2[24], G2[20], P2[20]);
  CarryOperator U95 (G3[25], P3[25], G2[25], P2[25], G2[21], P2[21]);
  CarryOperator U96 (G3[26], P3[26], G2[26], P2[26], G2[22], P2[22]);
  CarryOperator U97 (G3[27], P3[27], G2[27], P2[27], G2[23], P2[23]);
  CarryOperator U98 (G3[28], P3[28], G2[28], P2[28], G2[24], P2[24]);
  CarryOperator U99 (G3[29], P3[29], G2[29], P2[29], G2[25], P2[25]);
  CarryOperator U100 (G3[30], P3[30], G2[30], P2[30], G2[26], P2[26]);
  CarryOperator U101 (G4[12], P4[12], G3[12], P3[12], G3[4], P3[4]);
  CarryOperator U102 (G4[13], P4[13], G3[13], P3[13], G3[5], P3[5]);
  CarryOperator U103 (G4[14], P4[14], G3[14], P3[14], G3[6], P3[6]);
  CarryOperator U104 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U105 (G4[16], P4[16], G3[16], P3[16], G3[8], P3[8]);
  CarryOperator U106 (G4[17], P4[17], G3[17], P3[17], G3[9], P3[9]);
  CarryOperator U107 (G4[18], P4[18], G3[18], P3[18], G3[10], P3[10]);
  CarryOperator U108 (G4[19], P4[19], G3[19], P3[19], G3[11], P3[11]);
  CarryOperator U109 (G4[20], P4[20], G3[20], P3[20], G3[12], P3[12]);
  CarryOperator U110 (G4[21], P4[21], G3[21], P3[21], G3[13], P3[13]);
  CarryOperator U111 (G4[22], P4[22], G3[22], P3[22], G3[14], P3[14]);
  CarryOperator U112 (G4[23], P4[23], G3[23], P3[23], G3[15], P3[15]);
  CarryOperator U113 (G4[24], P4[24], G3[24], P3[24], G3[16], P3[16]);
  CarryOperator U114 (G4[25], P4[25], G3[25], P3[25], G3[17], P3[17]);
  CarryOperator U115 (G4[26], P4[26], G3[26], P3[26], G3[18], P3[18]);
  CarryOperator U116 (G4[27], P4[27], G3[27], P3[27], G3[19], P3[19]);
  CarryOperator U117 (G4[28], P4[28], G3[28], P3[28], G3[20], P3[20]);
  CarryOperator U118 (G4[29], P4[29], G3[29], P3[29], G3[21], P3[21]);
  CarryOperator U119 (G4[30], P4[30], G3[30], P3[30], G3[22], P3[22]);
  CarryOperator U120 (G5[20], P5[20], G4[20], P4[20], G4[4], P4[4]);
  CarryOperator U121 (G5[21], P5[21], G4[21], P4[21], G4[5], P4[5]);
  CarryOperator U122 (G5[22], P5[22], G4[22], P4[22], G4[6], P4[6]);
  CarryOperator U123 (G5[23], P5[23], G4[23], P4[23], G4[7], P4[7]);
  CarryOperator U124 (G5[24], P5[24], G4[24], P4[24], G4[8], P4[8]);
  CarryOperator U125 (G5[25], P5[25], G4[25], P4[25], G4[9], P4[9]);
  CarryOperator U126 (G5[26], P5[26], G4[26], P4[26], G4[10], P4[10]);
  CarryOperator U127 (G5[27], P5[27], G4[27], P4[27], G4[11], P4[11]);
  CarryOperator U128 (G5[28], P5[28], G4[28], P4[28], G4[12], P4[12]);
  CarryOperator U129 (G5[29], P5[29], G4[29], P4[29], G4[13], P4[13]);
  CarryOperator U130 (G5[30], P5[30], G4[30], P4[30], G4[14], P4[14]);
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBTC1CON32_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON32_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_31_30(O, I);
  output [32:30] O;
  input [31:30] I;
  assign O[30] = ~ I[30];
  assign O[31] = ~ I[31] ^ ( I[30] );
  assign O[32] = ~ ( I[31] | I[30] );
endmodule

module Multiplier_13_0_1000(P, IN1, IN2);
  output [27:0] P;
  input [13:0] IN1;
  input [13:0] IN2;
  wire [32:0] W;
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
  MultUB_R4B_OS_KSA000 U0 (W, IN1, IN2);
endmodule

module CSA_16_0_18_0_20_000 (C, S, X, Y, Z);
  output [19:1] C;
  output [20:0] S;
  input [16:0] X;
  input [18:0] Y;
  input [20:2] Z;
  PureCSHA_1_0 U0 (C[2:1], S[1:0], Y[1:0], X[1:0]);
  PureCSA_16_2 U1 (C[17:3], S[16:2], Z[16:2], Y[16:2], X[16:2]);
  PureCSHA_18_17 U2 (C[19:18], S[18:17], Z[18:17], Y[18:17]);
  UBCON_20_19 U3 (S[20:19], Z[20:19]);
endmodule

module CSA_19_1_20_0_25_000 (C, S, X, Y, Z);
  output [21:2] C;
  output [25:0] S;
  input [19:1] X;
  input [20:0] Y;
  input [25:7] Z;
  UB1DCON_0 U0 (S[0], Y[0]);
  PureCSHA_6_1 U1 (C[7:2], S[6:1], X[6:1], Y[6:1]);
  PureCSA_19_7 U2 (C[20:8], S[19:7], Z[19:7], X[19:7], Y[19:7]);
  UBHA_20 U3 (C[21], S[20], Z[20], Y[20]);
  UBCON_25_21 U4 (S[25:21], Z[25:21]);
endmodule

module CSA_21_2_25_0_30_000 (C, S, X, Y, Z);
  output [26:3] C;
  output [30:0] S;
  input [21:2] X;
  input [25:0] Y;
  input [30:11] Z;
  UBCON_1_0 U0 (S[1:0], Y[1:0]);
  PureCSHA_10_2 U1 (C[11:3], S[10:2], X[10:2], Y[10:2]);
  PureCSA_21_11 U2 (C[22:12], S[21:11], Z[21:11], X[21:11], Y[21:11]);
  PureCSHA_25_22 U3 (C[26:23], S[25:22], Z[25:22], Y[25:22]);
  UBCON_30_26 U4 (S[30:26], Z[30:26]);
endmodule

module CSA_22_4_24_6_26_000 (C, S, X, Y, Z);
  output [25:7] C;
  output [26:4] S;
  input [22:4] X;
  input [24:6] Y;
  input [26:8] Z;
  UBCON_5_4 U0 (S[5:4], X[5:4]);
  PureCSHA_7_6 U1 (C[8:7], S[7:6], Y[7:6], X[7:6]);
  PureCSA_22_8 U2 (C[23:9], S[22:8], Z[22:8], Y[22:8], X[22:8]);
  PureCSHA_24_23 U3 (C[25:24], S[24:23], Z[24:23], Y[24:23]);
  UBCON_26_25 U4 (S[26:25], Z[26:25]);
endmodule

module CSA_26_3_30_0_29_000 (C, S, X, Y, Z);
  output [30:4] C;
  output [30:0] S;
  input [26:3] X;
  input [30:0] Y;
  input [29:4] Z;
  UBCON_2_0 U0 (S[2:0], Y[2:0]);
  UBHA_3 U1 (C[4], S[3], X[3], Y[3]);
  PureCSA_26_4 U2 (C[27:5], S[26:4], Z[26:4], X[26:4], Y[26:4]);
  PureCSHA_29_27 U3 (C[30:28], S[29:27], Y[29:27], Z[29:27]);
  UB1DCON_30 U4 (S[30], Y[30]);
endmodule

module CSA_26_4_29_13_29000 (C, S, X, Y, Z);
  output [30:11] C;
  output [29:4] S;
  input [26:4] X;
  input [29:13] Y;
  input [29:10] Z;
  UBCON_9_4 U0 (S[9:4], X[9:4]);
  PureCSHA_12_10 U1 (C[13:11], S[12:10], Z[12:10], X[12:10]);
  PureCSA_26_13 U2 (C[27:14], S[26:13], Y[26:13], Z[26:13], X[26:13]);
  PureCSHA_29_27 U3 (C[30:28], S[29:27], Z[29:27], Y[29:27]);
endmodule

module CSA_28_10_29_12_1000 (C, S, X, Y, Z);
  output [29:13] C;
  output [29:10] S;
  input [28:10] X;
  input [29:12] Y;
  input [15:14] Z;
  UBCON_11_10 U0 (S[11:10], X[11:10]);
  PureCSHA_13_12 U1 (C[14:13], S[13:12], Y[13:12], X[13:12]);
  PureCSA_15_14 U2 (C[16:15], S[15:14], Z[15:14], Y[15:14], X[15:14]);
  PureCSHA_28_16 U3 (C[29:17], S[28:16], Y[28:16], X[28:16]);
  UB1DCON_29 U4 (S[29], Y[29]);
endmodule

module MultUB_R4B_OS_KSA000 (P, IN1, IN2);
  output [32:0] P;
  input [13:0] IN1;
  input [13:0] IN2;
  wire [16:0] PP0;
  wire [18:0] PP1;
  wire [20:2] PP2;
  wire [22:4] PP3;
  wire [24:6] PP4;
  wire [26:8] PP5;
  wire [28:10] PP6;
  wire [29:12] PP7;
  wire [15:14] PP8;
  wire [30:4] S1;
  wire [30:0] S2;
  wire [31:0] UP;
  UBR4BPPG_13_0_13_000 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, IN1, IN2);
  OSTR_16_0_18_0_20000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  UBKSA_30_4_30_0 U2 (UP, S1, S2);
  UBTCCONV30_31_0 U3 (P, UP);
endmodule

module OSBODY_16_0_18_0_000 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  output [26:3] S0;
  output [30:0] S1;
  output [29:4] S2;
  input [16:0] PP0;
  input [18:0] PP1;
  input [20:2] PP2;
  input [22:4] PP3;
  input [24:6] PP4;
  input [26:8] PP5;
  input [28:10] PP6;
  input [29:12] PP7;
  input [15:14] PP8;
  wire [21:2] W0;
  wire [25:0] W1;
  wire [26:4] W2;
  wire [29:13] W3;
  wire [29:10] W4;
  OSBODY_16_0_18_0_001 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5);
  UBARYACC_28_10_29000 U1 (W3, W4, PP6, PP7, PP8);
  OSCON_21_2_25_0_2000 U2 (S0, S1, S2, W0, W1, W2, W3, W4);
endmodule

module OSBODY_16_0_18_0_001 (S0, S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [21:2] S0;
  output [25:0] S1;
  output [26:4] S2;
  input [16:0] PP0;
  input [18:0] PP1;
  input [20:2] PP2;
  input [22:4] PP3;
  input [24:6] PP4;
  input [26:8] PP5;
  wire [19:1] W0;
  wire [20:0] W1;
  wire [22:4] W2;
  wire [24:6] W3;
  wire [26:8] W4;
  OSBODY_16_0_18_0_002 U0 (W0, W1, W2, PP0, PP1, PP2, PP3);
  UBARYACC_24_6_26_000 U1 (W3, W4, PP4, PP5);
  OSCON_19_1_20_0_2000 U2 (S0, S1, S2, W0, W1, W2, W3, W4);
endmodule

module OSBODY_16_0_18_0_002 (S0, S1, S2, PP0, PP1, PP2, PP3);
  output [19:1] S0;
  output [20:0] S1;
  output [22:4] S2;
  input [16:0] PP0;
  input [18:0] PP1;
  input [20:2] PP2;
  input [22:4] PP3;
  CSA_16_0_18_0_20_000 U0 (S0, S1, PP0, PP1, PP2);
  UBCON_22_4 U1 (S2, PP3);
endmodule

module OSCON_19_1_20_0_2000 (S0, S1, S2, IN0, IN1, IN2, IN3, IN4);
  output [21:2] S0;
  output [25:0] S1;
  output [26:4] S2;
  input [19:1] IN0;
  input [20:0] IN1;
  input [22:4] IN2;
  input [24:6] IN3;
  input [26:8] IN4;
  wire [25:7] W;
  CSA_22_4_24_6_26_000 U0 (W, S2, IN2, IN3, IN4);
  CSA_19_1_20_0_25_000 U1 (S0, S1, IN0, IN1, W);
endmodule

module OSCON_21_2_25_0_2000 (S0, S1, S2, IN0, IN1, IN2, IN3, IN4);
  output [26:3] S0;
  output [30:0] S1;
  output [29:4] S2;
  input [21:2] IN0;
  input [25:0] IN1;
  input [26:4] IN2;
  input [29:13] IN3;
  input [29:10] IN4;
  wire [30:11] W;
  CSA_26_4_29_13_29000 U0 (W, S2, IN2, IN3, IN4);
  CSA_21_2_25_0_30_000 U1 (S0, S1, IN0, IN1, W);
endmodule

module OSTR_16_0_18_0_20000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  output [30:4] S1;
  output [30:0] S2;
  input [16:0] PP0;
  input [18:0] PP1;
  input [20:2] PP2;
  input [22:4] PP3;
  input [24:6] PP4;
  input [26:8] PP5;
  input [28:10] PP6;
  input [29:12] PP7;
  input [15:14] PP8;
  wire [26:3] W0;
  wire [30:0] W1;
  wire [29:4] W2;
  OSBODY_16_0_18_0_000 U0 (W0, W1, W2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  CSA_26_3_30_0_29_000 U1 (S1, S2, W0, W1, W2);
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

module PureCSA_16_2 (C, S, X, Y, Z);
  output [17:3] C;
  output [16:2] S;
  input [16:2] X;
  input [16:2] Y;
  input [16:2] Z;
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
endmodule

module PureCSA_19_7 (C, S, X, Y, Z);
  output [20:8] C;
  output [19:7] S;
  input [19:7] X;
  input [19:7] Y;
  input [19:7] Z;
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
endmodule

module PureCSA_21_11 (C, S, X, Y, Z);
  output [22:12] C;
  output [21:11] S;
  input [21:11] X;
  input [21:11] Y;
  input [21:11] Z;
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
endmodule

module PureCSA_22_8 (C, S, X, Y, Z);
  output [23:9] C;
  output [22:8] S;
  input [22:8] X;
  input [22:8] Y;
  input [22:8] Z;
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
endmodule

module PureCSA_26_13 (C, S, X, Y, Z);
  output [27:14] C;
  output [26:13] S;
  input [26:13] X;
  input [26:13] Y;
  input [26:13] Z;
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
endmodule

module PureCSA_26_4 (C, S, X, Y, Z);
  output [27:5] C;
  output [26:4] S;
  input [26:4] X;
  input [26:4] Y;
  input [26:4] Z;
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

module PureCSHA_18_17 (C, S, X, Y);
  output [19:18] C;
  output [18:17] S;
  input [18:17] X;
  input [18:17] Y;
  UBHA_17 U0 (C[18], S[17], X[17], Y[17]);
  UBHA_18 U1 (C[19], S[18], X[18], Y[18]);
endmodule

module PureCSHA_1_0 (C, S, X, Y);
  output [2:1] C;
  output [1:0] S;
  input [1:0] X;
  input [1:0] Y;
  UBHA_0 U0 (C[1], S[0], X[0], Y[0]);
  UBHA_1 U1 (C[2], S[1], X[1], Y[1]);
endmodule

module PureCSHA_24_23 (C, S, X, Y);
  output [25:24] C;
  output [24:23] S;
  input [24:23] X;
  input [24:23] Y;
  UBHA_23 U0 (C[24], S[23], X[23], Y[23]);
  UBHA_24 U1 (C[25], S[24], X[24], Y[24]);
endmodule

module PureCSHA_25_22 (C, S, X, Y);
  output [26:23] C;
  output [25:22] S;
  input [25:22] X;
  input [25:22] Y;
  UBHA_22 U0 (C[23], S[22], X[22], Y[22]);
  UBHA_23 U1 (C[24], S[23], X[23], Y[23]);
  UBHA_24 U2 (C[25], S[24], X[24], Y[24]);
  UBHA_25 U3 (C[26], S[25], X[25], Y[25]);
endmodule

module PureCSHA_28_16 (C, S, X, Y);
  output [29:17] C;
  output [28:16] S;
  input [28:16] X;
  input [28:16] Y;
  UBHA_16 U0 (C[17], S[16], X[16], Y[16]);
  UBHA_17 U1 (C[18], S[17], X[17], Y[17]);
  UBHA_18 U2 (C[19], S[18], X[18], Y[18]);
  UBHA_19 U3 (C[20], S[19], X[19], Y[19]);
  UBHA_20 U4 (C[21], S[20], X[20], Y[20]);
  UBHA_21 U5 (C[22], S[21], X[21], Y[21]);
  UBHA_22 U6 (C[23], S[22], X[22], Y[22]);
  UBHA_23 U7 (C[24], S[23], X[23], Y[23]);
  UBHA_24 U8 (C[25], S[24], X[24], Y[24]);
  UBHA_25 U9 (C[26], S[25], X[25], Y[25]);
  UBHA_26 U10 (C[27], S[26], X[26], Y[26]);
  UBHA_27 U11 (C[28], S[27], X[27], Y[27]);
  UBHA_28 U12 (C[29], S[28], X[28], Y[28]);
endmodule

module PureCSHA_29_27 (C, S, X, Y);
  output [30:28] C;
  output [29:27] S;
  input [29:27] X;
  input [29:27] Y;
  UBHA_27 U0 (C[28], S[27], X[27], Y[27]);
  UBHA_28 U1 (C[29], S[28], X[28], Y[28]);
  UBHA_29 U2 (C[30], S[29], X[29], Y[29]);
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

module TCU4VPPG_14_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [14:0] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [14:1] P;
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
  U4DPPGH_14_0 U14 (O_T, O_R[14], IN1_T, U__d1, U__d0, P[14]);
endmodule

module TCU4VPPG_14_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [16:2] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [16:3] P;
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
  U4DPPGH_14_1 U14 (O_T, O_R[16], IN1_T, U__d1, U__d0, P[16]);
endmodule

module TCU4VPPG_14_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [18:4] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [18:5] P;
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
  U4DPPGH_14_2 U14 (O_T, O_R[18], IN1_T, U__d1, U__d0, P[18]);
endmodule

module TCU4VPPG_14_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [20:6] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [20:7] P;
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
  U4DPPGH_14_3 U14 (O_T, O_R[20], IN1_T, U__d1, U__d0, P[20]);
endmodule

module TCU4VPPG_14_0_4 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [22:8] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [22:9] P;
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
  U4DPPGH_14_4 U14 (O_T, O_R[22], IN1_T, U__d1, U__d0, P[22]);
endmodule

module TCU4VPPG_14_0_5 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [24:10] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [24:11] P;
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
  U4DPPGH_14_5 U14 (O_T, O_R[24], IN1_T, U__d1, U__d0, P[24]);
endmodule

module TCU4VPPG_14_0_6 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [26:12] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [26:13] P;
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
  U4DPPGH_14_6 U14 (O_T, O_R[26], IN1_T, U__d1, U__d0, P[26]);
endmodule

module TCU4VPPG_14_0_7 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [28:14] O_R;
  output O_T;
  input [13:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [28:15] P;
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
  U4DPPGH_14_7 U14 (O_T, O_R[28], IN1_T, U__d1, U__d0, P[28]);
endmodule

module TUBWCON_15_0 (O, I_T, I_R, S);
  output [15:0] O;
  input [14:0] I_R;
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
  BWCNP_15 U15 (O[15], I_T, S);
endmodule

module TUBWCON_17_2 (O, I_T, I_R, S);
  output [17:2] O;
  input [16:2] I_R;
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
  BWCNP_17 U15 (O[17], I_T, S);
endmodule

module TUBWCON_19_4 (O, I_T, I_R, S);
  output [19:4] O;
  input [18:4] I_R;
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
  BWCNP_19 U15 (O[19], I_T, S);
endmodule

module TUBWCON_21_6 (O, I_T, I_R, S);
  output [21:6] O;
  input [20:6] I_R;
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
  BWCNP_21 U15 (O[21], I_T, S);
endmodule

module TUBWCON_23_8 (O, I_T, I_R, S);
  output [23:8] O;
  input [22:8] I_R;
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
  BWCNP_23 U15 (O[23], I_T, S);
endmodule

module TUBWCON_25_10 (O, I_T, I_R, S);
  output [25:10] O;
  input [24:10] I_R;
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
  BWCNP_25 U15 (O[25], I_T, S);
endmodule

module TUBWCON_27_12 (O, I_T, I_R, S);
  output [27:12] O;
  input [26:12] I_R;
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
  BWCNP_27 U15 (O[27], I_T, S);
endmodule

module TUBWCON_29_14 (O, I_T, I_R, S);
  output [29:14] O;
  input [28:14] I_R;
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
  BWCNP_29 U15 (O[29], I_T, S);
endmodule

module UBARYACC_24_6_26_000 (S1, S2, PP0, PP1);
  output [24:6] S1;
  output [26:8] S2;
  input [24:6] PP0;
  input [26:8] PP1;
  UBCON_24_6 U0 (S1, PP0);
  UBCON_26_8 U1 (S2, PP1);
endmodule

module UBARYACC_28_10_29000 (S1, S2, PP0, PP1, PP2);
  output [29:13] S1;
  output [29:10] S2;
  input [28:10] PP0;
  input [29:12] PP1;
  input [15:14] PP2;
  CSA_28_10_29_12_1000 U0 (S1, S2, PP0, PP1, PP2);
endmodule

module UBCMBIN_15_15_14_000 (O, IN0, IN1);
  output [15:14] O;
  input IN0;
  input IN1;
  UB1DCON_15 U0 (O[15], IN0);
  UB1DCON_14 U1 (O[14], IN1);
endmodule

module UBCMBIN_16_16_15_000 (O, IN0, IN1);
  output [16:0] O;
  input IN0;
  input [15:0] IN1;
  UB1DCON_16 U0 (O[16], IN0);
  UBCON_15_0 U1 (O[15:0], IN1);
endmodule

module UBCMBIN_18_18_17_000 (O, IN0, IN1, IN2);
  output [18:0] O;
  input IN0;
  input [17:2] IN1;
  input IN2;
  UB1DCON_18 U0 (O[18], IN0);
  UBCON_17_2 U1 (O[17:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_20_20_19_000 (O, IN0, IN1, IN2);
  output [20:2] O;
  input IN0;
  input [19:4] IN1;
  input IN2;
  UB1DCON_20 U0 (O[20], IN0);
  UBCON_19_4 U1 (O[19:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_22_22_21_000 (O, IN0, IN1, IN2);
  output [22:4] O;
  input IN0;
  input [21:6] IN1;
  input IN2;
  UB1DCON_22 U0 (O[22], IN0);
  UBCON_21_6 U1 (O[21:6], IN1);
  UBZero_5_5 U2 (O[5]);
  UB1DCON_4 U3 (O[4], IN2);
endmodule

module UBCMBIN_24_24_23_000 (O, IN0, IN1, IN2);
  output [24:6] O;
  input IN0;
  input [23:8] IN1;
  input IN2;
  UB1DCON_24 U0 (O[24], IN0);
  UBCON_23_8 U1 (O[23:8], IN1);
  UBZero_7_7 U2 (O[7]);
  UB1DCON_6 U3 (O[6], IN2);
endmodule

module UBCMBIN_26_26_25_000 (O, IN0, IN1, IN2);
  output [26:8] O;
  input IN0;
  input [25:10] IN1;
  input IN2;
  UB1DCON_26 U0 (O[26], IN0);
  UBCON_25_10 U1 (O[25:10], IN1);
  UBZero_9_9 U2 (O[9]);
  UB1DCON_8 U3 (O[8], IN2);
endmodule

module UBCMBIN_28_28_27_000 (O, IN0, IN1, IN2);
  output [28:10] O;
  input IN0;
  input [27:12] IN1;
  input IN2;
  UB1DCON_28 U0 (O[28], IN0);
  UBCON_27_12 U1 (O[27:12], IN1);
  UBZero_11_11 U2 (O[11]);
  UB1DCON_10 U3 (O[10], IN2);
endmodule

module UBCMBIN_29_14_12_000 (O, IN0, IN1);
  output [29:12] O;
  input [29:14] IN0;
  input IN1;
  UBCON_29_14 U0 (O[29:14], IN0);
  UBZero_13_13 U1 (O[13]);
  UB1DCON_12 U2 (O[12], IN1);
endmodule

module UBCON_11_10 (O, I);
  output [11:10] O;
  input [11:10] I;
  UB1DCON_10 U0 (O[10], I[10]);
  UB1DCON_11 U1 (O[11], I[11]);
endmodule

module UBCON_15_0 (O, I);
  output [15:0] O;
  input [15:0] I;
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
endmodule

module UBCON_17_2 (O, I);
  output [17:2] O;
  input [17:2] I;
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
endmodule

module UBCON_19_4 (O, I);
  output [19:4] O;
  input [19:4] I;
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
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_20_19 (O, I);
  output [20:19] O;
  input [20:19] I;
  UB1DCON_19 U0 (O[19], I[19]);
  UB1DCON_20 U1 (O[20], I[20]);
endmodule

module UBCON_21_6 (O, I);
  output [21:6] O;
  input [21:6] I;
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
endmodule

module UBCON_22_4 (O, I);
  output [22:4] O;
  input [22:4] I;
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
endmodule

module UBCON_23_8 (O, I);
  output [23:8] O;
  input [23:8] I;
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
endmodule

module UBCON_24_6 (O, I);
  output [24:6] O;
  input [24:6] I;
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
endmodule

module UBCON_25_10 (O, I);
  output [25:10] O;
  input [25:10] I;
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
endmodule

module UBCON_25_21 (O, I);
  output [25:21] O;
  input [25:21] I;
  UB1DCON_21 U0 (O[21], I[21]);
  UB1DCON_22 U1 (O[22], I[22]);
  UB1DCON_23 U2 (O[23], I[23]);
  UB1DCON_24 U3 (O[24], I[24]);
  UB1DCON_25 U4 (O[25], I[25]);
endmodule

module UBCON_26_25 (O, I);
  output [26:25] O;
  input [26:25] I;
  UB1DCON_25 U0 (O[25], I[25]);
  UB1DCON_26 U1 (O[26], I[26]);
endmodule

module UBCON_26_8 (O, I);
  output [26:8] O;
  input [26:8] I;
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
endmodule

module UBCON_27_12 (O, I);
  output [27:12] O;
  input [27:12] I;
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
endmodule

module UBCON_29_14 (O, I);
  output [29:14] O;
  input [29:14] I;
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
endmodule

module UBCON_2_0 (O, I);
  output [2:0] O;
  input [2:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
endmodule

module UBCON_30_26 (O, I);
  output [30:26] O;
  input [30:26] I;
  UB1DCON_26 U0 (O[26], I[26]);
  UB1DCON_27 U1 (O[27], I[27]);
  UB1DCON_28 U2 (O[28], I[28]);
  UB1DCON_29 U3 (O[29], I[29]);
  UB1DCON_30 U4 (O[30], I[30]);
endmodule

module UBCON_3_0 (O, I);
  output [3:0] O;
  input [3:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
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

module UBKSA_30_4_30_0 (S, X, Y);
  output [31:0] S;
  input [30:4] X;
  input [30:0] Y;
  UBPureKSA_30_4 U0 (S[31:4], X[30:4], Y[30:4]);
  UBCON_3_0 U1 (S[3:0], Y[3:0]);
endmodule

module UBPureKSA_30_4 (S, X, Y);
  output [31:4] S;
  input [30:4] X;
  input [30:4] Y;
  wire C;
  UBPriKSA_30_4 U0 (S, X, Y, C);
  UBZero_4_4 U1 (C);
endmodule

module UBR4BE_13_0 (O__ds, O__d1, O__d0, I);
  output [7:0] O__ds, O__d1, O__d0;
  input [13:0] I;
  wire T;
  NUBZero_14_14 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEE_4 U5 (O__ds[4], O__d1[4], O__d0[4], I[9], I[8], I[7]);
  R4BEE_5 U6 (O__ds[5], O__d1[5], O__d0[5], I[11], I[10], I[9]);
  R4BEE_6 U7 (O__ds[6], O__d1[6], O__d0[6], I[13], I[12], I[11]);
  R4BEEH_7_2 U8 (O__ds[7], O__d1[7], O__d0[7], T, I[13]);
endmodule

module UBR4BPPG_13_0_13_000 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, IN1, IN2);
  output [16:0] PP0;
  output [18:0] PP1;
  output [20:2] PP2;
  output [22:4] PP3;
  output [24:6] PP4;
  output [26:8] PP5;
  output [28:10] PP6;
  output [29:12] PP7;
  output [15:14] PP8;
  input [13:0] IN1;
  input [13:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire B5;
  wire B6;
  wire B7;
  wire [7:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [15:0] PPT0;
  wire [17:2] PPT1;
  wire [19:4] PPT2;
  wire [21:6] PPT3;
  wire [23:8] PPT4;
  wire [25:10] PPT5;
  wire [27:12] PPT6;
  wire [29:14] PPT7;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  wire S5;
  wire S6;
  wire S7;
  UBR4BE_13_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_13_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_13_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_13_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_13_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_13_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBSD4VPPG_13_0_5 U6 (PPT5, S5, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBSD4VPPG_13_0_6 U7 (PPT6, S6, IN1, IN2SD__ds[6], IN2SD__d1[6], IN2SD__d0[6]);
  UBSD4VPPG_13_0_7 U8 (PPT7, S7, IN1, IN2SD__ds[7], IN2SD__d1[7], IN2SD__d0[7]);
  UBOne_16 U9 (B0);
  UBCMBIN_16_16_15_000 U10 (PP0, B0, PPT0);
  UBOne_18 U11 (B1);
  UBCMBIN_18_18_17_000 U12 (PP1, B1, PPT1, S0);
  UBOne_20 U13 (B2);
  UBCMBIN_20_20_19_000 U14 (PP2, B2, PPT2, S1);
  UBOne_22 U15 (B3);
  UBCMBIN_22_22_21_000 U16 (PP3, B3, PPT3, S2);
  UBOne_24 U17 (B4);
  UBCMBIN_24_24_23_000 U18 (PP4, B4, PPT4, S3);
  UBOne_26 U19 (B5);
  UBCMBIN_26_26_25_000 U20 (PP5, B5, PPT5, S4);
  UBOne_28 U21 (B6);
  UBCMBIN_28_28_27_000 U22 (PP6, B6, PPT6, S5);
  UBCMBIN_29_14_12_000 U23 (PP7, PPT7, S6);
  UBOne_15 U24 (B7);
  UBCMBIN_15_15_14_000 U25 (PP8, B7, S7);
endmodule

module UBSD4VPPG_13_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [15:0] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [14:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_15_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [17:2] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [16:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_17_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [19:4] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [18:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_19_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [21:6] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [20:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_21_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_4 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [23:8] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [22:8] W_R;
  wire W_T;
  SD41DDECON_4 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_4 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_23_8 U3 (PP, W_T, W_R, S);
  UBBBG_8 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_5 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [25:10] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [24:10] W_R;
  wire W_T;
  SD41DDECON_5 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_5 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_25_10 U3 (PP, W_T, W_R, S);
  UBBBG_10 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_6 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [27:12] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [26:12] W_R;
  wire W_T;
  SD41DDECON_6 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_6 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_27_12 U3 (PP, W_T, W_R, S);
  UBBBG_12 U4 (C, S);
endmodule

module UBSD4VPPG_13_0_7 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [29:14] PP;
  input [13:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [28:14] W_R;
  wire W_T;
  SD41DDECON_7 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_14_14 U1 (NZ);
  TCU4VPPG_14_0_7 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_29_14 U3 (PP, W_T, W_R, S);
  UBBBG_14 U4 (C, S);
endmodule

module UBTCCONV30_31_0 (O, I);
  output [32:0] O;
  input [31:0] I;
  UBTC1CON32_0 U0 (O[0], I[0]);
  UBTC1CON32_1 U1 (O[1], I[1]);
  UBTC1CON32_2 U2 (O[2], I[2]);
  UBTC1CON32_3 U3 (O[3], I[3]);
  UBTC1CON32_4 U4 (O[4], I[4]);
  UBTC1CON32_5 U5 (O[5], I[5]);
  UBTC1CON32_6 U6 (O[6], I[6]);
  UBTC1CON32_7 U7 (O[7], I[7]);
  UBTC1CON32_8 U8 (O[8], I[8]);
  UBTC1CON32_9 U9 (O[9], I[9]);
  UBTC1CON32_10 U10 (O[10], I[10]);
  UBTC1CON32_11 U11 (O[11], I[11]);
  UBTC1CON32_12 U12 (O[12], I[12]);
  UBTC1CON32_13 U13 (O[13], I[13]);
  UBTC1CON32_14 U14 (O[14], I[14]);
  UBTC1CON32_15 U15 (O[15], I[15]);
  UBTC1CON32_16 U16 (O[16], I[16]);
  UBTC1CON32_17 U17 (O[17], I[17]);
  UBTC1CON32_18 U18 (O[18], I[18]);
  UBTC1CON32_19 U19 (O[19], I[19]);
  UBTC1CON32_20 U20 (O[20], I[20]);
  UBTC1CON32_21 U21 (O[21], I[21]);
  UBTC1CON32_22 U22 (O[22], I[22]);
  UBTC1CON32_23 U23 (O[23], I[23]);
  UBTC1CON32_24 U24 (O[24], I[24]);
  UBTC1CON32_25 U25 (O[25], I[25]);
  UBTC1CON32_26 U26 (O[26], I[26]);
  UBTC1CON32_27 U27 (O[27], I[27]);
  UBTC1CON32_28 U28 (O[28], I[28]);
  UBTC1CON32_29 U29 (O[29], I[29]);
  UBTCTCONV_31_30 U30 (O[32:30], I[31:30]);
endmodule
