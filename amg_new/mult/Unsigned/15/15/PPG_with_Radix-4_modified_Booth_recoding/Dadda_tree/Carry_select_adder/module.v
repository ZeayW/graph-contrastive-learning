/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_14_0_1000

  Number system: Unsigned binary
  Multiplicand length: 15
  Multiplier length: 15
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Dadda tree
  Final stage addition: Carry select adder
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

module UBHA_10(C, S, X, Y);
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

module UBHA_12(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_14(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_17(C, S, X, Y);
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

module UBHA_19(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_6(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_8(C, S, X, Y);
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

module UBHA_23(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_4(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBHA_2(C, S, X, Y);
  output C;
  output S;
  input X;
  input Y;
  assign C = X & Y;
  assign S = X ^ Y;
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

module UBFA_0(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBOne_1(O);
  output O;
  assign O = 1;
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

module UBCSlB_1_1(Co, S, X, Y, Ci);
  output Co;
  output [1:1] S;
  input Ci;
  input [1:1] X;
  input [1:1] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [1:1] S_0;
  wire [1:1] S_1;
  assign S[1] = ( S_0[1] & ( ~ Ci ) ) | ( S_1[1] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_1 U0 (Ci_1);
  UBZero_1_1 U1 (Ci_0);
  UBRCB_1_1 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_1_1 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_2(O);
  output O;
  assign O = 1;
endmodule

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
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

module UBCSlB_3_2(Co, S, X, Y, Ci);
  output Co;
  output [3:2] S;
  input Ci;
  input [3:2] X;
  input [3:2] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [3:2] S_0;
  wire [3:2] S_1;
  assign S[2] = ( S_0[2] & ( ~ Ci ) ) | ( S_1[2] & Ci );
  assign S[3] = ( S_0[3] & ( ~ Ci ) ) | ( S_1[3] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_2 U0 (Ci_1);
  UBZero_2_2 U1 (Ci_0);
  UBRCB_3_2 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_3_2 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_4(O);
  output O;
  assign O = 1;
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module UBCSlB_6_4(Co, S, X, Y, Ci);
  output Co;
  output [6:4] S;
  input Ci;
  input [6:4] X;
  input [6:4] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [6:4] S_0;
  wire [6:4] S_1;
  assign S[4] = ( S_0[4] & ( ~ Ci ) ) | ( S_1[4] & Ci );
  assign S[5] = ( S_0[5] & ( ~ Ci ) ) | ( S_1[5] & Ci );
  assign S[6] = ( S_0[6] & ( ~ Ci ) ) | ( S_1[6] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_4 U0 (Ci_1);
  UBZero_4_4 U1 (Ci_0);
  UBRCB_6_4 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_6_4 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
endmodule

module UBCSlB_10_7(Co, S, X, Y, Ci);
  output Co;
  output [10:7] S;
  input Ci;
  input [10:7] X;
  input [10:7] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [10:7] S_0;
  wire [10:7] S_1;
  assign S[7] = ( S_0[7] & ( ~ Ci ) ) | ( S_1[7] & Ci );
  assign S[8] = ( S_0[8] & ( ~ Ci ) ) | ( S_1[8] & Ci );
  assign S[9] = ( S_0[9] & ( ~ Ci ) ) | ( S_1[9] & Ci );
  assign S[10] = ( S_0[10] & ( ~ Ci ) ) | ( S_1[10] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_7 U0 (Ci_1);
  UBZero_7_7 U1 (Ci_0);
  UBRCB_10_7 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_10_7 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
endmodule

module UBCSlB_15_11(Co, S, X, Y, Ci);
  output Co;
  output [15:11] S;
  input Ci;
  input [15:11] X;
  input [15:11] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [15:11] S_0;
  wire [15:11] S_1;
  assign S[11] = ( S_0[11] & ( ~ Ci ) ) | ( S_1[11] & Ci );
  assign S[12] = ( S_0[12] & ( ~ Ci ) ) | ( S_1[12] & Ci );
  assign S[13] = ( S_0[13] & ( ~ Ci ) ) | ( S_1[13] & Ci );
  assign S[14] = ( S_0[14] & ( ~ Ci ) ) | ( S_1[14] & Ci );
  assign S[15] = ( S_0[15] & ( ~ Ci ) ) | ( S_1[15] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_11 U0 (Ci_1);
  UBZero_11_11 U1 (Ci_0);
  UBRCB_15_11 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_15_11 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_16_16(O);
  output [16:16] O;
  assign O[16] = 0;
endmodule

module UBCSlB_21_16(Co, S, X, Y, Ci);
  output Co;
  output [21:16] S;
  input Ci;
  input [21:16] X;
  input [21:16] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [21:16] S_0;
  wire [21:16] S_1;
  assign S[16] = ( S_0[16] & ( ~ Ci ) ) | ( S_1[16] & Ci );
  assign S[17] = ( S_0[17] & ( ~ Ci ) ) | ( S_1[17] & Ci );
  assign S[18] = ( S_0[18] & ( ~ Ci ) ) | ( S_1[18] & Ci );
  assign S[19] = ( S_0[19] & ( ~ Ci ) ) | ( S_1[19] & Ci );
  assign S[20] = ( S_0[20] & ( ~ Ci ) ) | ( S_1[20] & Ci );
  assign S[21] = ( S_0[21] & ( ~ Ci ) ) | ( S_1[21] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_16 U0 (Ci_1);
  UBZero_16_16 U1 (Ci_0);
  UBRCB_21_16 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_21_16 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBOne_22(O);
  output O;
  assign O = 1;
endmodule

module UBZero_22_22(O);
  output [22:22] O;
  assign O[22] = 0;
endmodule

module UBCSlB_28_22(Co, S, X, Y, Ci);
  output Co;
  output [28:22] S;
  input Ci;
  input [28:22] X;
  input [28:22] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [28:22] S_0;
  wire [28:22] S_1;
  assign S[22] = ( S_0[22] & ( ~ Ci ) ) | ( S_1[22] & Ci );
  assign S[23] = ( S_0[23] & ( ~ Ci ) ) | ( S_1[23] & Ci );
  assign S[24] = ( S_0[24] & ( ~ Ci ) ) | ( S_1[24] & Ci );
  assign S[25] = ( S_0[25] & ( ~ Ci ) ) | ( S_1[25] & Ci );
  assign S[26] = ( S_0[26] & ( ~ Ci ) ) | ( S_1[26] & Ci );
  assign S[27] = ( S_0[27] & ( ~ Ci ) ) | ( S_1[27] & Ci );
  assign S[28] = ( S_0[28] & ( ~ Ci ) ) | ( S_1[28] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_22 U0 (Ci_1);
  UBZero_22_22 U1 (Ci_0);
  UBRCB_28_22 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_28_22 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBZero_29_29(O);
  output [29:29] O;
  assign O[29] = 0;
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

module UBCSlB_30_29(Co, S, X, Y, Ci);
  output Co;
  output [30:29] S;
  input Ci;
  input [30:29] X;
  input [30:29] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [30:29] S_0;
  wire [30:29] S_1;
  assign S[29] = ( S_0[29] & ( ~ Ci ) ) | ( S_1[29] & Ci );
  assign S[30] = ( S_0[30] & ( ~ Ci ) ) | ( S_1[30] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_29 U0 (Ci_1);
  UBZero_29_29 U1 (Ci_0);
  UBRCB_30_29 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_30_29 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBPriCSlA_30_0(S, X, Y, Cin);
  output [31:0] S;
  input Cin;
  input [30:0] X;
  input [30:0] Y;
  wire C0;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  wire C7;
  UBRCB_0_0 U0 (C0, S[0], X[0], Y[0], Cin);
  UBCSlB_1_1 U1 (C1, S[1], X[1], Y[1], C0);
  UBCSlB_3_2 U2 (C2, S[3:2], X[3:2], Y[3:2], C1);
  UBCSlB_6_4 U3 (C3, S[6:4], X[6:4], Y[6:4], C2);
  UBCSlB_10_7 U4 (C4, S[10:7], X[10:7], Y[10:7], C3);
  UBCSlB_15_11 U5 (C5, S[15:11], X[15:11], Y[15:11], C4);
  UBCSlB_21_16 U6 (C6, S[21:16], X[21:16], Y[21:16], C5);
  UBCSlB_28_22 U7 (C7, S[28:22], X[28:22], Y[28:22], C6);
  UBCSlB_30_29 U8 (S[31], S[30:29], X[30:29], Y[30:29], C7);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBTC1CON31_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON31_30(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_31_31(O, I);
  output [31:31] O;
  input [31:31] I;
  assign O = ~ I;
endmodule

module Multiplier_14_0_1000(P, IN1, IN2);
  output [29:0] P;
  input [14:0] IN1;
  input [14:0] IN2;
  wire [31:0] W;
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
  MultUB_R4B_DAD_CS000 U0 (W, IN1, IN2);
endmodule

module DADTR_17_0_19_0_2000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  output [30:0] S1;
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
  wire [30:0] W0;
  wire [29:0] W1;
  wire [27:2] W2;
  wire [25:4] W3;
  wire [23:6] W4;
  wire [22:8] W5;
  UBHA_10 U0 (W4[11], W5[10], PP0[10], PP1[10]);
  UBFA_11 U1 (W3[12], W5[11], PP0[11], PP1[11], PP2[11]);
  UBFA_12 U2 (W2[13], W4[12], PP0[12], PP1[12], PP2[12]);
  UBHA_12 U3 (W3[13], W5[12], PP3[12], PP4[12]);
  UBFA_13 U4 (W1[14], W4[13], PP0[13], PP1[13], PP2[13]);
  UBFA_13 U5 (W2[14], W5[13], PP3[13], PP4[13], PP5[13]);
  UBFA_14 U6 (W0[15], W3[14], PP0[14], PP1[14], PP2[14]);
  UBFA_14 U7 (W1[15], W4[14], PP3[14], PP4[14], PP5[14]);
  UBHA_14 U8 (W2[15], W5[14], PP6[14], PP7[14]);
  UBFA_15 U9 (W0[16], W3[15], PP0[15], PP1[15], PP2[15]);
  UBFA_15 U10 (W1[16], W4[15], PP3[15], PP4[15], PP5[15]);
  UBFA_15 U11 (W2[16], W5[15], PP6[15], PP7[15], PP8[15]);
  UBFA_16 U12 (W0[17], W3[16], PP0[16], PP1[16], PP2[16]);
  UBFA_16 U13 (W1[17], W4[16], PP3[16], PP4[16], PP5[16]);
  UBFA_16 U14 (W2[17], W5[16], PP6[16], PP7[16], PP8[16]);
  UBFA_17 U15 (W1[18], W3[17], PP0[17], PP1[17], PP2[17]);
  UBFA_17 U16 (W2[18], W4[17], PP3[17], PP4[17], PP5[17]);
  UBHA_17 U17 (W3[18], W5[17], PP6[17], PP7[17]);
  UBFA_18 U18 (W2[19], W4[18], PP1[18], PP2[18], PP3[18]);
  UBFA_18 U19 (W3[19], W5[18], PP4[18], PP5[18], PP6[18]);
  UBFA_19 U20 (W3[20], W4[19], PP1[19], PP2[19], PP3[19]);
  UBHA_19 U21 (W4[20], W5[19], PP4[19], PP5[19]);
  UBFA_20 U22 (W4[21], W5[20], PP2[20], PP3[20], PP4[20]);
  UBHA_21 U23 (W5[22], W5[21], PP2[21], PP3[21]);
  UBCON_9_0 U24 (W0[9:0], PP0[9:0]);
  UB1DCON_10 U25 (W0[10], PP2[10]);
  UB1DCON_11 U26 (W0[11], PP3[11]);
  UB1DCON_12 U27 (W0[12], PP5[12]);
  UB1DCON_13 U28 (W0[13], PP6[13]);
  UB1DCON_14 U29 (W0[14], PP8[14]);
  UB1DCON_18 U30 (W0[18], PP7[18]);
  UB1DCON_19 U31 (W0[19], PP6[19]);
  UB1DCON_20 U32 (W0[20], PP5[20]);
  UB1DCON_21 U33 (W0[21], PP4[21]);
  UBCON_23_22 U34 (W0[23:22], PP3[23:22]);
  UBCON_25_24 U35 (W0[25:24], PP4[25:24]);
  UBCON_27_26 U36 (W0[27:26], PP5[27:26]);
  UBCON_29_28 U37 (W0[29:28], PP6[29:28]);
  UB1DCON_30 U38 (W0[30], PP7[30]);
  UBCON_9_0 U39 (W1[9:0], PP1[9:0]);
  UB1DCON_10 U40 (W1[10], PP3[10]);
  UB1DCON_11 U41 (W1[11], PP4[11]);
  UB1DCON_12 U42 (W1[12], PP6[12]);
  UB1DCON_13 U43 (W1[13], PP7[13]);
  UB1DCON_19 U44 (W1[19], PP7[19]);
  UB1DCON_20 U45 (W1[20], PP6[20]);
  UB1DCON_21 U46 (W1[21], PP5[21]);
  UBCON_23_22 U47 (W1[23:22], PP4[23:22]);
  UBCON_25_24 U48 (W1[25:24], PP5[25:24]);
  UBCON_27_26 U49 (W1[27:26], PP6[27:26]);
  UBCON_29_28 U50 (W1[29:28], PP7[29:28]);
  UBCON_9_2 U51 (W2[9:2], PP2[9:2]);
  UB1DCON_10 U52 (W2[10], PP4[10]);
  UB1DCON_11 U53 (W2[11], PP5[11]);
  UB1DCON_12 U54 (W2[12], PP7[12]);
  UB1DCON_20 U55 (W2[20], PP7[20]);
  UB1DCON_21 U56 (W2[21], PP6[21]);
  UBCON_23_22 U57 (W2[23:22], PP5[23:22]);
  UBCON_25_24 U58 (W2[25:24], PP6[25:24]);
  UBCON_27_26 U59 (W2[27:26], PP7[27:26]);
  UBCON_9_4 U60 (W3[9:4], PP3[9:4]);
  UB1DCON_10 U61 (W3[10], PP5[10]);
  UB1DCON_11 U62 (W3[11], PP6[11]);
  UB1DCON_21 U63 (W3[21], PP7[21]);
  UBCON_23_22 U64 (W3[23:22], PP6[23:22]);
  UBCON_25_24 U65 (W3[25:24], PP7[25:24]);
  UBCON_9_6 U66 (W4[9:6], PP4[9:6]);
  UB1DCON_10 U67 (W4[10], PP6[10]);
  UBCON_23_22 U68 (W4[23:22], PP7[23:22]);
  UBCON_9_8 U69 (W5[9:8], PP5[9:8]);
  DADTR_30_0_29_0_2000 U70 (S1, S2, W0, W1, W2, W3, W4, W5);
endmodule

module DADTR_30_0_29_0_2000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [30:0] S1;
  output [30:0] S2;
  input [30:0] PP0;
  input [29:0] PP1;
  input [27:2] PP2;
  input [25:4] PP3;
  input [23:6] PP4;
  input [22:8] PP5;
  wire [30:0] W0;
  wire [29:0] W1;
  wire [27:2] W2;
  wire [26:4] W3;
  UBHA_6 U0 (W2[7], W3[6], PP0[6], PP1[6]);
  UBFA_7 U1 (W1[8], W3[7], PP0[7], PP1[7], PP2[7]);
  UBFA_8 U2 (W0[9], W2[8], PP0[8], PP1[8], PP2[8]);
  UBHA_8 U3 (W1[9], W3[8], PP3[8], PP4[8]);
  UBFA_9 U4 (W0[10], W2[9], PP0[9], PP1[9], PP2[9]);
  UBFA_9 U5 (W1[10], W3[9], PP3[9], PP4[9], PP5[9]);
  UBFA_10 U6 (W0[11], W2[10], PP0[10], PP1[10], PP2[10]);
  UBFA_10 U7 (W1[11], W3[10], PP3[10], PP4[10], PP5[10]);
  UBFA_11 U8 (W0[12], W2[11], PP0[11], PP1[11], PP2[11]);
  UBFA_11 U9 (W1[12], W3[11], PP3[11], PP4[11], PP5[11]);
  UBFA_12 U10 (W0[13], W2[12], PP0[12], PP1[12], PP2[12]);
  UBFA_12 U11 (W1[13], W3[12], PP3[12], PP4[12], PP5[12]);
  UBFA_13 U12 (W0[14], W2[13], PP0[13], PP1[13], PP2[13]);
  UBFA_13 U13 (W1[14], W3[13], PP3[13], PP4[13], PP5[13]);
  UBFA_14 U14 (W0[15], W2[14], PP0[14], PP1[14], PP2[14]);
  UBFA_14 U15 (W1[15], W3[14], PP3[14], PP4[14], PP5[14]);
  UBFA_15 U16 (W0[16], W2[15], PP0[15], PP1[15], PP2[15]);
  UBFA_15 U17 (W1[16], W3[15], PP3[15], PP4[15], PP5[15]);
  UBFA_16 U18 (W0[17], W2[16], PP0[16], PP1[16], PP2[16]);
  UBFA_16 U19 (W1[17], W3[16], PP3[16], PP4[16], PP5[16]);
  UBFA_17 U20 (W0[18], W2[17], PP0[17], PP1[17], PP2[17]);
  UBFA_17 U21 (W1[18], W3[17], PP3[17], PP4[17], PP5[17]);
  UBFA_18 U22 (W0[19], W2[18], PP0[18], PP1[18], PP2[18]);
  UBFA_18 U23 (W1[19], W3[18], PP3[18], PP4[18], PP5[18]);
  UBFA_19 U24 (W0[20], W2[19], PP0[19], PP1[19], PP2[19]);
  UBFA_19 U25 (W1[20], W3[19], PP3[19], PP4[19], PP5[19]);
  UBFA_20 U26 (W0[21], W2[20], PP0[20], PP1[20], PP2[20]);
  UBFA_20 U27 (W1[21], W3[20], PP3[20], PP4[20], PP5[20]);
  UBFA_21 U28 (W0[22], W2[21], PP0[21], PP1[21], PP2[21]);
  UBFA_21 U29 (W1[22], W3[21], PP3[21], PP4[21], PP5[21]);
  UBFA_22 U30 (W0[23], W2[22], PP0[22], PP1[22], PP2[22]);
  UBFA_22 U31 (W1[23], W3[22], PP3[22], PP4[22], PP5[22]);
  UBFA_23 U32 (W1[24], W2[23], PP0[23], PP1[23], PP2[23]);
  UBHA_23 U33 (W2[24], W3[23], PP3[23], PP4[23]);
  UBFA_24 U34 (W2[25], W3[24], PP0[24], PP1[24], PP2[24]);
  UBHA_25 U35 (W3[26], W3[25], PP0[25], PP1[25]);
  UBCON_5_0 U36 (W0[5:0], PP0[5:0]);
  UB1DCON_6 U37 (W0[6], PP2[6]);
  UB1DCON_7 U38 (W0[7], PP3[7]);
  UB1DCON_8 U39 (W0[8], PP5[8]);
  UB1DCON_24 U40 (W0[24], PP3[24]);
  UB1DCON_25 U41 (W0[25], PP2[25]);
  UBCON_30_26 U42 (W0[30:26], PP0[30:26]);
  UBCON_5_0 U43 (W1[5:0], PP1[5:0]);
  UB1DCON_6 U44 (W1[6], PP3[6]);
  UB1DCON_7 U45 (W1[7], PP4[7]);
  UB1DCON_25 U46 (W1[25], PP3[25]);
  UBCON_29_26 U47 (W1[29:26], PP1[29:26]);
  UBCON_5_2 U48 (W2[5:2], PP2[5:2]);
  UB1DCON_6 U49 (W2[6], PP4[6]);
  UBCON_27_26 U50 (W2[27:26], PP2[27:26]);
  UBCON_5_4 U51 (W3[5:4], PP3[5:4]);
  DADTR_30_0_29_0_2001 U52 (S1, S2, W0, W1, W2, W3);
endmodule

module DADTR_30_0_29_0_2001 (S1, S2, PP0, PP1, PP2, PP3);
  output [30:0] S1;
  output [30:0] S2;
  input [30:0] PP0;
  input [29:0] PP1;
  input [27:2] PP2;
  input [26:4] PP3;
  wire [30:0] W0;
  wire [29:0] W1;
  wire [28:2] W2;
  UBHA_4 U0 (W1[5], W2[4], PP0[4], PP1[4]);
  UBFA_5 U1 (W1[6], W2[5], PP0[5], PP1[5], PP2[5]);
  UBFA_6 U2 (W1[7], W2[6], PP0[6], PP1[6], PP2[6]);
  UBFA_7 U3 (W1[8], W2[7], PP0[7], PP1[7], PP2[7]);
  UBFA_8 U4 (W1[9], W2[8], PP0[8], PP1[8], PP2[8]);
  UBFA_9 U5 (W1[10], W2[9], PP0[9], PP1[9], PP2[9]);
  UBFA_10 U6 (W1[11], W2[10], PP0[10], PP1[10], PP2[10]);
  UBFA_11 U7 (W1[12], W2[11], PP0[11], PP1[11], PP2[11]);
  UBFA_12 U8 (W1[13], W2[12], PP0[12], PP1[12], PP2[12]);
  UBFA_13 U9 (W1[14], W2[13], PP0[13], PP1[13], PP2[13]);
  UBFA_14 U10 (W1[15], W2[14], PP0[14], PP1[14], PP2[14]);
  UBFA_15 U11 (W1[16], W2[15], PP0[15], PP1[15], PP2[15]);
  UBFA_16 U12 (W1[17], W2[16], PP0[16], PP1[16], PP2[16]);
  UBFA_17 U13 (W1[18], W2[17], PP0[17], PP1[17], PP2[17]);
  UBFA_18 U14 (W1[19], W2[18], PP0[18], PP1[18], PP2[18]);
  UBFA_19 U15 (W1[20], W2[19], PP0[19], PP1[19], PP2[19]);
  UBFA_20 U16 (W1[21], W2[20], PP0[20], PP1[20], PP2[20]);
  UBFA_21 U17 (W1[22], W2[21], PP0[21], PP1[21], PP2[21]);
  UBFA_22 U18 (W1[23], W2[22], PP0[22], PP1[22], PP2[22]);
  UBFA_23 U19 (W1[24], W2[23], PP0[23], PP1[23], PP2[23]);
  UBFA_24 U20 (W1[25], W2[24], PP0[24], PP1[24], PP2[24]);
  UBFA_25 U21 (W1[26], W2[25], PP0[25], PP1[25], PP2[25]);
  UBFA_26 U22 (W1[27], W2[26], PP0[26], PP1[26], PP2[26]);
  UBHA_27 U23 (W2[28], W2[27], PP0[27], PP1[27]);
  UBCON_3_0 U24 (W0[3:0], PP0[3:0]);
  UB1DCON_4 U25 (W0[4], PP2[4]);
  UBCON_26_5 U26 (W0[26:5], PP3[26:5]);
  UB1DCON_27 U27 (W0[27], PP2[27]);
  UBCON_30_28 U28 (W0[30:28], PP0[30:28]);
  UBCON_3_0 U29 (W1[3:0], PP1[3:0]);
  UB1DCON_4 U30 (W1[4], PP3[4]);
  UBCON_29_28 U31 (W1[29:28], PP1[29:28]);
  UBCON_3_2 U32 (W2[3:2], PP2[3:2]);
  DADTR_30_0_29_0_2002 U33 (S1, S2, W0, W1, W2);
endmodule

module DADTR_30_0_29_0_2002 (S1, S2, PP0, PP1, PP2);
  output [30:0] S1;
  output [30:0] S2;
  input [30:0] PP0;
  input [29:0] PP1;
  input [28:2] PP2;
  wire [30:0] W0;
  wire [30:0] W1;
  UBHA_2 U0 (W0[3], W1[2], PP0[2], PP1[2]);
  UBFA_3 U1 (W0[4], W1[3], PP0[3], PP1[3], PP2[3]);
  UBFA_4 U2 (W0[5], W1[4], PP0[4], PP1[4], PP2[4]);
  UBFA_5 U3 (W0[6], W1[5], PP0[5], PP1[5], PP2[5]);
  UBFA_6 U4 (W0[7], W1[6], PP0[6], PP1[6], PP2[6]);
  UBFA_7 U5 (W0[8], W1[7], PP0[7], PP1[7], PP2[7]);
  UBFA_8 U6 (W0[9], W1[8], PP0[8], PP1[8], PP2[8]);
  UBFA_9 U7 (W0[10], W1[9], PP0[9], PP1[9], PP2[9]);
  UBFA_10 U8 (W0[11], W1[10], PP0[10], PP1[10], PP2[10]);
  UBFA_11 U9 (W0[12], W1[11], PP0[11], PP1[11], PP2[11]);
  UBFA_12 U10 (W0[13], W1[12], PP0[12], PP1[12], PP2[12]);
  UBFA_13 U11 (W0[14], W1[13], PP0[13], PP1[13], PP2[13]);
  UBFA_14 U12 (W0[15], W1[14], PP0[14], PP1[14], PP2[14]);
  UBFA_15 U13 (W0[16], W1[15], PP0[15], PP1[15], PP2[15]);
  UBFA_16 U14 (W0[17], W1[16], PP0[16], PP1[16], PP2[16]);
  UBFA_17 U15 (W0[18], W1[17], PP0[17], PP1[17], PP2[17]);
  UBFA_18 U16 (W0[19], W1[18], PP0[18], PP1[18], PP2[18]);
  UBFA_19 U17 (W0[20], W1[19], PP0[19], PP1[19], PP2[19]);
  UBFA_20 U18 (W0[21], W1[20], PP0[20], PP1[20], PP2[20]);
  UBFA_21 U19 (W0[22], W1[21], PP0[21], PP1[21], PP2[21]);
  UBFA_22 U20 (W0[23], W1[22], PP0[22], PP1[22], PP2[22]);
  UBFA_23 U21 (W0[24], W1[23], PP0[23], PP1[23], PP2[23]);
  UBFA_24 U22 (W0[25], W1[24], PP0[24], PP1[24], PP2[24]);
  UBFA_25 U23 (W0[26], W1[25], PP0[25], PP1[25], PP2[25]);
  UBFA_26 U24 (W0[27], W1[26], PP0[26], PP1[26], PP2[26]);
  UBFA_27 U25 (W0[28], W1[27], PP0[27], PP1[27], PP2[27]);
  UBFA_28 U26 (W0[29], W1[28], PP0[28], PP1[28], PP2[28]);
  UBHA_29 U27 (W1[30], W1[29], PP0[29], PP1[29]);
  UBCON_1_0 U28 (W0[1:0], PP0[1:0]);
  UB1DCON_2 U29 (W0[2], PP2[2]);
  UB1DCON_30 U30 (W0[30], PP0[30]);
  UBCON_1_0 U31 (W1[1:0], PP1[1:0]);
  DADTR_30_0_30_0 U32 (S1, S2, W0, W1);
endmodule

module DADTR_30_0_30_0 (S1, S2, PP0, PP1);
  output [30:0] S1;
  output [30:0] S2;
  input [30:0] PP0;
  input [30:0] PP1;
  UBCON_30_0 U0 (S1, PP0);
  UBCON_30_0 U1 (S2, PP1);
endmodule

module MultUB_R4B_DAD_CS000 (P, IN1, IN2);
  output [31:0] P;
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
  wire [30:0] S1;
  wire [30:0] S2;
  wire [31:0] UP;
  UBR4BPPG_14_0_14_000 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8, IN1, IN2);
  DADTR_17_0_19_0_2000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, PP8);
  UBCSe_30_0_30_0 U2 (UP, S1, S2);
  UBTCCONV31_31_0 U3 (P, UP);
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

module UBCON_26_5 (O, I);
  output [26:5] O;
  input [26:5] I;
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

module UBCON_29_26 (O, I);
  output [29:26] O;
  input [29:26] I;
  UB1DCON_26 U0 (O[26], I[26]);
  UB1DCON_27 U1 (O[27], I[27]);
  UB1DCON_28 U2 (O[28], I[28]);
  UB1DCON_29 U3 (O[29], I[29]);
endmodule

module UBCON_29_28 (O, I);
  output [29:28] O;
  input [29:28] I;
  UB1DCON_28 U0 (O[28], I[28]);
  UB1DCON_29 U1 (O[29], I[29]);
endmodule

module UBCON_30_0 (O, I);
  output [30:0] O;
  input [30:0] I;
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
  UB1DCON_18 U18 (O[18], I[18]);
  UB1DCON_19 U19 (O[19], I[19]);
  UB1DCON_20 U20 (O[20], I[20]);
  UB1DCON_21 U21 (O[21], I[21]);
  UB1DCON_22 U22 (O[22], I[22]);
  UB1DCON_23 U23 (O[23], I[23]);
  UB1DCON_24 U24 (O[24], I[24]);
  UB1DCON_25 U25 (O[25], I[25]);
  UB1DCON_26 U26 (O[26], I[26]);
  UB1DCON_27 U27 (O[27], I[27]);
  UB1DCON_28 U28 (O[28], I[28]);
  UB1DCON_29 U29 (O[29], I[29]);
  UB1DCON_30 U30 (O[30], I[30]);
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

module UBCON_30_26 (O, I);
  output [30:26] O;
  input [30:26] I;
  UB1DCON_26 U0 (O[26], I[26]);
  UB1DCON_27 U1 (O[27], I[27]);
  UB1DCON_28 U2 (O[28], I[28]);
  UB1DCON_29 U3 (O[29], I[29]);
  UB1DCON_30 U4 (O[30], I[30]);
endmodule

module UBCON_30_28 (O, I);
  output [30:28] O;
  input [30:28] I;
  UB1DCON_28 U0 (O[28], I[28]);
  UB1DCON_29 U1 (O[29], I[29]);
  UB1DCON_30 U2 (O[30], I[30]);
endmodule

module UBCON_3_0 (O, I);
  output [3:0] O;
  input [3:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
  UB1DCON_2 U2 (O[2], I[2]);
  UB1DCON_3 U3 (O[3], I[3]);
endmodule

module UBCON_3_2 (O, I);
  output [3:2] O;
  input [3:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
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

module UBCON_5_2 (O, I);
  output [5:2] O;
  input [5:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
  UB1DCON_4 U2 (O[4], I[4]);
  UB1DCON_5 U3 (O[5], I[5]);
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

module UBCON_9_6 (O, I);
  output [9:6] O;
  input [9:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
endmodule

module UBCON_9_8 (O, I);
  output [9:8] O;
  input [9:8] I;
  UB1DCON_8 U0 (O[8], I[8]);
  UB1DCON_9 U1 (O[9], I[9]);
endmodule

module UBCSe_30_0_30_0 (S, X, Y);
  output [31:0] S;
  input [30:0] X;
  input [30:0] Y;
  UBPureCSe_30_0 U0 (S[31:0], X[30:0], Y[30:0]);
endmodule

module UBPureCSe_30_0 (S, X, Y);
  output [31:0] S;
  input [30:0] X;
  input [30:0] Y;
  wire C;
  UBPriCSlA_30_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
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

module UBRCB_0_0 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_0 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_10_7 (Co, S, X, Y, Ci);
  output Co;
  output [10:7] S;
  input Ci;
  input [10:7] X;
  input [10:7] Y;
  wire C10;
  wire C8;
  wire C9;
  UBFA_7 U0 (C8, S[7], X[7], Y[7], Ci);
  UBFA_8 U1 (C9, S[8], X[8], Y[8], C8);
  UBFA_9 U2 (C10, S[9], X[9], Y[9], C9);
  UBFA_10 U3 (Co, S[10], X[10], Y[10], C10);
endmodule

module UBRCB_15_11 (Co, S, X, Y, Ci);
  output Co;
  output [15:11] S;
  input Ci;
  input [15:11] X;
  input [15:11] Y;
  wire C12;
  wire C13;
  wire C14;
  wire C15;
  UBFA_11 U0 (C12, S[11], X[11], Y[11], Ci);
  UBFA_12 U1 (C13, S[12], X[12], Y[12], C12);
  UBFA_13 U2 (C14, S[13], X[13], Y[13], C13);
  UBFA_14 U3 (C15, S[14], X[14], Y[14], C14);
  UBFA_15 U4 (Co, S[15], X[15], Y[15], C15);
endmodule

module UBRCB_1_1 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_1 U0 (Co, S, X, Y, Ci);
endmodule

module UBRCB_21_16 (Co, S, X, Y, Ci);
  output Co;
  output [21:16] S;
  input Ci;
  input [21:16] X;
  input [21:16] Y;
  wire C17;
  wire C18;
  wire C19;
  wire C20;
  wire C21;
  UBFA_16 U0 (C17, S[16], X[16], Y[16], Ci);
  UBFA_17 U1 (C18, S[17], X[17], Y[17], C17);
  UBFA_18 U2 (C19, S[18], X[18], Y[18], C18);
  UBFA_19 U3 (C20, S[19], X[19], Y[19], C19);
  UBFA_20 U4 (C21, S[20], X[20], Y[20], C20);
  UBFA_21 U5 (Co, S[21], X[21], Y[21], C21);
endmodule

module UBRCB_28_22 (Co, S, X, Y, Ci);
  output Co;
  output [28:22] S;
  input Ci;
  input [28:22] X;
  input [28:22] Y;
  wire C23;
  wire C24;
  wire C25;
  wire C26;
  wire C27;
  wire C28;
  UBFA_22 U0 (C23, S[22], X[22], Y[22], Ci);
  UBFA_23 U1 (C24, S[23], X[23], Y[23], C23);
  UBFA_24 U2 (C25, S[24], X[24], Y[24], C24);
  UBFA_25 U3 (C26, S[25], X[25], Y[25], C25);
  UBFA_26 U4 (C27, S[26], X[26], Y[26], C26);
  UBFA_27 U5 (C28, S[27], X[27], Y[27], C27);
  UBFA_28 U6 (Co, S[28], X[28], Y[28], C28);
endmodule

module UBRCB_30_29 (Co, S, X, Y, Ci);
  output Co;
  output [30:29] S;
  input Ci;
  input [30:29] X;
  input [30:29] Y;
  wire C30;
  UBFA_29 U0 (C30, S[29], X[29], Y[29], Ci);
  UBFA_30 U1 (Co, S[30], X[30], Y[30], C30);
endmodule

module UBRCB_3_2 (Co, S, X, Y, Ci);
  output Co;
  output [3:2] S;
  input Ci;
  input [3:2] X;
  input [3:2] Y;
  wire C3;
  UBFA_2 U0 (C3, S[2], X[2], Y[2], Ci);
  UBFA_3 U1 (Co, S[3], X[3], Y[3], C3);
endmodule

module UBRCB_6_4 (Co, S, X, Y, Ci);
  output Co;
  output [6:4] S;
  input Ci;
  input [6:4] X;
  input [6:4] Y;
  wire C5;
  wire C6;
  UBFA_4 U0 (C5, S[4], X[4], Y[4], Ci);
  UBFA_5 U1 (C6, S[5], X[5], Y[5], C5);
  UBFA_6 U2 (Co, S[6], X[6], Y[6], C6);
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

module UBTCCONV31_31_0 (O, I);
  output [31:0] O;
  input [31:0] I;
  UBTC1CON31_0 U0 (O[0], I[0]);
  UBTC1CON31_1 U1 (O[1], I[1]);
  UBTC1CON31_2 U2 (O[2], I[2]);
  UBTC1CON31_3 U3 (O[3], I[3]);
  UBTC1CON31_4 U4 (O[4], I[4]);
  UBTC1CON31_5 U5 (O[5], I[5]);
  UBTC1CON31_6 U6 (O[6], I[6]);
  UBTC1CON31_7 U7 (O[7], I[7]);
  UBTC1CON31_8 U8 (O[8], I[8]);
  UBTC1CON31_9 U9 (O[9], I[9]);
  UBTC1CON31_10 U10 (O[10], I[10]);
  UBTC1CON31_11 U11 (O[11], I[11]);
  UBTC1CON31_12 U12 (O[12], I[12]);
  UBTC1CON31_13 U13 (O[13], I[13]);
  UBTC1CON31_14 U14 (O[14], I[14]);
  UBTC1CON31_15 U15 (O[15], I[15]);
  UBTC1CON31_16 U16 (O[16], I[16]);
  UBTC1CON31_17 U17 (O[17], I[17]);
  UBTC1CON31_18 U18 (O[18], I[18]);
  UBTC1CON31_19 U19 (O[19], I[19]);
  UBTC1CON31_20 U20 (O[20], I[20]);
  UBTC1CON31_21 U21 (O[21], I[21]);
  UBTC1CON31_22 U22 (O[22], I[22]);
  UBTC1CON31_23 U23 (O[23], I[23]);
  UBTC1CON31_24 U24 (O[24], I[24]);
  UBTC1CON31_25 U25 (O[25], I[25]);
  UBTC1CON31_26 U26 (O[26], I[26]);
  UBTC1CON31_27 U27 (O[27], I[27]);
  UBTC1CON31_28 U28 (O[28], I[28]);
  UBTC1CON31_29 U29 (O[29], I[29]);
  UBTC1CON31_30 U30 (O[30], I[30]);
  UBTCTCONV_31_31 U31 (O[31], I[31]);
endmodule

