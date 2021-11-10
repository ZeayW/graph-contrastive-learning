/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_9_0_9_000

  Number system: Unsigned binary
  Multiplicand length: 10
  Multiplier length: 10
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Dadda tree
  Final stage addition: Carry select adder
----------------------------------------------------------------------------*/

module NUBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
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

module R4BEEH_5_2(O_ds, O_d1, O_d0, I1, I0);
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

module U4DPPGH_10_0(Po, O, I, U_d1, U_d0, Pi);
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

module BWCNP_11(O, I, S);
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

module U4DPPGH_10_1(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_10_2(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_10_3(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_10_4(Po, O, I, U_d1, U_d0, Pi);
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

module U4DPPGH_10_5(Po, O, I, U_d1, U_d0, Pi);
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

module UBBBG_10(O, S);
  output O;
  input S;
  assign O = S;
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

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
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

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
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

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
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

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module UB1DCON_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module UBOne_11(O);
  output O;
  assign O = 1;
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

module UBHA_16(C, S, X, Y);
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

module UBHA_20(C, S, X, Y);
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

module UBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
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

module UBPriCSlA_21_0(S, X, Y, Cin);
  output [22:0] S;
  input Cin;
  input [21:0] X;
  input [21:0] Y;
  wire C0;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  wire C5;
  UBRCB_0_0 U0 (C0, S[0], X[0], Y[0], Cin);
  UBCSlB_1_1 U1 (C1, S[1], X[1], Y[1], C0);
  UBCSlB_3_2 U2 (C2, S[3:2], X[3:2], Y[3:2], C1);
  UBCSlB_6_4 U3 (C3, S[6:4], X[6:4], Y[6:4], C2);
  UBCSlB_10_7 U4 (C4, S[10:7], X[10:7], Y[10:7], C3);
  UBCSlB_15_11 U5 (C5, S[15:11], X[15:11], Y[15:11], C4);
  UBCSlB_21_16 U6 (S[22], S[21:16], X[21:16], Y[21:16], C5);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBTC1CON22_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON22_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_22_22(O, I);
  output [22:22] O;
  input [22:22] I;
  assign O = ~ I;
endmodule

module Multiplier_9_0_9_000(P, IN1, IN2);
  output [19:0] P;
  input [9:0] IN1;
  input [9:0] IN2;
  wire [22:0] W;
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
  MultUB_R4B_DAD_CS000 U0 (W, IN1, IN2);
endmodule

module DADTR_12_0_14_0_1000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6);
  output [21:0] S1;
  output [21:0] S2;
  input [12:0] PP0;
  input [14:0] PP1;
  input [16:2] PP2;
  input [18:4] PP3;
  input [20:6] PP4;
  input [21:8] PP5;
  input [11:10] PP6;
  wire [21:0] W0;
  wire [20:0] W1;
  wire [18:2] W2;
  wire [16:4] W3;
  wire [14:6] W4;
  wire [13:8] W5;
  UBHA_10 U0 (W4[11], W5[10], PP0[10], PP1[10]);
  UBFA_11 U1 (W4[12], W5[11], PP0[11], PP1[11], PP2[11]);
  UBHA_12 U2 (W5[13], W5[12], PP0[12], PP1[12]);
  UBCON_9_0 U3 (W0[9:0], PP0[9:0]);
  UB1DCON_10 U4 (W0[10], PP2[10]);
  UB1DCON_11 U5 (W0[11], PP3[11]);
  UB1DCON_12 U6 (W0[12], PP2[12]);
  UBCON_14_13 U7 (W0[14:13], PP1[14:13]);
  UBCON_16_15 U8 (W0[16:15], PP2[16:15]);
  UBCON_18_17 U9 (W0[18:17], PP3[18:17]);
  UBCON_20_19 U10 (W0[20:19], PP4[20:19]);
  UB1DCON_21 U11 (W0[21], PP5[21]);
  UBCON_9_0 U12 (W1[9:0], PP1[9:0]);
  UB1DCON_10 U13 (W1[10], PP3[10]);
  UB1DCON_11 U14 (W1[11], PP4[11]);
  UB1DCON_12 U15 (W1[12], PP3[12]);
  UBCON_14_13 U16 (W1[14:13], PP2[14:13]);
  UBCON_16_15 U17 (W1[16:15], PP3[16:15]);
  UBCON_18_17 U18 (W1[18:17], PP4[18:17]);
  UBCON_20_19 U19 (W1[20:19], PP5[20:19]);
  UBCON_9_2 U20 (W2[9:2], PP2[9:2]);
  UB1DCON_10 U21 (W2[10], PP4[10]);
  UB1DCON_11 U22 (W2[11], PP5[11]);
  UB1DCON_12 U23 (W2[12], PP4[12]);
  UBCON_14_13 U24 (W2[14:13], PP3[14:13]);
  UBCON_16_15 U25 (W2[16:15], PP4[16:15]);
  UBCON_18_17 U26 (W2[18:17], PP5[18:17]);
  UBCON_9_4 U27 (W3[9:4], PP3[9:4]);
  UB1DCON_10 U28 (W3[10], PP5[10]);
  UB1DCON_11 U29 (W3[11], PP6[11]);
  UB1DCON_12 U30 (W3[12], PP5[12]);
  UBCON_14_13 U31 (W3[14:13], PP4[14:13]);
  UBCON_16_15 U32 (W3[16:15], PP5[16:15]);
  UBCON_9_6 U33 (W4[9:6], PP4[9:6]);
  UB1DCON_10 U34 (W4[10], PP6[10]);
  UBCON_14_13 U35 (W4[14:13], PP5[14:13]);
  UBCON_9_8 U36 (W5[9:8], PP5[9:8]);
  DADTR_21_0_20_0_1000 U37 (S1, S2, W0, W1, W2, W3, W4, W5);
endmodule

module DADTR_21_0_20_0_1000 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5);
  output [21:0] S1;
  output [21:0] S2;
  input [21:0] PP0;
  input [20:0] PP1;
  input [18:2] PP2;
  input [16:4] PP3;
  input [14:6] PP4;
  input [13:8] PP5;
  wire [21:0] W0;
  wire [20:0] W1;
  wire [18:2] W2;
  wire [17:4] W3;
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
  UBFA_14 U14 (W1[15], W2[14], PP0[14], PP1[14], PP2[14]);
  UBHA_14 U15 (W2[15], W3[14], PP3[14], PP4[14]);
  UBFA_15 U16 (W2[16], W3[15], PP0[15], PP1[15], PP2[15]);
  UBHA_16 U17 (W3[17], W3[16], PP0[16], PP1[16]);
  UBCON_5_0 U18 (W0[5:0], PP0[5:0]);
  UB1DCON_6 U19 (W0[6], PP2[6]);
  UB1DCON_7 U20 (W0[7], PP3[7]);
  UB1DCON_8 U21 (W0[8], PP5[8]);
  UB1DCON_15 U22 (W0[15], PP3[15]);
  UB1DCON_16 U23 (W0[16], PP2[16]);
  UBCON_21_17 U24 (W0[21:17], PP0[21:17]);
  UBCON_5_0 U25 (W1[5:0], PP1[5:0]);
  UB1DCON_6 U26 (W1[6], PP3[6]);
  UB1DCON_7 U27 (W1[7], PP4[7]);
  UB1DCON_16 U28 (W1[16], PP3[16]);
  UBCON_20_17 U29 (W1[20:17], PP1[20:17]);
  UBCON_5_2 U30 (W2[5:2], PP2[5:2]);
  UB1DCON_6 U31 (W2[6], PP4[6]);
  UBCON_18_17 U32 (W2[18:17], PP2[18:17]);
  UBCON_5_4 U33 (W3[5:4], PP3[5:4]);
  DADTR_21_0_20_0_1001 U34 (S1, S2, W0, W1, W2, W3);
endmodule

module DADTR_21_0_20_0_1001 (S1, S2, PP0, PP1, PP2, PP3);
  output [21:0] S1;
  output [21:0] S2;
  input [21:0] PP0;
  input [20:0] PP1;
  input [18:2] PP2;
  input [17:4] PP3;
  wire [21:0] W0;
  wire [20:0] W1;
  wire [19:2] W2;
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
  UBHA_18 U14 (W2[19], W2[18], PP0[18], PP1[18]);
  UBCON_3_0 U15 (W0[3:0], PP0[3:0]);
  UB1DCON_4 U16 (W0[4], PP2[4]);
  UBCON_17_5 U17 (W0[17:5], PP3[17:5]);
  UB1DCON_18 U18 (W0[18], PP2[18]);
  UBCON_21_19 U19 (W0[21:19], PP0[21:19]);
  UBCON_3_0 U20 (W1[3:0], PP1[3:0]);
  UB1DCON_4 U21 (W1[4], PP3[4]);
  UBCON_20_19 U22 (W1[20:19], PP1[20:19]);
  UBCON_3_2 U23 (W2[3:2], PP2[3:2]);
  DADTR_21_0_20_0_1002 U24 (S1, S2, W0, W1, W2);
endmodule

module DADTR_21_0_20_0_1002 (S1, S2, PP0, PP1, PP2);
  output [21:0] S1;
  output [21:0] S2;
  input [21:0] PP0;
  input [20:0] PP1;
  input [19:2] PP2;
  wire [21:0] W0;
  wire [21:0] W1;
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
  UBHA_20 U18 (W1[21], W1[20], PP0[20], PP1[20]);
  UBCON_1_0 U19 (W0[1:0], PP0[1:0]);
  UB1DCON_2 U20 (W0[2], PP2[2]);
  UB1DCON_21 U21 (W0[21], PP0[21]);
  UBCON_1_0 U22 (W1[1:0], PP1[1:0]);
  DADTR_21_0_21_0 U23 (S1, S2, W0, W1);
endmodule

module DADTR_21_0_21_0 (S1, S2, PP0, PP1);
  output [21:0] S1;
  output [21:0] S2;
  input [21:0] PP0;
  input [21:0] PP1;
  UBCON_21_0 U0 (S1, PP0);
  UBCON_21_0 U1 (S2, PP1);
endmodule

module MultUB_R4B_DAD_CS000 (P, IN1, IN2);
  output [22:0] P;
  input [9:0] IN1;
  input [9:0] IN2;
  wire [12:0] PP0;
  wire [14:0] PP1;
  wire [16:2] PP2;
  wire [18:4] PP3;
  wire [20:6] PP4;
  wire [21:8] PP5;
  wire [11:10] PP6;
  wire [21:0] S1;
  wire [21:0] S2;
  wire [22:0] UP;
  UBR4BPPG_9_0_9_0 U0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, IN1, IN2);
  DADTR_12_0_14_0_1000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4, PP5, PP6);
  UBCSe_21_0_21_0 U2 (UP, S1, S2);
  UBTCCONV22_22_0 U3 (P, UP);
