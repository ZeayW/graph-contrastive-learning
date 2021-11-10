/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_6_0_12000

  Number system: Unsigned binary
  Multiplicand length: 7
  Multiplier length: 13
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Redundant binary addition tree
  Final stage addition: Carry select adder
----------------------------------------------------------------------------*/

module NUBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
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

module R4BEEH_6_3(O_ds, O_d1, O_d0, I2, I1, I0);
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

module UBBBG_0(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_8(O, S);
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

module BWCPN_2(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_3(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_4(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_5(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_6(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_7(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_8(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_9(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module NUBBBG_2(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_10(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_9_8(O);
  output [9:8] O;
  assign O[8] = 0;
  assign O[9] = 0;
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

module NUBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
endmodule

module NUBZero_1_0(O);
  output [1:0] O;
  assign O[0] = 0;
  assign O[1] = 0;
endmodule

module NUB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_0(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_1(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_2(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_3(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_4(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_5(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_6(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_7(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_8(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_9(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_10(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
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

module UBBBG_4(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_12(O, S);
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

module BWCPN_10(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_11(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_12(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_13(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module NUBBBG_6(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_14(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_13_12(O);
  output [13:12] O;
  assign O[12] = 0;
  assign O[13] = 0;
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

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
endmodule

module NUBZero_5_4(O);
  output [5:4] O;
  assign O[4] = 0;
  assign O[5] = 0;
endmodule

module NUB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_11(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_12(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_13(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_14(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
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

module UBBBG_8(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_16(O, S);
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

module BWCPN_14(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_15(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_16(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_17(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module NUBBBG_10(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_18(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_17_16(O);
  output [17:16] O;
  assign O[16] = 0;
  assign O[17] = 0;
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

module UB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_18_18(O);
  output [18:18] O;
  assign O[18] = 0;
endmodule

module NUBZero_9_8(O);
  output [9:8] O;
  assign O[8] = 0;
  assign O[9] = 0;
endmodule

module NUB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_15(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_16(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_17(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_18(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD41DDECON_6(S, U_d1, U_d0, I_ds, I_d1, I_d0);
  output S;
  output U_d1, U_d0;
  input I_ds, I_d1, I_d0;
  assign S = I_ds;
  assign U_d0 = I_d0;
  assign U_d1 = I_d1;
endmodule

module NUBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module U4DPPGH_7_6(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
endmodule

module TCSD2Conv_20_12(O_p, O_n, I_T, I_R, S);
  output [20:12] O_p, O_n;
  input [19:12] I_R;
  input [20:20] I_T;
  input S;
  assign O_p[20] = I_T & S;
  assign O_n[20] = I_T & ( ~ S );
  assign O_p[19] = I_R[19] & ( ~ S );
  assign O_n[19] = I_R[19] & S;
  assign O_p[18] = I_R[18] & ( ~ S );
  assign O_n[18] = I_R[18] & S;
  assign O_p[17] = I_R[17] & ( ~ S );
  assign O_n[17] = I_R[17] & S;
  assign O_p[16] = I_R[16] & ( ~ S );
  assign O_n[16] = I_R[16] & S;
  assign O_p[15] = I_R[15] & ( ~ S );
  assign O_n[15] = I_R[15] & S;
  assign O_p[14] = I_R[14] & ( ~ S );
  assign O_n[14] = I_R[14] & S;
  assign O_p[13] = I_R[13] & ( ~ S );
  assign O_n[13] = I_R[13] & S;
  assign O_p[12] = I_R[12] & ( ~ S );
  assign O_n[12] = I_R[12] & S;
endmodule

module UBZero_7_5(O);
  output [7:5] O;
  assign O[5] = 0;
  assign O[6] = 0;
  assign O[7] = 0;
endmodule

module UBZero_3_1(O);
  output [3:1] O;
  assign O[1] = 0;
  assign O[2] = 0;
  assign O[3] = 0;
endmodule

module NUBZero_15_13(O);
  output [15:13] O;
  assign O[13] = 0;
  assign O[14] = 0;
  assign O[15] = 0;
endmodule

module NUBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module NUBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module NUBZero_5_3(O);
  output [5:3] O;
  assign O[3] = 0;
  assign O[4] = 0;
  assign O[5] = 0;
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

module UB1DCON_16(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2_PN_A_Zero_14_000(O_p, O_n);
  output [14:11] O_p, O_n;
  assign O_p[11] = 0;
  assign O_n[11] = 0;
  assign O_p[12] = 0;
  assign O_n[12] = 0;
  assign O_p[13] = 0;
  assign O_n[13] = 0;
  assign O_p[14] = 0;
  assign O_n[14] = 0;
endmodule

module SD2_PN_A1DCON_11(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_12(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_13(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_14(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_0(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_1(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_2(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_3(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_4(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_5(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_6(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_7(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_8(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_9(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_10(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module NUBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module SD2DigitDecom_PN_000(X, Y, I_p, I_n);
  output [4:4] X;
  output [4:4] Y;
  input [4:4] I_p, I_n;
  assign X = ~ I_n[4];
  assign Y = I_p[4];
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

module UBInv_5(O, I);
  output [5:5] O;
  input [5:5] I;
  assign O[5] = ~ I[5];
endmodule

module SD2DigitDecom_PN_001(X, Y, I_p, I_n);
  output [5:5] X;
  output [5:5] Y;
  input [5:5] I_p, I_n;
  assign X = ~ I_n[5];
  assign Y = I_p[5];
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

module UBInv_6(O, I);
  output [6:6] O;
  input [6:6] I;
  assign O[6] = ~ I[6];
endmodule

module SD2DigitDecom_PN_002(X, Y, I_p, I_n);
  output [6:6] X;
  output [6:6] Y;
  input [6:6] I_p, I_n;
  assign X = ~ I_n[6];
  assign Y = I_p[6];
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

module UBInv_7(O, I);
  output [7:7] O;
  input [7:7] I;
  assign O[7] = ~ I[7];
endmodule

module SD2DigitDecom_PN_003(X, Y, I_p, I_n);
  output [7:7] X;
  output [7:7] Y;
  input [7:7] I_p, I_n;
  assign X = ~ I_n[7];
  assign Y = I_p[7];
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

module UBInv_8(O, I);
  output [8:8] O;
  input [8:8] I;
  assign O[8] = ~ I[8];
endmodule

module SD2DigitDecom_PN_004(X, Y, I_p, I_n);
  output [8:8] X;
  output [8:8] Y;
  input [8:8] I_p, I_n;
  assign X = ~ I_n[8];
  assign Y = I_p[8];
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

module UBInv_9(O, I);
  output [9:9] O;
  input [9:9] I;
  assign O[9] = ~ I[9];
endmodule

module SD2DigitDecom_PN_005(X, Y, I_p, I_n);
  output [9:9] X;
  output [9:9] Y;
  input [9:9] I_p, I_n;
  assign X = ~ I_n[9];
  assign Y = I_p[9];
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

module UBInv_10(O, I);
  output [10:10] O;
  input [10:10] I;
  assign O[10] = ~ I[10];
endmodule

module SD2DigitDecom_PN_006(X, Y, I_p, I_n);
  output [10:10] X;
  output [10:10] Y;
  input [10:10] I_p, I_n;
  assign X = ~ I_n[10];
  assign Y = I_p[10];
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

module UBInv_11(O, I);
  output [11:11] O;
  input [11:11] I;
  assign O[11] = ~ I[11];
endmodule

module SD2DigitDecom_PN_007(X, Y, I_p, I_n);
  output [11:11] X;
  output [11:11] Y;
  input [11:11] I_p, I_n;
  assign X = ~ I_n[11];
  assign Y = I_p[11];
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

module UBInv_12(O, I);
  output [12:12] O;
  input [12:12] I;
  assign O[12] = ~ I[12];
endmodule

module SD2DigitDecom_PN_008(X, Y, I_p, I_n);
  output [12:12] X;
  output [12:12] Y;
  input [12:12] I_p, I_n;
  assign X = ~ I_n[12];
  assign Y = I_p[12];
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

module UBInv_13(O, I);
  output [13:13] O;
  input [13:13] I;
  assign O[13] = ~ I[13];
endmodule

module SD2DigitDecom_PN_009(X, Y, I_p, I_n);
  output [13:13] X;
  output [13:13] Y;
  input [13:13] I_p, I_n;
  assign X = ~ I_n[13];
  assign Y = I_p[13];
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

module UBInv_14(O, I);
  output [14:14] O;
  input [14:14] I;
  assign O[14] = ~ I[14];
endmodule

module SD2DigitDecom_PN_010(X, Y, I_p, I_n);
  output [14:14] X;
  output [14:14] Y;
  input [14:14] I_p, I_n;
  assign X = ~ I_n[14];
  assign Y = I_p[14];
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

module UBInv_15(O, I);
  output [15:15] O;
  input [15:15] I;
  assign O[15] = ~ I[15];
endmodule

module SD2_PN_A_Zero_18_000(O_p, O_n);
  output [18:16] O_p, O_n;
  assign O_p[16] = 0;
  assign O_n[16] = 0;
  assign O_p[17] = 0;
  assign O_n[17] = 0;
  assign O_p[18] = 0;
  assign O_n[18] = 0;
endmodule

module SD2_PN_A1DCON_16(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_17(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_18(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_15(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
endmodule

module NUBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
endmodule

module SD2DigitDecom_PN_011(X, Y, I_p, I_n);
  output [15:15] X;
  output [15:15] Y;
  input [15:15] I_p, I_n;
  assign X = ~ I_n[15];
  assign Y = I_p[15];
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

module UBInv_16(O, I);
  output [16:16] O;
  input [16:16] I;
  assign O[16] = ~ I[16];
endmodule

module SD2DigitDecom_PN_012(X, Y, I_p, I_n);
  output [16:16] X;
  output [16:16] Y;
  input [16:16] I_p, I_n;
  assign X = ~ I_n[16];
  assign Y = I_p[16];
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

module UBInv_17(O, I);
  output [17:17] O;
  input [17:17] I;
  assign O[17] = ~ I[17];
endmodule

module SD2DigitDecom_PN_013(X, Y, I_p, I_n);
  output [17:17] X;
  output [17:17] Y;
  input [17:17] I_p, I_n;
  assign X = ~ I_n[17];
  assign Y = I_p[17];
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

module UBInv_18(O, I);
  output [18:18] O;
  input [18:18] I;
  assign O[18] = ~ I[18];
endmodule

module SD2DigitDecom_PN_014(X, Y, I_p, I_n);
  output [18:18] X;
  output [18:18] Y;
  input [18:18] I_p, I_n;
  assign X = ~ I_n[18];
  assign Y = I_p[18];
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

module UBInv_19(O, I);
  output [19:19] O;
  input [19:19] I;
  assign O[19] = ~ I[19];
endmodule

module SD2DigitCom_19(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A_Zero_20_000(O_p, O_n);
  output [20:17] O_p, O_n;
  assign O_p[17] = 0;
  assign O_n[17] = 0;
  assign O_p[18] = 0;
  assign O_n[18] = 0;
  assign O_p[19] = 0;
  assign O_n[19] = 0;
  assign O_p[20] = 0;
  assign O_n[20] = 0;
endmodule

module SD2_PN_A1DCON_19(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_20(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_12_12(O);
  output [12:12] O;
  assign O[12] = 0;
endmodule

module NUBZero_12_12(O);
  output [12:12] O;
  assign O[12] = 0;
endmodule

module SD2DigitDecom_PN_015(X, Y, I_p, I_n);
  output [19:19] X;
  output [19:19] Y;
  input [19:19] I_p, I_n;
  assign X = ~ I_n[19];
  assign Y = I_p[19];
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

module UBInv_20(O, I);
  output [20:20] O;
  input [20:20] I;
  assign O[20] = ~ I[20];
endmodule

module SD2DigitDecom_PN_016(X, Y, I_p, I_n);
  output [20:20] X;
  output [20:20] Y;
  input [20:20] I_p, I_n;
  assign X = ~ I_n[20];
  assign Y = I_p[20];
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

module UBInv_21(O, I);
  output [21:21] O;
  input [21:21] I;
  assign O[21] = ~ I[21];
endmodule

module SD2DigitCom_20(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_21(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A_Zero_21_000(O_p, O_n);
  output [21:20] O_p, O_n;
  assign O_p[20] = 0;
  assign O_n[20] = 0;
  assign O_p[21] = 0;
  assign O_n[21] = 0;
endmodule

module SD2_PN_A1DCON_21(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module NUBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module SD2DigitDecom_PN_017(X, Y, I_p, I_n);
  output [0:0] X;
  output [0:0] Y;
  input [0:0] I_p, I_n;
  assign X = ~ I_n[0];
  assign Y = I_p[0];
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

module UBInv_1(O, I);
  output [1:1] O;
  input [1:1] I;
  assign O[1] = ~ I[1];
endmodule

module SD2DigitDecom_PN_018(X, Y, I_p, I_n);
  output [1:1] X;
  output [1:1] Y;
  input [1:1] I_p, I_n;
  assign X = ~ I_n[1];
  assign Y = I_p[1];
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

module UBInv_2(O, I);
  output [2:2] O;
  input [2:2] I;
  assign O[2] = ~ I[2];
endmodule

module SD2DigitDecom_PN_019(X, Y, I_p, I_n);
  output [2:2] X;
  output [2:2] Y;
  input [2:2] I_p, I_n;
  assign X = ~ I_n[2];
  assign Y = I_p[2];
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

module UBInv_3(O, I);
  output [3:3] O;
  input [3:3] I;
  assign O[3] = ~ I[3];
endmodule

module SD2DigitDecom_PN_020(X, Y, I_p, I_n);
  output [3:3] X;
  output [3:3] Y;
  input [3:3] I_p, I_n;
  assign X = ~ I_n[3];
  assign Y = I_p[3];
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

module UBInv_4(O, I);
  output [4:4] O;
  input [4:4] I;
  assign O[4] = ~ I[4];
endmodule

module SD2DigitDecom_PN_021(X, Y, I_p, I_n);
  output [21:21] X;
  output [21:21] Y;
  input [21:21] I_p, I_n;
  assign X = ~ I_n[21];
  assign Y = I_p[21];
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

module UBInv_22(O, I);
  output [22:22] O;
  input [22:22] I;
  assign O[22] = ~ I[22];
endmodule

module SD2DigitCom_22(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitDecom_PN_022(X, Y, I_p, I_n);
  output [22:22] X;
  output [22:22] Y;
  input [22:22] I_p, I_n;
  assign X = ~ I_n[22];
  assign Y = I_p[22];
endmodule

module UBOne_0(O);
  output O;
  assign O = 1;
endmodule

module UBOne_1(O);
  output O;
  assign O = 1;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
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

module UBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module UBOne_16(O);
  output O;
  assign O = 1;
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

module UBFA_22(C, S, X, Y, Z);
  output C;
  output S;
  input X;
  input Y;
  input Z;
  assign C = ( X & Y ) | ( Y & Z ) | ( Z & X );
  assign S = X ^ Y ^ Z;
endmodule

module UBCSlB_22_22(Co, S, X, Y, Ci);
  output Co;
  output [22:22] S;
  input Ci;
  input [22:22] X;
  input [22:22] Y;
  wire Ci_0;
  wire Ci_1;
  wire Co_0;
  wire Co_1;
  wire [22:22] S_0;
  wire [22:22] S_1;
  assign S[22] = ( S_0[22] & ( ~ Ci ) ) | ( S_1[22] & Ci );
  assign Co = ( Co_0 & ( ~ Ci ) ) | ( Co_1 & Ci );
  UBOne_22 U0 (Ci_1);
  UBZero_22_22 U1 (Ci_0);
  UBRCB_22_22 U2 (Co_0, S_0, X, Y, Ci_0);
  UBRCB_22_22 U3 (Co_1, S_1, X, Y, Ci_1);
endmodule

module UBPriCSlA_22_0(S, X, Y, Cin);
  output [23:0] S;
  input Cin;
  input [22:0] X;
  input [22:0] Y;
  wire C0;
  wire C1;
  wire C2;
  wire C3;
  wire C4;
  wire C5;
  wire C6;
  UBRCB_0_0 U0 (C0, S[0], X[0], Y[0], Cin);
  UBCSlB_1_1 U1 (C1, S[1], X[1], Y[1], C0);
  UBCSlB_3_2 U2 (C2, S[3:2], X[3:2], Y[3:2], C1);
  UBCSlB_6_4 U3 (C3, S[6:4], X[6:4], Y[6:4], C2);
  UBCSlB_10_7 U4 (C4, S[10:7], X[10:7], Y[10:7], C3);
  UBCSlB_15_11 U5 (C5, S[15:11], X[15:11], Y[15:11], C4);
  UBCSlB_21_16 U6 (C6, S[21:16], X[21:16], Y[21:16], C5);
  UBCSlB_22_22 U7 (S[23], S[22], X[22], Y[22], C6);
endmodule

module UBInv_23(O, I);
  output [23:23] O;
  input [23:23] I;
  assign O[23] = ~ I[23];
endmodule

module TCCom_23_0(O, I1, I2);
  output [23:0] O;
  input [23:23] I1;
  input [22:0] I2;
  assign O[23] = I1;
  assign O[0] = I2[0];
  assign O[1] = I2[1];
  assign O[2] = I2[2];
  assign O[3] = I2[3];
  assign O[4] = I2[4];
  assign O[5] = I2[5];
  assign O[6] = I2[6];
  assign O[7] = I2[7];
  assign O[8] = I2[8];
  assign O[9] = I2[9];
  assign O[10] = I2[10];
  assign O[11] = I2[11];
  assign O[12] = I2[12];
  assign O[13] = I2[13];
  assign O[14] = I2[14];
  assign O[15] = I2[15];
  assign O[16] = I2[16];
  assign O[17] = I2[17];
  assign O[18] = I2[18];
  assign O[19] = I2[19];
  assign O[20] = I2[20];
  assign O[21] = I2[21];
  assign O[22] = I2[22];
endmodule

module Multiplier_6_0_12000(P, IN1, IN2);
  output [19:0] P;
  input [6:0] IN1;
  input [12:0] IN2;
  wire [23:0] W;
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
  MultUB_R4B_SD2RBT000 U0 (W, IN1, IN2);
endmodule

module MultUB_R4B_SD2RBT000 (P, IN1, IN2);
  output [23:0] P;
  input [6:0] IN1;
  input [12:0] IN2;
  wire [10:0] PP0__dp, PP0__dn;
  wire [14:4] PP1__dp, PP1__dn;
  wire [18:8] PP2__dp, PP2__dn;
  wire [20:12] PP3__dp, PP3__dn;
  wire [16:0] PP4__dp, PP4__dn;
  wire [22:0] Z__dp, Z__dn;
  UBSR4BPPG_6_0_12_000 U0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, IN1, IN2);
  SD2RBTR_10_0_14_4000 U1 (Z__dp[22:0], Z__dn[22:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2TCConv_CSe_22_000 U2 (P, Z__dp, Z__dn);
endmodule

module NUBCMBIN_10_10_9_000 (O, IN0, IN1, IN2);
  output [10:0] O;
  input IN0;
  input [9:2] IN1;
  input [1:0] IN2;
  NUB1DCON_10 U0 (O[10], IN0);
  NUBCON_9_2 U1 (O[9:2], IN1);
  NUBCON_1_0 U2 (O[1:0], IN2);
endmodule

module NUBCMBIN_14_14_13000 (O, IN0, IN1, IN2);
  output [14:4] O;
  input IN0;
  input [13:6] IN1;
  input [5:4] IN2;
  NUB1DCON_14 U0 (O[14], IN0);
  NUBCON_13_6 U1 (O[13:6], IN1);
  NUBCON_5_4 U2 (O[5:4], IN2);
endmodule

module NUBCMBIN_16_16_12000 (O, IN0, IN1, IN2, IN3, IN4, IN5);
  output [16:2] O;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  input IN4;
  input IN5;
  NUB1DCON_16 U0 (O[16], IN0);
  NUBZero_15_13 U1 (O[15:13]);
  NUB1DCON_12 U2 (O[12], IN1);
  NUBZero_11_11 U3 (O[11]);
  NUB1DCON_10 U4 (O[10], IN2);
  NUBZero_9_9 U5 (O[9]);
  NUB1DCON_8 U6 (O[8], IN3);
  NUBZero_7_7 U7 (O[7]);
  NUB1DCON_6 U8 (O[6], IN4);
  NUBZero_5_3 U9 (O[5:3]);
  NUB1DCON_2 U10 (O[2], IN5);
endmodule

module NUBCMBIN_16_2_1_0 (O, IN0, IN1);
  output [16:0] O;
  input [16:2] IN0;
  input [1:0] IN1;
  NUBCON_16_2 U0 (O[16:2], IN0);
  NUBCON_1_0 U1 (O[1:0], IN1);
endmodule

module NUBCMBIN_18_18_17000 (O, IN0, IN1, IN2);
  output [18:8] O;
  input IN0;
  input [17:10] IN1;
  input [9:8] IN2;
  NUB1DCON_18 U0 (O[18], IN0);
  NUBCON_17_10 U1 (O[17:10], IN1);
  NUBCON_9_8 U2 (O[9:8], IN2);
endmodule

module NUBCON_13_6 (O, I);
  output [13:6] O;
  input [13:6] I;
  NUB1DCON_6 U0 (O[6], I[6]);
  NUB1DCON_7 U1 (O[7], I[7]);
  NUB1DCON_8 U2 (O[8], I[8]);
  NUB1DCON_9 U3 (O[9], I[9]);
  NUB1DCON_10 U4 (O[10], I[10]);
  NUB1DCON_11 U5 (O[11], I[11]);
  NUB1DCON_12 U6 (O[12], I[12]);
  NUB1DCON_13 U7 (O[13], I[13]);
endmodule

module NUBCON_16_2 (O, I);
  output [16:2] O;
  input [16:2] I;
  NUB1DCON_2 U0 (O[2], I[2]);
  NUB1DCON_3 U1 (O[3], I[3]);
  NUB1DCON_4 U2 (O[4], I[4]);
  NUB1DCON_5 U3 (O[5], I[5]);
  NUB1DCON_6 U4 (O[6], I[6]);
  NUB1DCON_7 U5 (O[7], I[7]);
  NUB1DCON_8 U6 (O[8], I[8]);
  NUB1DCON_9 U7 (O[9], I[9]);
  NUB1DCON_10 U8 (O[10], I[10]);
  NUB1DCON_11 U9 (O[11], I[11]);
  NUB1DCON_12 U10 (O[12], I[12]);
  NUB1DCON_13 U11 (O[13], I[13]);
  NUB1DCON_14 U12 (O[14], I[14]);
  NUB1DCON_15 U13 (O[15], I[15]);
  NUB1DCON_16 U14 (O[16], I[16]);
endmodule

module NUBCON_17_10 (O, I);
  output [17:10] O;
  input [17:10] I;
  NUB1DCON_10 U0 (O[10], I[10]);
  NUB1DCON_11 U1 (O[11], I[11]);
  NUB1DCON_12 U2 (O[12], I[12]);
  NUB1DCON_13 U3 (O[13], I[13]);
  NUB1DCON_14 U4 (O[14], I[14]);
  NUB1DCON_15 U5 (O[15], I[15]);
  NUB1DCON_16 U6 (O[16], I[16]);
  NUB1DCON_17 U7 (O[17], I[17]);
endmodule

module NUBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  NUB1DCON_0 U0 (O[0], I[0]);
  NUB1DCON_1 U1 (O[1], I[1]);
endmodule

module NUBCON_5_4 (O, I);
  output [5:4] O;
  input [5:4] I;
  NUB1DCON_4 U0 (O[4], I[4]);
  NUB1DCON_5 U1 (O[5], I[5]);
endmodule

module NUBCON_9_2 (O, I);
  output [9:2] O;
  input [9:2] I;
  NUB1DCON_2 U0 (O[2], I[2]);
  NUB1DCON_3 U1 (O[3], I[3]);
  NUB1DCON_4 U2 (O[4], I[4]);
  NUB1DCON_5 U3 (O[5], I[5]);
  NUB1DCON_6 U4 (O[6], I[6]);
  NUB1DCON_7 U5 (O[7], I[7]);
  NUB1DCON_8 U6 (O[8], I[8]);
  NUB1DCON_9 U7 (O[9], I[9]);
endmodule

module NUBCON_9_8 (O, I);
  output [9:8] O;
  input [9:8] I;
  NUB1DCON_8 U0 (O[8], I[8]);
  NUB1DCON_9 U1 (O[9], I[9]);
endmodule

module SD2Decom_PN_22_0 (X, Y, I__dp, I__dn);
  output [22:0] X;
  output [22:0] Y;
  input [22:0] I__dp, I__dn;
  SD2DigitDecom_PN_017 U0 (X[0], Y[0], I__dp[0], I__dn[0]);
  SD2DigitDecom_PN_018 U1 (X[1], Y[1], I__dp[1], I__dn[1]);
  SD2DigitDecom_PN_019 U2 (X[2], Y[2], I__dp[2], I__dn[2]);
  SD2DigitDecom_PN_020 U3 (X[3], Y[3], I__dp[3], I__dn[3]);
  SD2DigitDecom_PN_000 U4 (X[4], Y[4], I__dp[4], I__dn[4]);
  SD2DigitDecom_PN_001 U5 (X[5], Y[5], I__dp[5], I__dn[5]);
  SD2DigitDecom_PN_002 U6 (X[6], Y[6], I__dp[6], I__dn[6]);
  SD2DigitDecom_PN_003 U7 (X[7], Y[7], I__dp[7], I__dn[7]);
  SD2DigitDecom_PN_004 U8 (X[8], Y[8], I__dp[8], I__dn[8]);
  SD2DigitDecom_PN_005 U9 (X[9], Y[9], I__dp[9], I__dn[9]);
  SD2DigitDecom_PN_006 U10 (X[10], Y[10], I__dp[10], I__dn[10]);
  SD2DigitDecom_PN_007 U11 (X[11], Y[11], I__dp[11], I__dn[11]);
  SD2DigitDecom_PN_008 U12 (X[12], Y[12], I__dp[12], I__dn[12]);
  SD2DigitDecom_PN_009 U13 (X[13], Y[13], I__dp[13], I__dn[13]);
  SD2DigitDecom_PN_010 U14 (X[14], Y[14], I__dp[14], I__dn[14]);
  SD2DigitDecom_PN_011 U15 (X[15], Y[15], I__dp[15], I__dn[15]);
  SD2DigitDecom_PN_012 U16 (X[16], Y[16], I__dp[16], I__dn[16]);
  SD2DigitDecom_PN_013 U17 (X[17], Y[17], I__dp[17], I__dn[17]);
  SD2DigitDecom_PN_014 U18 (X[18], Y[18], I__dp[18], I__dn[18]);
  SD2DigitDecom_PN_015 U19 (X[19], Y[19], I__dp[19], I__dn[19]);
  SD2DigitDecom_PN_016 U20 (X[20], Y[20], I__dp[20], I__dn[20]);
  SD2DigitDecom_PN_021 U21 (X[21], Y[21], I__dp[21], I__dn[21]);
  SD2DigitDecom_PN_022 U22 (X[22], Y[22], I__dp[22], I__dn[22]);
endmodule

module SD2DigitRBA_0 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_017 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_017 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_0 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_0 U3 (C2, S2, C1i, S1, Yp);
  UBInv_1 U4 (C2o, C2);
  SD2DigitCom_0 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_1 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_018 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_018 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_1 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_1 U3 (C2, S2, C1i, S1, Yp);
  UBInv_2 U4 (C2o, C2);
  SD2DigitCom_1 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_10 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_006 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_006 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_10 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_10 U3 (C2, S2, C1i, S1, Yp);
  UBInv_11 U4 (C2o, C2);
  SD2DigitCom_10 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_11 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_007 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_007 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_11 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_11 U3 (C2, S2, C1i, S1, Yp);
  UBInv_12 U4 (C2o, C2);
  SD2DigitCom_11 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_12 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_008 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_008 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_12 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_12 U3 (C2, S2, C1i, S1, Yp);
  UBInv_13 U4 (C2o, C2);
  SD2DigitCom_12 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_13 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_009 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_009 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_13 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_13 U3 (C2, S2, C1i, S1, Yp);
  UBInv_14 U4 (C2o, C2);
  SD2DigitCom_13 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_14 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_010 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_010 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_14 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_14 U3 (C2, S2, C1i, S1, Yp);
  UBInv_15 U4 (C2o, C2);
  SD2DigitCom_14 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_15 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_011 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_011 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_15 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_15 U3 (C2, S2, C1i, S1, Yp);
  UBInv_16 U4 (C2o, C2);
  SD2DigitCom_15 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_16 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_012 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_012 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_16 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_16 U3 (C2, S2, C1i, S1, Yp);
  UBInv_17 U4 (C2o, C2);
  SD2DigitCom_16 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_17 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_013 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_013 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_17 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_17 U3 (C2, S2, C1i, S1, Yp);
  UBInv_18 U4 (C2o, C2);
  SD2DigitCom_17 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_18 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_014 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_014 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_18 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_18 U3 (C2, S2, C1i, S1, Yp);
  UBInv_19 U4 (C2o, C2);
  SD2DigitCom_18 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_19 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_015 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_015 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_19 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_19 U3 (C2, S2, C1i, S1, Yp);
  UBInv_20 U4 (C2o, C2);
  SD2DigitCom_19 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_2 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_019 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_019 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_2 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_2 U3 (C2, S2, C1i, S1, Yp);
  UBInv_3 U4 (C2o, C2);
  SD2DigitCom_2 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_20 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_016 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_016 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_20 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_20 U3 (C2, S2, C1i, S1, Yp);
  UBInv_21 U4 (C2o, C2);
  SD2DigitCom_20 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_21 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_021 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_021 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_21 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_21 U3 (C2, S2, C1i, S1, Yp);
  UBInv_22 U4 (C2o, C2);
  SD2DigitCom_21 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_3 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_020 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_020 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_3 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_3 U3 (C2, S2, C1i, S1, Yp);
  UBInv_4 U4 (C2o, C2);
  SD2DigitCom_3 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_4 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_000 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_000 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_4 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_4 U3 (C2, S2, C1i, S1, Yp);
  UBInv_5 U4 (C2o, C2);
  SD2DigitCom_4 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_5 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_001 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_001 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_5 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_5 U3 (C2, S2, C1i, S1, Yp);
  UBInv_6 U4 (C2o, C2);
  SD2DigitCom_5 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_6 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_002 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_002 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_6 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_6 U3 (C2, S2, C1i, S1, Yp);
  UBInv_7 U4 (C2o, C2);
  SD2DigitCom_6 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_7 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_003 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_003 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_7 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_7 U3 (C2, S2, C1i, S1, Yp);
  UBInv_8 U4 (C2o, C2);
  SD2DigitCom_7 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_8 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_004 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_004 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_8 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_8 U3 (C2, S2, C1i, S1, Yp);
  UBInv_9 U4 (C2o, C2);
  SD2DigitCom_8 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_9 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
  output C1o;
  output C2o;
  output Z__dp, Z__dn;
  input C1i;
  input C2i;
  input X__dp, X__dn;
  input Y__dp, Y__dn;
  wire C2;
  wire S1;
  wire S2;
  wire Xn;
  wire Xp;
  wire Yn;
  wire Yp;
  SD2DigitDecom_PN_005 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_005 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_9 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_9 U3 (C2, S2, C1i, S1, Yp);
  UBInv_10 U4 (C2o, C2);
  SD2DigitCom_9 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2PureRBA_14_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [15:4] Z__dp, Z__dn;
  input [14:4] X__dp, X__dn;
  input [14:4] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_5;
  wire C1_6;
  wire C1_7;
  wire C1_8;
  wire C1_9;
  wire C1i;
  wire C2_10;
  wire C2_11;
  wire C2_12;
  wire C2_13;
  wire C2_14;
  wire C2_15;
  wire C2_5;
  wire C2_6;
  wire C2_7;
  wire C2_8;
  wire C2_9;
  wire C2i;
  UBZero_4_4 U0 (C1i);
  NUBZero_4_4 U1 (C2i);
  SD2DigitRBA_4 U2 (Z__dp[4], Z__dn[4], C1_5, C2_5, X__dp[4], X__dn[4], Y__dp[4], Y__dn[4], C1i, C2i);
  SD2DigitRBA_5 U3 (Z__dp[5], Z__dn[5], C1_6, C2_6, X__dp[5], X__dn[5], Y__dp[5], Y__dn[5], C1_5, C2_5);
  SD2DigitRBA_6 U4 (Z__dp[6], Z__dn[6], C1_7, C2_7, X__dp[6], X__dn[6], Y__dp[6], Y__dn[6], C1_6, C2_6);
  SD2DigitRBA_7 U5 (Z__dp[7], Z__dn[7], C1_8, C2_8, X__dp[7], X__dn[7], Y__dp[7], Y__dn[7], C1_7, C2_7);
  SD2DigitRBA_8 U6 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1_8, C2_8);
  SD2DigitRBA_9 U7 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U8 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U9 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitRBA_12 U10 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1_12, C2_12);
  SD2DigitRBA_13 U11 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U12 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitCom_15 U13 (Z__dp[15], Z__dn[15], C2_15, C1_15);
endmodule

module SD2PureRBA_18_8 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [19:8] Z__dp, Z__dn;
  input [18:8] X__dp, X__dn;
  input [18:8] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_17;
  wire C1_18;
  wire C1_19;
  wire C1_9;
  wire C1i;
  wire C2_10;
  wire C2_11;
  wire C2_12;
  wire C2_13;
  wire C2_14;
  wire C2_15;
  wire C2_16;
  wire C2_17;
  wire C2_18;
  wire C2_19;
  wire C2_9;
  wire C2i;
  UBZero_8_8 U0 (C1i);
  NUBZero_8_8 U1 (C2i);
  SD2DigitRBA_8 U2 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1i, C2i);
  SD2DigitRBA_9 U3 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U4 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U5 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitRBA_12 U6 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1_12, C2_12);
  SD2DigitRBA_13 U7 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U8 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitRBA_15 U9 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitRBA_16 U10 (Z__dp[16], Z__dn[16], C1_17, C2_17, X__dp[16], X__dn[16], Y__dp[16], Y__dn[16], C1_16, C2_16);
  SD2DigitRBA_17 U11 (Z__dp[17], Z__dn[17], C1_18, C2_18, X__dp[17], X__dn[17], Y__dp[17], Y__dn[17], C1_17, C2_17);
  SD2DigitRBA_18 U12 (Z__dp[18], Z__dn[18], C1_19, C2_19, X__dp[18], X__dn[18], Y__dp[18], Y__dn[18], C1_18, C2_18);
  SD2DigitCom_19 U13 (Z__dp[19], Z__dn[19], C2_19, C1_19);
endmodule

module SD2PureRBA_20_12 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [21:12] Z__dp, Z__dn;
  input [20:12] X__dp, X__dn;
  input [20:12] Y__dp, Y__dn;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_17;
  wire C1_18;
  wire C1_19;
  wire C1_20;
  wire C1_21;
  wire C1i;
  wire C2_13;
  wire C2_14;
  wire C2_15;
  wire C2_16;
  wire C2_17;
  wire C2_18;
  wire C2_19;
  wire C2_20;
  wire C2_21;
  wire C2i;
  UBZero_12_12 U0 (C1i);
  NUBZero_12_12 U1 (C2i);
  SD2DigitRBA_12 U2 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1i, C2i);
  SD2DigitRBA_13 U3 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U4 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitRBA_15 U5 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitRBA_16 U6 (Z__dp[16], Z__dn[16], C1_17, C2_17, X__dp[16], X__dn[16], Y__dp[16], Y__dn[16], C1_16, C2_16);
  SD2DigitRBA_17 U7 (Z__dp[17], Z__dn[17], C1_18, C2_18, X__dp[17], X__dn[17], Y__dp[17], Y__dn[17], C1_17, C2_17);
  SD2DigitRBA_18 U8 (Z__dp[18], Z__dn[18], C1_19, C2_19, X__dp[18], X__dn[18], Y__dp[18], Y__dn[18], C1_18, C2_18);
  SD2DigitRBA_19 U9 (Z__dp[19], Z__dn[19], C1_20, C2_20, X__dp[19], X__dn[19], Y__dp[19], Y__dn[19], C1_19, C2_19);
  SD2DigitRBA_20 U10 (Z__dp[20], Z__dn[20], C1_21, C2_21, X__dp[20], X__dn[20], Y__dp[20], Y__dn[20], C1_20, C2_20);
  SD2DigitCom_21 U11 (Z__dp[21], Z__dn[21], C2_21, C1_21);
endmodule

module SD2PureRBA_21_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [22:0] Z__dp, Z__dn;
  input [21:0] X__dp, X__dn;
  input [21:0] Y__dp, Y__dn;
  wire C1_1;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_17;
  wire C1_18;
  wire C1_19;
  wire C1_2;
  wire C1_20;
  wire C1_21;
  wire C1_22;
  wire C1_3;
  wire C1_4;
  wire C1_5;
  wire C1_6;
  wire C1_7;
  wire C1_8;
  wire C1_9;
  wire C1i;
  wire C2_1;
  wire C2_10;
  wire C2_11;
  wire C2_12;
  wire C2_13;
  wire C2_14;
  wire C2_15;
  wire C2_16;
  wire C2_17;
  wire C2_18;
  wire C2_19;
  wire C2_2;
  wire C2_20;
  wire C2_21;
  wire C2_22;
  wire C2_3;
  wire C2_4;
  wire C2_5;
  wire C2_6;
  wire C2_7;
  wire C2_8;
  wire C2_9;
  wire C2i;
  UBZero_0_0 U0 (C1i);
  NUBZero_0_0 U1 (C2i);
  SD2DigitRBA_0 U2 (Z__dp[0], Z__dn[0], C1_1, C2_1, X__dp[0], X__dn[0], Y__dp[0], Y__dn[0], C1i, C2i);
  SD2DigitRBA_1 U3 (Z__dp[1], Z__dn[1], C1_2, C2_2, X__dp[1], X__dn[1], Y__dp[1], Y__dn[1], C1_1, C2_1);
  SD2DigitRBA_2 U4 (Z__dp[2], Z__dn[2], C1_3, C2_3, X__dp[2], X__dn[2], Y__dp[2], Y__dn[2], C1_2, C2_2);
  SD2DigitRBA_3 U5 (Z__dp[3], Z__dn[3], C1_4, C2_4, X__dp[3], X__dn[3], Y__dp[3], Y__dn[3], C1_3, C2_3);
  SD2DigitRBA_4 U6 (Z__dp[4], Z__dn[4], C1_5, C2_5, X__dp[4], X__dn[4], Y__dp[4], Y__dn[4], C1_4, C2_4);
  SD2DigitRBA_5 U7 (Z__dp[5], Z__dn[5], C1_6, C2_6, X__dp[5], X__dn[5], Y__dp[5], Y__dn[5], C1_5, C2_5);
  SD2DigitRBA_6 U8 (Z__dp[6], Z__dn[6], C1_7, C2_7, X__dp[6], X__dn[6], Y__dp[6], Y__dn[6], C1_6, C2_6);
  SD2DigitRBA_7 U9 (Z__dp[7], Z__dn[7], C1_8, C2_8, X__dp[7], X__dn[7], Y__dp[7], Y__dn[7], C1_7, C2_7);
  SD2DigitRBA_8 U10 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1_8, C2_8);
  SD2DigitRBA_9 U11 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U12 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U13 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitRBA_12 U14 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1_12, C2_12);
  SD2DigitRBA_13 U15 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U16 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitRBA_15 U17 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitRBA_16 U18 (Z__dp[16], Z__dn[16], C1_17, C2_17, X__dp[16], X__dn[16], Y__dp[16], Y__dn[16], C1_16, C2_16);
  SD2DigitRBA_17 U19 (Z__dp[17], Z__dn[17], C1_18, C2_18, X__dp[17], X__dn[17], Y__dp[17], Y__dn[17], C1_17, C2_17);
  SD2DigitRBA_18 U20 (Z__dp[18], Z__dn[18], C1_19, C2_19, X__dp[18], X__dn[18], Y__dp[18], Y__dn[18], C1_18, C2_18);
  SD2DigitRBA_19 U21 (Z__dp[19], Z__dn[19], C1_20, C2_20, X__dp[19], X__dn[19], Y__dp[19], Y__dn[19], C1_19, C2_19);
  SD2DigitRBA_20 U22 (Z__dp[20], Z__dn[20], C1_21, C2_21, X__dp[20], X__dn[20], Y__dp[20], Y__dn[20], C1_20, C2_20);
  SD2DigitRBA_21 U23 (Z__dp[21], Z__dn[21], C1_22, C2_22, X__dp[21], X__dn[21], Y__dp[21], Y__dn[21], C1_21, C2_21);
  SD2DigitCom_22 U24 (Z__dp[22], Z__dn[22], C2_22, C1_22);
endmodule

module SD2RBA_10_0_14_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [15:0] Z__dp, Z__dn;
  input [10:0] X__dp, X__dn;
  input [14:4] Y__dp, Y__dn;
  wire [14:0] XX__dp, XX__dn;
  wire [14:11] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_14_000 U0 (Zero__dp[14:11], Zero__dn[14:11]);
  SD2_PN_ACMBIN_14_000 U1 (XX__dp[14:0], XX__dn[14:0], Zero__dp[14:11], Zero__dn[14:11], X__dp[10:0], X__dn[10:0]);
  SD2PureRBA_14_4 U2 (Z__dp[15:4], Z__dn[15:4], XX__dp[14:4], XX__dn[14:4], Y__dp[14:4], Y__dn[14:4]);
  SD2_PN_ACON_3_0 U3 (Z__dp[3:0], Z__dn[3:0], XX__dp[3:0], XX__dn[3:0]);
endmodule

module SD2RBA_15_0_18_8 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [19:0] Z__dp, Z__dn;
  input [15:0] X__dp, X__dn;
  input [18:8] Y__dp, Y__dn;
  wire [18:0] XX__dp, XX__dn;
  wire [18:16] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_18_000 U0 (Zero__dp[18:16], Zero__dn[18:16]);
  SD2_PN_ACMBIN_18_000 U1 (XX__dp[18:0], XX__dn[18:0], Zero__dp[18:16], Zero__dn[18:16], X__dp[15:0], X__dn[15:0]);
  SD2PureRBA_18_8 U2 (Z__dp[19:8], Z__dn[19:8], XX__dp[18:8], XX__dn[18:8], Y__dp[18:8], Y__dn[18:8]);
  SD2_PN_ACON_7_0 U3 (Z__dp[7:0], Z__dn[7:0], XX__dp[7:0], XX__dn[7:0]);
endmodule

module SD2RBA_19_0_21_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [22:0] Z__dp, Z__dn;
  input [19:0] X__dp, X__dn;
  input [21:0] Y__dp, Y__dn;
  wire [21:0] XX__dp, XX__dn;
  wire [21:20] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_21_000 U0 (Zero__dp[21:20], Zero__dn[21:20]);
  SD2_PN_ACMBIN_21_000 U1 (XX__dp[21:0], XX__dn[21:0], Zero__dp[21:20], Zero__dn[21:20], X__dp[19:0], X__dn[19:0]);
  SD2PureRBA_21_0 U2 (Z__dp[22:0], Z__dn[22:0], XX__dp[21:0], XX__dn[21:0], Y__dp[21:0], Y__dn[21:0]);
endmodule

module SD2RBA_20_12_16_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [21:0] Z__dp, Z__dn;
  input [20:12] X__dp, X__dn;
  input [16:0] Y__dp, Y__dn;
  wire [20:0] YY__dp, YY__dn;
  wire [20:17] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_20_000 U0 (Zero__dp[20:17], Zero__dn[20:17]);
  SD2_PN_ACMBIN_20_000 U1 (YY__dp[20:0], YY__dn[20:0], Zero__dp[20:17], Zero__dn[20:17], Y__dp[16:0], Y__dn[16:0]);
  SD2PureRBA_20_12 U2 (Z__dp[21:12], Z__dn[21:12], X__dp[20:12], X__dn[20:12], YY__dp[20:12], YY__dn[20:12]);
  SD2_PN_ACON_11_0 U3 (Z__dp[11:0], Z__dn[11:0], YY__dp[11:0], YY__dn[11:0]);
endmodule

module SD2RBTR_10_0_14_4000 (Z__dp, Z__dn, PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  output [22:0] Z__dp, Z__dn;
  input [10:0] PP0__dp, PP0__dn;
  input [14:4] PP1__dp, PP1__dn;
  input [18:8] PP2__dp, PP2__dn;
  input [20:12] PP3__dp, PP3__dn;
  input [16:0] PP4__dp, PP4__dn;
  wire [15:0] W1_0__dp, W1_0__dn;
  wire [19:0] W2_1__dp, W2_1__dn;
  wire [21:0] W2_2__dp, W2_2__dn;
  SD2RBA_10_0_14_4 U0 (W1_0__dp[15:0], W1_0__dn[15:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn);
  SD2RBA_15_0_18_8 U1 (W2_1__dp[19:0], W2_1__dn[19:0], W1_0__dp[15:0], W1_0__dn[15:0], PP2__dp, PP2__dn);
  SD2RBA_20_12_16_0 U2 (W2_2__dp[21:0], W2_2__dn[21:0], PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2RBA_19_0_21_0 U3 (Z__dp[22:0], Z__dn[22:0], W2_1__dp[19:0], W2_1__dn[19:0], W2_2__dp[21:0], W2_2__dn[21:0]);
endmodule

module SD2TCConv_CSe_22_000 (O, I__dp, I__dn);
  output [23:0] O;
  input [22:0] I__dp, I__dn;
  wire C;
  wire [23:0] S;
  wire [22:0] X;
  wire [22:0] Y;
  wire Z;
  SD2Decom_PN_22_0 U0 (X, Y, I__dp, I__dn);
  UBOne_0 U1 (C);
  UBPriCSlA_22_0 U2 (S, X, Y, C);
  UBInv_23 U3 (Z, S[23]);
  TCCom_23_0 U4 (O, Z, S[22:0]);
endmodule

module SD2_PN_ACMBIN_14_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [14:0] O__dp, O__dn;
  input [14:11] IN0__dp, IN0__dn;
  input [10:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_14_11 U0 (O__dp[14:11], O__dn[14:11], IN0__dp, IN0__dn);
  SD2_PN_ACON_10_0 U1 (O__dp[10:0], O__dn[10:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_18_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [18:0] O__dp, O__dn;
  input [18:16] IN0__dp, IN0__dn;
  input [15:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_18_16 U0 (O__dp[18:16], O__dn[18:16], IN0__dp, IN0__dn);
  SD2_PN_ACON_15_0 U1 (O__dp[15:0], O__dn[15:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_20_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [20:0] O__dp, O__dn;
  input [20:17] IN0__dp, IN0__dn;
  input [16:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_20_17 U0 (O__dp[20:17], O__dn[20:17], IN0__dp, IN0__dn);
  SD2_PN_ACON_16_0 U1 (O__dp[16:0], O__dn[16:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_21_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [21:0] O__dp, O__dn;
  input [21:20] IN0__dp, IN0__dn;
  input [19:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_21_20 U0 (O__dp[21:20], O__dn[21:20], IN0__dp, IN0__dn);
  SD2_PN_ACON_19_0 U1 (O__dp[19:0], O__dn[19:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACON_10_0 (O__dp, O__dn, I__dp, I__dn);
  output [10:0] O__dp, O__dn;
  input [10:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U8 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U9 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U10 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
endmodule

module SD2_PN_ACON_11_0 (O__dp, O__dn, I__dp, I__dn);
  output [11:0] O__dp, O__dn;
  input [11:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U8 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U9 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U10 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U11 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
endmodule

module SD2_PN_ACON_14_11 (O__dp, O__dn, I__dp, I__dn);
  output [14:11] O__dp, O__dn;
  input [14:11] I__dp, I__dn;
  SD2_PN_A1DCON_11 U0 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U1 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U2 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U3 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
endmodule

module SD2_PN_ACON_15_0 (O__dp, O__dn, I__dp, I__dn);
  output [15:0] O__dp, O__dn;
  input [15:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U8 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U9 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U10 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U11 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U12 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U13 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U14 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
  SD2_PN_A1DCON_15 U15 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
endmodule

module SD2_PN_ACON_16_0 (O__dp, O__dn, I__dp, I__dn);
  output [16:0] O__dp, O__dn;
  input [16:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U8 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U9 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U10 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U11 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U12 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U13 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U14 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
  SD2_PN_A1DCON_15 U15 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
  SD2_PN_A1DCON_16 U16 (O__dp[16], O__dn[16], I__dp[16], I__dn[16]);
endmodule

module SD2_PN_ACON_18_16 (O__dp, O__dn, I__dp, I__dn);
  output [18:16] O__dp, O__dn;
  input [18:16] I__dp, I__dn;
  SD2_PN_A1DCON_16 U0 (O__dp[16], O__dn[16], I__dp[16], I__dn[16]);
  SD2_PN_A1DCON_17 U1 (O__dp[17], O__dn[17], I__dp[17], I__dn[17]);
  SD2_PN_A1DCON_18 U2 (O__dp[18], O__dn[18], I__dp[18], I__dn[18]);
endmodule

module SD2_PN_ACON_19_0 (O__dp, O__dn, I__dp, I__dn);
  output [19:0] O__dp, O__dn;
  input [19:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U8 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U9 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U10 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U11 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U12 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U13 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U14 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
  SD2_PN_A1DCON_15 U15 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
  SD2_PN_A1DCON_16 U16 (O__dp[16], O__dn[16], I__dp[16], I__dn[16]);
  SD2_PN_A1DCON_17 U17 (O__dp[17], O__dn[17], I__dp[17], I__dn[17]);
  SD2_PN_A1DCON_18 U18 (O__dp[18], O__dn[18], I__dp[18], I__dn[18]);
  SD2_PN_A1DCON_19 U19 (O__dp[19], O__dn[19], I__dp[19], I__dn[19]);
endmodule

module SD2_PN_ACON_20_17 (O__dp, O__dn, I__dp, I__dn);
  output [20:17] O__dp, O__dn;
  input [20:17] I__dp, I__dn;
  SD2_PN_A1DCON_17 U0 (O__dp[17], O__dn[17], I__dp[17], I__dn[17]);
  SD2_PN_A1DCON_18 U1 (O__dp[18], O__dn[18], I__dp[18], I__dn[18]);
  SD2_PN_A1DCON_19 U2 (O__dp[19], O__dn[19], I__dp[19], I__dn[19]);
  SD2_PN_A1DCON_20 U3 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
endmodule

module SD2_PN_ACON_21_20 (O__dp, O__dn, I__dp, I__dn);
  output [21:20] O__dp, O__dn;
  input [21:20] I__dp, I__dn;
  SD2_PN_A1DCON_20 U0 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
  SD2_PN_A1DCON_21 U1 (O__dp[21], O__dn[21], I__dp[21], I__dn[21]);
endmodule

module SD2_PN_ACON_3_0 (O__dp, O__dn, I__dp, I__dn);
  output [3:0] O__dp, O__dn;
  input [3:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
endmodule

module SD2_PN_ACON_7_0 (O__dp, O__dn, I__dp, I__dn);
  output [7:0] O__dp, O__dn;
  input [7:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U4 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U5 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U6 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U7 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
endmodule

module TCU4VPPG_7_0_6 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [19:12] O_R;
  output O_T;
  input [6:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [19:13] P;
  U4DPPGL_0_6 U0 (P[13], O_R[12], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_6 U1 (P[14], O_R[13], IN1_R[1], U__d1, U__d0, P[13]);
  U4DPPG_2_6 U2 (P[15], O_R[14], IN1_R[2], U__d1, U__d0, P[14]);
  U4DPPG_3_6 U3 (P[16], O_R[15], IN1_R[3], U__d1, U__d0, P[15]);
  U4DPPG_4_6 U4 (P[17], O_R[16], IN1_R[4], U__d1, U__d0, P[16]);
  U4DPPG_5_6 U5 (P[18], O_R[17], IN1_R[5], U__d1, U__d0, P[17]);
  U4DPPG_6_6 U6 (P[19], O_R[18], IN1_R[6], U__d1, U__d0, P[18]);
  U4DPPGH_7_6 U7 (O_T, O_R[19], IN1_T, U__d1, U__d0, P[19]);
endmodule

module UBCMBIN_10_10_7_0 (O, IN0, IN1);
  output [10:0] O;
  input IN0;
  input [7:0] IN1;
  UB1DCON_10 U0 (O[10], IN0);
  UBZero_9_8 U1 (O[9:8]);
  UBCON_7_0 U2 (O[7:0], IN1);
endmodule

module UBCMBIN_14_14_11_000 (O, IN0, IN1);
  output [14:4] O;
  input IN0;
  input [11:4] IN1;
  UB1DCON_14 U0 (O[14], IN0);
  UBZero_13_12 U1 (O[13:12]);
  UBCON_11_4 U2 (O[11:4], IN1);
endmodule

module UBCMBIN_16_9_8_0 (O, IN0, IN1);
  output [16:0] O;
  input [16:9] IN0;
  input [8:0] IN1;
  UBCON_16_9 U0 (O[16:9], IN0);
  UBCON_8_0 U1 (O[8:0], IN1);
endmodule

module UBCMBIN_18_18_15_000 (O, IN0, IN1);
  output [18:8] O;
  input IN0;
  input [15:8] IN1;
  UB1DCON_18 U0 (O[18], IN0);
  UBZero_17_16 U1 (O[17:16]);
  UBCON_15_8 U2 (O[15:8], IN1);
endmodule

module UBCMBIN_8_8_4_4_0000 (O, IN0, IN1, IN2);
  output [8:0] O;
  input IN0;
  input IN1;
  input IN2;
  UB1DCON_8 U0 (O[8], IN0);
  UBZero_7_5 U1 (O[7:5]);
  UB1DCON_4 U2 (O[4], IN1);
  UBZero_3_1 U3 (O[3:1]);
  UB1DCON_0 U4 (O[0], IN2);
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

module UBCON_15_8 (O, I);
  output [15:8] O;
  input [15:8] I;
  UB1DCON_8 U0 (O[8], I[8]);
  UB1DCON_9 U1 (O[9], I[9]);
  UB1DCON_10 U2 (O[10], I[10]);
  UB1DCON_11 U3 (O[11], I[11]);
  UB1DCON_12 U4 (O[12], I[12]);
  UB1DCON_13 U5 (O[13], I[13]);
  UB1DCON_14 U6 (O[14], I[14]);
  UB1DCON_15 U7 (O[15], I[15]);
endmodule

module UBCON_16_9 (O, I);
  output [16:9] O;
  input [16:9] I;
  UB1DCON_9 U0 (O[9], I[9]);
  UB1DCON_10 U1 (O[10], I[10]);
  UB1DCON_11 U2 (O[11], I[11]);
  UB1DCON_12 U3 (O[12], I[12]);
  UB1DCON_13 U4 (O[13], I[13]);
  UB1DCON_14 U5 (O[14], I[14]);
  UB1DCON_15 U6 (O[15], I[15]);
  UB1DCON_16 U7 (O[16], I[16]);
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

module UBMinusVPPG_6_0_1 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [9:2] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [9:2] W;
  SD41DDECON_1 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_1 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_9_2 U2 (PP, W, S);
  NUBBBG_2 U3 (C, S);
  UBHBBG_10 U4 (P, S);
endmodule

module UBMinusVPPG_6_0_3 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [13:6] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [13:6] W;
  SD41DDECON_3 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_3 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_13_6 U2 (PP, W, S);
  NUBBBG_6 U3 (C, S);
  UBHBBG_14 U4 (P, S);
endmodule

module UBMinusVPPG_6_0_5 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [17:10] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [17:10] W;
  SD41DDECON_5 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_5 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_17_10 U2 (PP, W, S);
  NUBBBG_10 U3 (C, S);
  UBHBBG_18 U4 (P, S);
endmodule

module UBNUBWCON_13_6 (O, I, S);
  output [13:6] O;
  input [13:6] I;
  input S;
  BWCPN_6 U0 (O[6], I[6], S);
  BWCPN_7 U1 (O[7], I[7], S);
  BWCPN_8 U2 (O[8], I[8], S);
  BWCPN_9 U3 (O[9], I[9], S);
  BWCPN_10 U4 (O[10], I[10], S);
  BWCPN_11 U5 (O[11], I[11], S);
  BWCPN_12 U6 (O[12], I[12], S);
  BWCPN_13 U7 (O[13], I[13], S);
endmodule

module UBNUBWCON_17_10 (O, I, S);
  output [17:10] O;
  input [17:10] I;
  input S;
  BWCPN_10 U0 (O[10], I[10], S);
  BWCPN_11 U1 (O[11], I[11], S);
  BWCPN_12 U2 (O[12], I[12], S);
  BWCPN_13 U3 (O[13], I[13], S);
  BWCPN_14 U4 (O[14], I[14], S);
  BWCPN_15 U5 (O[15], I[15], S);
  BWCPN_16 U6 (O[16], I[16], S);
  BWCPN_17 U7 (O[17], I[17], S);
endmodule

module UBNUBWCON_9_2 (O, I, S);
  output [9:2] O;
  input [9:2] I;
  input S;
  BWCPN_2 U0 (O[2], I[2], S);
  BWCPN_3 U1 (O[3], I[3], S);
  BWCPN_4 U2 (O[4], I[4], S);
  BWCPN_5 U3 (O[5], I[5], S);
  BWCPN_6 U4 (O[6], I[6], S);
  BWCPN_7 U5 (O[7], I[7], S);
  BWCPN_8 U6 (O[8], I[8], S);
  BWCPN_9 U7 (O[9], I[9], S);
endmodule

module UBNUB_SD2Comp_10_000 (O__dp, O__dn, I_p, I_n);
  output [10:0] O__dp, O__dn;
  input [9:2] I_n;
  input [10:0] I_p;
  wire [10:0] N;
  wire Z_h;
  wire [1:0] Z_l;
  NUBZero_10_10 U0 (Z_h);
  NUBZero_1_0 U1 (Z_l);
  NUBCMBIN_10_10_9_000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_000 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_14_000 (O__dp, O__dn, I_p, I_n);
  output [14:4] O__dp, O__dn;
  input [13:6] I_n;
  input [14:4] I_p;
  wire [14:4] N;
  wire Z_h;
  wire [5:4] Z_l;
  NUBZero_14_14 U0 (Z_h);
  NUBZero_5_4 U1 (Z_l);
  NUBCMBIN_14_14_13000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_001 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_18_000 (O__dp, O__dn, I_p, I_n);
  output [18:8] O__dp, O__dn;
  input [17:10] I_n;
  input [18:8] I_p;
  wire [18:8] N;
  wire Z_h;
  wire [9:8] Z_l;
  NUBZero_18_18 U0 (Z_h);
  NUBZero_9_8 U1 (Z_l);
  NUBCMBIN_18_18_17000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_002 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_8_0000 (O__dp, O__dn, I_p, I_n);
  output [16:0] O__dp, O__dn;
  input [16:2] I_n;
  input [8:0] I_p;
  wire [16:0] N;
  wire [16:0] P;
  wire [16:9] Z_h;
  wire [1:0] Z_l;
  UBZero_16_9 U0 (Z_h);
  NUBZero_1_0 U1 (Z_l);
  UBCMBIN_16_9_8_0 U2 (P, Z_h, I_p);
  NUBCMBIN_16_2_1_0 U3 (N, I_n, Z_l);
  UBNUB_SD2PriComp_003 U4 (O__dp, O__dn, P, N);
endmodule

module UBNUB_SD2PriComp_000 (O__dp, O__dn, I_p, I_n);
  output [10:0] O__dp, O__dn;
  input [10:0] I_n;
  input [10:0] I_p;
  SD2DigitCom_0 U0 (O__dp[0], O__dn[0], I_n[0], I_p[0]);
  SD2DigitCom_1 U1 (O__dp[1], O__dn[1], I_n[1], I_p[1]);
  SD2DigitCom_2 U2 (O__dp[2], O__dn[2], I_n[2], I_p[2]);
  SD2DigitCom_3 U3 (O__dp[3], O__dn[3], I_n[3], I_p[3]);
  SD2DigitCom_4 U4 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U5 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U6 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U7 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U8 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U9 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U10 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
endmodule

module UBNUB_SD2PriComp_001 (O__dp, O__dn, I_p, I_n);
  output [14:4] O__dp, O__dn;
  input [14:4] I_n;
  input [14:4] I_p;
  SD2DigitCom_4 U0 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U1 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U2 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U3 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U4 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U5 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U6 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U7 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
  SD2DigitCom_12 U8 (O__dp[12], O__dn[12], I_n[12], I_p[12]);
  SD2DigitCom_13 U9 (O__dp[13], O__dn[13], I_n[13], I_p[13]);
  SD2DigitCom_14 U10 (O__dp[14], O__dn[14], I_n[14], I_p[14]);
endmodule

module UBNUB_SD2PriComp_002 (O__dp, O__dn, I_p, I_n);
  output [18:8] O__dp, O__dn;
  input [18:8] I_n;
  input [18:8] I_p;
  SD2DigitCom_8 U0 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U1 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U2 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U3 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
  SD2DigitCom_12 U4 (O__dp[12], O__dn[12], I_n[12], I_p[12]);
  SD2DigitCom_13 U5 (O__dp[13], O__dn[13], I_n[13], I_p[13]);
  SD2DigitCom_14 U6 (O__dp[14], O__dn[14], I_n[14], I_p[14]);
  SD2DigitCom_15 U7 (O__dp[15], O__dn[15], I_n[15], I_p[15]);
  SD2DigitCom_16 U8 (O__dp[16], O__dn[16], I_n[16], I_p[16]);
  SD2DigitCom_17 U9 (O__dp[17], O__dn[17], I_n[17], I_p[17]);
  SD2DigitCom_18 U10 (O__dp[18], O__dn[18], I_n[18], I_p[18]);
endmodule

module UBNUB_SD2PriComp_003 (O__dp, O__dn, I_p, I_n);
  output [16:0] O__dp, O__dn;
  input [16:0] I_n;
  input [16:0] I_p;
  SD2DigitCom_0 U0 (O__dp[0], O__dn[0], I_n[0], I_p[0]);
  SD2DigitCom_1 U1 (O__dp[1], O__dn[1], I_n[1], I_p[1]);
  SD2DigitCom_2 U2 (O__dp[2], O__dn[2], I_n[2], I_p[2]);
  SD2DigitCom_3 U3 (O__dp[3], O__dn[3], I_n[3], I_p[3]);
  SD2DigitCom_4 U4 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U5 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U6 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U7 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U8 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U9 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U10 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U11 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
  SD2DigitCom_12 U12 (O__dp[12], O__dn[12], I_n[12], I_p[12]);
  SD2DigitCom_13 U13 (O__dp[13], O__dn[13], I_n[13], I_p[13]);
  SD2DigitCom_14 U14 (O__dp[14], O__dn[14], I_n[14], I_p[14]);
  SD2DigitCom_15 U15 (O__dp[15], O__dn[15], I_n[15], I_p[15]);
  SD2DigitCom_16 U16 (O__dp[16], O__dn[16], I_n[16], I_p[16]);
endmodule

module UBPlusVPPG_6_0_0 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [7:0] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [7:0] W;
  SD41DDECON_0 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_0 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_7_0 U2 (PP, W, S);
  UBBBG_0 U3 (C, S);
  NUBBHBG_8 U4 (N, S);
endmodule

module UBPlusVPPG_6_0_2 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [11:4] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [11:4] W;
  SD41DDECON_2 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_2 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_11_4 U2 (PP, W, S);
  UBBBG_4 U3 (C, S);
  NUBBHBG_12 U4 (N, S);
endmodule

module UBPlusVPPG_6_0_4 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [15:8] PP;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [15:8] W;
  SD41DDECON_4 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_6_0_4 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_15_8 U2 (PP, W, S);
  UBBBG_8 U3 (C, S);
  NUBBHBG_16 U4 (N, S);
endmodule

module UBR4BE_12_0 (O__ds, O__d1, O__d0, I);
  output [6:0] O__ds, O__d1, O__d0;
  input [12:0] I;
  wire T;
  NUBZero_13_13 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEE_3 U4 (O__ds[3], O__d1[3], O__d0[3], I[7], I[6], I[5]);
  R4BEE_4 U5 (O__ds[4], O__d1[4], O__d0[4], I[9], I[8], I[7]);
  R4BEE_5 U6 (O__ds[5], O__d1[5], O__d0[5], I[11], I[10], I[9]);
  R4BEEH_6_3 U7 (O__ds[6], O__d1[6], O__d0[6], T, I[12], I[11]);
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

module UBRCB_22_22 (Co, S, X, Y, Ci);
  output Co;
  output S;
  input Ci;
  input X;
  input Y;
  UBFA_22 U0 (Co, S, X, Y, Ci);
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

module UBSD4VPPG_6_0_6 (PP__dp, PP__dn, I1, I2__ds, I2__d1, I2__d0);
  output [20:12] PP__dp, PP__dn;
  input [6:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [19:12] W_R;
  wire W_T;
  wire Z;
  SD41DDECON_6 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  NUBZero_7_7 U1 (Z);
  TCU4VPPG_7_0_6 U2 (W_T, W_R, Z, I1, U__d1, U__d0);
  TCSD2Conv_20_12 U3 (PP__dp, PP__dn, W_T, W_R, S);
endmodule

module UBSR4BPPG_6_0_12_000 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, IN1, IN2);
  output [10:0] PP0__dp, PP0__dn;
  output [14:4] PP1__dp, PP1__dn;
  output [18:8] PP2__dp, PP2__dn;
  output [20:12] PP3__dp, PP3__dn;
  output [16:0] PP4__dp, PP4__dn;
  input [6:0] IN1;
  input [12:0] IN2;
  wire [6:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [16:2] MI_B;
  wire NCO0;
  wire NCO1;
  wire NCO2;
  wire NEG0;
  wire NEG1;
  wire NEG2;
  wire [9:2] NPP0;
  wire [13:6] NPP1;
  wire [17:10] NPP2;
  wire PCO0;
  wire PCO1;
  wire PCO2;
  wire [8:0] PL_B;
  wire POG0;
  wire POG1;
  wire POG2;
  wire [7:0] PPP0;
  wire [11:4] PPP1;
  wire [15:8] PPP2;
  wire [10:0] PP_p0;
  wire [14:4] PP_p1;
  wire [18:8] PP_p2;
  UBR4BE_12_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBPlusVPPG_6_0_0 U1 (NEG0, PPP0, PCO0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBMinusVPPG_6_0_1 U2 (POG0, NPP0, NCO0, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBCMBIN_10_10_7_0 U3 (PP_p0, POG0, PPP0);
  UBNUB_SD2Comp_10_000 U4 (PP0__dp[10:0], PP0__dn[10:0], PP_p0, NPP0);
  UBPlusVPPG_6_0_2 U5 (NEG1, PPP1, PCO1, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBMinusVPPG_6_0_3 U6 (POG1, NPP1, NCO1, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBCMBIN_14_14_11_000 U7 (PP_p1, POG1, PPP1);
  UBNUB_SD2Comp_14_000 U8 (PP1__dp[14:4], PP1__dn[14:4], PP_p1, NPP1);
  UBPlusVPPG_6_0_4 U9 (NEG2, PPP2, PCO2, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBMinusVPPG_6_0_5 U10 (POG2, NPP2, NCO2, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBCMBIN_18_18_15_000 U11 (PP_p2, POG2, PPP2);
  UBNUB_SD2Comp_18_000 U12 (PP2__dp[18:8], PP2__dn[18:8], PP_p2, NPP2);
  UBSD4VPPG_6_0_6 U13 (PP3__dp, PP3__dn, IN1, IN2SD__ds[6], IN2SD__d1[6], IN2SD__d0[6]);
  UBCMBIN_8_8_4_4_0000 U14 (PL_B, PCO2, PCO1, PCO0);
  NUBCMBIN_16_16_12000 U15 (MI_B, NEG2, NEG1, NCO2, NEG0, NCO1, NCO0);
  UBNUB_SD2Comp_8_0000 U16 (PP4__dp[16:0], PP4__dn[16:0], PL_B, MI_B);
endmodule

module UBU4VPPG_6_0_0 (O, I, U__d1, U__d0);
  output [7:0] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [6:1] P;
  U4DPPGL_0_0 U0 (P[1], O[0], I[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O[1], I[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O[2], I[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O[3], I[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O[4], I[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O[5], I[5], U__d1, U__d0, P[5]);
  U4DPPG_6_0 U6 (O[7], O[6], I[6], U__d1, U__d0, P[6]);
endmodule

module UBU4VPPG_6_0_1 (O, I, U__d1, U__d0);
  output [9:2] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [8:3] P;
  U4DPPGL_0_1 U0 (P[3], O[2], I[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O[3], I[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O[4], I[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O[5], I[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O[6], I[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O[7], I[5], U__d1, U__d0, P[7]);
  U4DPPG_6_1 U6 (O[9], O[8], I[6], U__d1, U__d0, P[8]);
endmodule

module UBU4VPPG_6_0_2 (O, I, U__d1, U__d0);
  output [11:4] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [10:5] P;
  U4DPPGL_0_2 U0 (P[5], O[4], I[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O[5], I[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O[6], I[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O[7], I[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O[8], I[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O[9], I[5], U__d1, U__d0, P[9]);
  U4DPPG_6_2 U6 (O[11], O[10], I[6], U__d1, U__d0, P[10]);
endmodule

module UBU4VPPG_6_0_3 (O, I, U__d1, U__d0);
  output [13:6] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [12:7] P;
  U4DPPGL_0_3 U0 (P[7], O[6], I[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O[7], I[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O[8], I[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O[9], I[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O[10], I[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O[11], I[5], U__d1, U__d0, P[11]);
  U4DPPG_6_3 U6 (O[13], O[12], I[6], U__d1, U__d0, P[12]);
endmodule

module UBU4VPPG_6_0_4 (O, I, U__d1, U__d0);
  output [15:8] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [14:9] P;
  U4DPPGL_0_4 U0 (P[9], O[8], I[0], U__d1, U__d0);
  U4DPPG_1_4 U1 (P[10], O[9], I[1], U__d1, U__d0, P[9]);
  U4DPPG_2_4 U2 (P[11], O[10], I[2], U__d1, U__d0, P[10]);
  U4DPPG_3_4 U3 (P[12], O[11], I[3], U__d1, U__d0, P[11]);
  U4DPPG_4_4 U4 (P[13], O[12], I[4], U__d1, U__d0, P[12]);
  U4DPPG_5_4 U5 (P[14], O[13], I[5], U__d1, U__d0, P[13]);
  U4DPPG_6_4 U6 (O[15], O[14], I[6], U__d1, U__d0, P[14]);
endmodule

module UBU4VPPG_6_0_5 (O, I, U__d1, U__d0);
  output [17:10] O;
  input [6:0] I;
  input U__d1, U__d0;
  wire [16:11] P;
  U4DPPGL_0_5 U0 (P[11], O[10], I[0], U__d1, U__d0);
  U4DPPG_1_5 U1 (P[12], O[11], I[1], U__d1, U__d0, P[11]);
  U4DPPG_2_5 U2 (P[13], O[12], I[2], U__d1, U__d0, P[12]);
  U4DPPG_3_5 U3 (P[14], O[13], I[3], U__d1, U__d0, P[13]);
  U4DPPG_4_5 U4 (P[15], O[14], I[4], U__d1, U__d0, P[14]);
  U4DPPG_5_5 U5 (P[16], O[15], I[5], U__d1, U__d0, P[15]);
  U4DPPG_6_5 U6 (O[17], O[16], I[6], U__d1, U__d0, P[16]);
endmodule

module UBUBWCON_11_4 (O, I, S);
  output [11:4] O;
  input [11:4] I;
  input S;
  BWCPP_4 U0 (O[4], I[4], S);
  BWCPP_5 U1 (O[5], I[5], S);
  BWCPP_6 U2 (O[6], I[6], S);
  BWCPP_7 U3 (O[7], I[7], S);
  BWCPP_8 U4 (O[8], I[8], S);
  BWCPP_9 U5 (O[9], I[9], S);
  BWCPP_10 U6 (O[10], I[10], S);
  BWCPP_11 U7 (O[11], I[11], S);
endmodule

module UBUBWCON_15_8 (O, I, S);
  output [15:8] O;
  input [15:8] I;
  input S;
  BWCPP_8 U0 (O[8], I[8], S);
  BWCPP_9 U1 (O[9], I[9], S);
  BWCPP_10 U2 (O[10], I[10], S);
  BWCPP_11 U3 (O[11], I[11], S);
  BWCPP_12 U4 (O[12], I[12], S);
  BWCPP_13 U5 (O[13], I[13], S);
  BWCPP_14 U6 (O[14], I[14], S);
  BWCPP_15 U7 (O[15], I[15], S);
endmodule

module UBUBWCON_7_0 (O, I, S);
  output [7:0] O;
  input [7:0] I;
  input S;
  BWCPP_0 U0 (O[0], I[0], S);
  BWCPP_1 U1 (O[1], I[1], S);
  BWCPP_2 U2 (O[2], I[2], S);
  BWCPP_3 U3 (O[3], I[3], S);
  BWCPP_4 U4 (O[4], I[4], S);
  BWCPP_5 U5 (O[5], I[5], S);
  BWCPP_6 U6 (O[6], I[6], S);
  BWCPP_7 U7 (O[7], I[7], S);
endmodule