endmodule

module TCU4VPPG_10_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [10:0] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [10:1] P;
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
  U4DPPGH_10_0 U10 (O_T, O_R[10], IN1_T, U__d1, U__d0, P[10]);
endmodule

module TCU4VPPG_10_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [12:2] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [12:3] P;
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
  U4DPPGH_10_1 U10 (O_T, O_R[12], IN1_T, U__d1, U__d0, P[12]);
endmodule

module TCU4VPPG_10_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [14:4] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [14:5] P;
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
  U4DPPGH_10_2 U10 (O_T, O_R[14], IN1_T, U__d1, U__d0, P[14]);
endmodule

module TCU4VPPG_10_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [16:6] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [16:7] P;
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
  U4DPPGH_10_3 U10 (O_T, O_R[16], IN1_T, U__d1, U__d0, P[16]);
endmodule

module TCU4VPPG_10_0_4 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [18:8] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [18:9] P;
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
  U4DPPGH_10_4 U10 (O_T, O_R[18], IN1_T, U__d1, U__d0, P[18]);
endmodule

module TCU4VPPG_10_0_5 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [20:10] O_R;
  output O_T;
  input [9:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [20:11] P;
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
  U4DPPGH_10_5 U10 (O_T, O_R[20], IN1_T, U__d1, U__d0, P[20]);
endmodule

module TUBWCON_11_0 (O, I_T, I_R, S);
  output [11:0] O;
  input [10:0] I_R;
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
  BWCNP_11 U11 (O[11], I_T, S);
endmodule

module TUBWCON_13_2 (O, I_T, I_R, S);
  output [13:2] O;
  input [12:2] I_R;
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
  BWCNP_13 U11 (O[13], I_T, S);
endmodule

module TUBWCON_15_4 (O, I_T, I_R, S);
  output [15:4] O;
  input [14:4] I_R;
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
  BWCNP_15 U11 (O[15], I_T, S);
endmodule

module TUBWCON_17_6 (O, I_T, I_R, S);
  output [17:6] O;
  input [16:6] I_R;
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
  BWCNP_17 U11 (O[17], I_T, S);
endmodule

module TUBWCON_19_8 (O, I_T, I_R, S);
  output [19:8] O;
  input [18:8] I_R;
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
  BWCNP_19 U11 (O[19], I_T, S);
endmodule

module TUBWCON_21_10 (O, I_T, I_R, S);
  output [21:10] O;
  input [20:10] I_R;
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
  BWCNP_21 U11 (O[21], I_T, S);
endmodule

module UBCMBIN_11_11_10_000 (O, IN0, IN1);
  output [11:10] O;
  input IN0;
  input IN1;
  UB1DCON_11 U0 (O[11], IN0);
  UB1DCON_10 U1 (O[10], IN1);
endmodule

module UBCMBIN_12_12_11_000 (O, IN0, IN1);
  output [12:0] O;
  input IN0;
  input [11:0] IN1;
  UB1DCON_12 U0 (O[12], IN0);
  UBCON_11_0 U1 (O[11:0], IN1);
endmodule

module UBCMBIN_14_14_13_000 (O, IN0, IN1, IN2);
  output [14:0] O;
  input IN0;
  input [13:2] IN1;
  input IN2;
  UB1DCON_14 U0 (O[14], IN0);
  UBCON_13_2 U1 (O[13:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_16_16_15_000 (O, IN0, IN1, IN2);
  output [16:2] O;
  input IN0;
  input [15:4] IN1;
  input IN2;
  UB1DCON_16 U0 (O[16], IN0);
  UBCON_15_4 U1 (O[15:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_18_18_17_000 (O, IN0, IN1, IN2);
  output [18:4] O;
  input IN0;
  input [17:6] IN1;
  input IN2;
  UB1DCON_18 U0 (O[18], IN0);
  UBCON_17_6 U1 (O[17:6], IN1);
  UBZero_5_5 U2 (O[5]);
  UB1DCON_4 U3 (O[4], IN2);
endmodule

module UBCMBIN_20_20_19_000 (O, IN0, IN1, IN2);
  output [20:6] O;
  input IN0;
  input [19:8] IN1;
  input IN2;
  UB1DCON_20 U0 (O[20], IN0);
  UBCON_19_8 U1 (O[19:8], IN1);
  UBZero_7_7 U2 (O[7]);
  UB1DCON_6 U3 (O[6], IN2);
endmodule

module UBCMBIN_21_10_8_8 (O, IN0, IN1);
  output [21:8] O;
  input [21:10] IN0;
  input IN1;
  UBCON_21_10 U0 (O[21:10], IN0);
  UBZero_9_9 U1 (O[9]);
  UB1DCON_8 U2 (O[8], IN1);
endmodule

module UBCON_11_0 (O, I);
  output [11:0] O;
  input [11:0] I;
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
endmodule

module UBCON_13_2 (O, I);
  output [13:2] O;
  input [13:2] I;
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
endmodule

module UBCON_14_13 (O, I);
  output [14:13] O;
  input [14:13] I;
  UB1DCON_13 U0 (O[13], I[13]);
  UB1DCON_14 U1 (O[14], I[14]);
endmodule

module UBCON_15_4 (O, I);
  output [15:4] O;
  input [15:4] I;
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
endmodule

module UBCON_16_15 (O, I);
  output [16:15] O;
  input [16:15] I;
  UB1DCON_15 U0 (O[15], I[15]);
  UB1DCON_16 U1 (O[16], I[16]);
endmodule

module UBCON_17_5 (O, I);
  output [17:5] O;
  input [17:5] I;
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

module UBCON_18_17 (O, I);
  output [18:17] O;
  input [18:17] I;
  UB1DCON_17 U0 (O[17], I[17]);
  UB1DCON_18 U1 (O[18], I[18]);
endmodule

module UBCON_19_8 (O, I);
  output [19:8] O;
  input [19:8] I;
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
endmodule

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
endmodule

module UBCON_20_17 (O, I);
  output [20:17] O;
  input [20:17] I;
  UB1DCON_17 U0 (O[17], I[17]);
  UB1DCON_18 U1 (O[18], I[18]);
  UB1DCON_19 U2 (O[19], I[19]);
  UB1DCON_20 U3 (O[20], I[20]);
endmodule

module UBCON_20_19 (O, I);
  output [20:19] O;
  input [20:19] I;
  UB1DCON_19 U0 (O[19], I[19]);
  UB1DCON_20 U1 (O[20], I[20]);
endmodule

module UBCON_21_0 (O, I);
  output [21:0] O;
  input [21:0] I;
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
endmodule

module UBCON_21_10 (O, I);
  output [21:10] O;
  input [21:10] I;
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
endmodule

module UBCON_21_17 (O, I);
  output [21:17] O;
  input [21:17] I;
  UB1DCON_17 U0 (O[17], I[17]);
  UB1DCON_18 U1 (O[18], I[18]);
  UB1DCON_19 U2 (O[19], I[19]);
  UB1DCON_20 U3 (O[20], I[20]);
  UB1DCON_21 U4 (O[21], I[21]);
endmodule

module UBCON_21_19 (O, I);
  output [21:19] O;
  input [21:19] I;
  UB1DCON_19 U0 (O[19], I[19]);
  UB1DCON_20 U1 (O[20], I[20]);
  UB1DCON_21 U2 (O[21], I[21]);
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

module UBCSe_21_0_21_0 (S, X, Y);
  output [22:0] S;
  input [21:0] X;
  input [21:0] Y;
  UBPureCSe_21_0 U0 (S[22:0], X[21:0], Y[21:0]);
endmodule

module UBPureCSe_21_0 (S, X, Y);
  output [22:0] S;
  input [21:0] X;
  input [21:0] Y;
  wire C;
  UBPriCSlA_21_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBR4BE_9_0 (O__ds, O__d1, O__d0, I);
  output [5:0] O__ds, O__d1, O__d0;
  input [9:0] I;
  wire T;
  NUBZero_10_10 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEE_4 U5 (O__ds[4], O__d1[4], O__d0[4], I[9], I[8], I[7]);
  R4BEEH_5_2 U6 (O__ds[5], O__d1[5], O__d0[5], T, I[9]);
endmodule

module UBR4BPPG_9_0_9_0 (PP0, PP1, PP2, PP3, PP4, PP5, PP6, IN1, IN2);
  output [12:0] PP0;
  output [14:0] PP1;
  output [16:2] PP2;
  output [18:4] PP3;
  output [20:6] PP4;
  output [21:8] PP5;
  output [11:10] PP6;
  input [9:0] IN1;
  input [9:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire B4;
  wire B5;
  wire [5:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [11:0] PPT0;
  wire [13:2] PPT1;
  wire [15:4] PPT2;
  wire [17:6] PPT3;
  wire [19:8] PPT4;
  wire [21:10] PPT5;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  wire S4;
  wire S5;
  UBR4BE_9_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_9_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_9_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_9_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_9_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBSD4VPPG_9_0_4 U5 (PPT4, S4, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBSD4VPPG_9_0_5 U6 (PPT5, S5, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBOne_12 U7 (B0);
  UBCMBIN_12_12_11_000 U8 (PP0, B0, PPT0);
  UBOne_14 U9 (B1);
  UBCMBIN_14_14_13_000 U10 (PP1, B1, PPT1, S0);
  UBOne_16 U11 (B2);
  UBCMBIN_16_16_15_000 U12 (PP2, B2, PPT2, S1);
  UBOne_18 U13 (B3);
  UBCMBIN_18_18_17_000 U14 (PP3, B3, PPT3, S2);
  UBOne_20 U15 (B4);
  UBCMBIN_20_20_19_000 U16 (PP4, B4, PPT4, S3);
  UBCMBIN_21_10_8_8 U17 (PP5, PPT5, S4);
  UBOne_11 U18 (B5);
  UBCMBIN_11_11_10_000 U19 (PP6, B5, S5);
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

module UBSD4VPPG_9_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [11:0] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [10:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_11_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_9_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [13:2] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [12:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_13_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_9_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [15:4] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [14:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_15_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_9_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [17:6] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [16:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_17_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBSD4VPPG_9_0_4 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [19:8] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [18:8] W_R;
  wire W_T;
  SD41DDECON_4 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_4 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_19_8 U3 (PP, W_T, W_R, S);
  UBBBG_8 U4 (C, S);
endmodule

module UBSD4VPPG_9_0_5 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [21:10] PP;
  input [9:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [20:10] W_R;
  wire W_T;
  SD41DDECON_5 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_10_10 U1 (NZ);
  TCU4VPPG_10_0_5 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_21_10 U3 (PP, W_T, W_R, S);
  UBBBG_10 U4 (C, S);
endmodule

module UBTCCONV22_22_0 (O, I);
  output [22:0] O;
  input [22:0] I;
  UBTC1CON22_0 U0 (O[0], I[0]);
  UBTC1CON22_1 U1 (O[1], I[1]);
  UBTC1CON22_2 U2 (O[2], I[2]);
  UBTC1CON22_3 U3 (O[3], I[3]);
  UBTC1CON22_4 U4 (O[4], I[4]);
  UBTC1CON22_5 U5 (O[5], I[5]);
  UBTC1CON22_6 U6 (O[6], I[6]);
  UBTC1CON22_7 U7 (O[7], I[7]);
  UBTC1CON22_8 U8 (O[8], I[8]);
  UBTC1CON22_9 U9 (O[9], I[9]);
  UBTC1CON22_10 U10 (O[10], I[10]);
  UBTC1CON22_11 U11 (O[11], I[11]);
  UBTC1CON22_12 U12 (O[12], I[12]);
  UBTC1CON22_13 U13 (O[13], I[13]);
  UBTC1CON22_14 U14 (O[14], I[14]);
  UBTC1CON22_15 U15 (O[15], I[15]);
  UBTC1CON22_16 U16 (O[16], I[16]);
  UBTC1CON22_17 U17 (O[17], I[17]);
  UBTC1CON22_18 U18 (O[18], I[18]);
  UBTC1CON22_19 U19 (O[19], I[19]);
  UBTC1CON22_20 U20 (O[20], I[20]);
  UBTC1CON22_21 U21 (O[21], I[21]);
  UBTCTCONV_22_22 U22 (O[22], I[22]);
endmodule

