/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_13_0_1000

  Number system: Unsigned binary
  Multiplicand length: 14
  Multiplier length: 14
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Redundant binary addition tree
  Final stage addition: Ripple-block carry look-ahead adder
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

module UBBBG_0(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_15(O, S);
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

module NUBBBG_2(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_17(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_17(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_16_15(O);
  output [16:15] O;
  assign O[15] = 0;
  assign O[16] = 0;
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

module NUBZero_17_17(O);
  output [17:17] O;
  assign O[17] = 0;
endmodule

module NUBZero_1_0(O);
  output [1:0] O;
  assign O[0] = 0;
  assign O[1] = 0;
endmodule

module NUB1DCON_17(O, I);
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

module NUB1DCON_10(O, I);
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

module NUB1DCON_14(O, I);
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

module UBBBG_4(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_19(O, S);
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

module BWCPN_17(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_18(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_19(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_20(O, I, S);
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

module UBHBBG_21(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_20_19(O);
  output [20:19] O;
  assign O[19] = 0;
  assign O[20] = 0;
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

module UB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_21_21(O);
  output [21:21] O;
  assign O[21] = 0;
endmodule

module NUBZero_5_4(O);
  output [5:4] O;
  assign O[4] = 0;
  assign O[5] = 0;
endmodule

module NUB1DCON_21(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_18(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_18(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_19(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
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

module UBBBG_8(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_23(O, S);
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

module BWCPN_21(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_22(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_23(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_24(O, I, S);
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

module UBHBBG_25(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_24_23(O);
  output [24:23] O;
  assign O[23] = 0;
  assign O[24] = 0;
endmodule

module UB1DCON_19(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_20(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_25_25(O);
  output [25:25] O;
  assign O[25] = 0;
endmodule

module NUBZero_9_8(O);
  output [9:8] O;
  assign O[8] = 0;
  assign O[9] = 0;
endmodule

module NUB1DCON_25(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_22(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_22(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_23(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_24(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_25(O_p, O_n, I_n, I_p);
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

module UBBBG_12(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module NUBBHBG_27(O, S);
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

module BWCPN_25(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_26(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_27(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module BWCPN_28(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
endmodule

module NUBBBG_14(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_29(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_28_27(O);
  output [28:27] O;
  assign O[27] = 0;
  assign O[28] = 0;
endmodule

module UB1DCON_23(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_24(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_29_29(O);
  output [29:29] O;
  assign O[29] = 0;
endmodule

module NUBZero_13_12(O);
  output [13:12] O;
  assign O[12] = 0;
  assign O[13] = 0;
endmodule

module NUB1DCON_29(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_26(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_28(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2DigitCom_26(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_27(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_28(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitCom_29(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_11_9(O);
  output [11:9] O;
  assign O[9] = 0;
  assign O[10] = 0;
  assign O[11] = 0;
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

module NUBZero_26_24(O);
  output [26:24] O;
  assign O[24] = 0;
  assign O[25] = 0;
  assign O[26] = 0;
endmodule

module NUBZero_22_20(O);
  output [22:20] O;
  assign O[20] = 0;
  assign O[21] = 0;
  assign O[22] = 0;
endmodule

module NUBZero_18_16(O);
  output [18:16] O;
  assign O[16] = 0;
  assign O[17] = 0;
  assign O[18] = 0;
endmodule

module NUBZero_13_11(O);
  output [13:11] O;
  assign O[11] = 0;
  assign O[12] = 0;
  assign O[13] = 0;
endmodule

module NUBZero_9_7(O);
  output [9:7] O;
  assign O[7] = 0;
  assign O[8] = 0;
  assign O[9] = 0;
endmodule

module NUBZero_5_3(O);
  output [5:3] O;
  assign O[3] = 0;
  assign O[4] = 0;
  assign O[5] = 0;
endmodule

module UBZero_27_13(O);
  output [27:13] O;
  assign O[13] = 0;
  assign O[14] = 0;
  assign O[15] = 0;
  assign O[16] = 0;
  assign O[17] = 0;
  assign O[18] = 0;
  assign O[19] = 0;
  assign O[20] = 0;
  assign O[21] = 0;
  assign O[22] = 0;
  assign O[23] = 0;
  assign O[24] = 0;
  assign O[25] = 0;
  assign O[26] = 0;
  assign O[27] = 0;
endmodule

module UB1DCON_27(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module SD2_PN_A_Zero_21_000(O_p, O_n);
  output [21:18] O_p, O_n;
  assign O_p[18] = 0;
  assign O_n[18] = 0;
  assign O_p[19] = 0;
  assign O_n[19] = 0;
  assign O_p[20] = 0;
  assign O_n[20] = 0;
  assign O_p[21] = 0;
  assign O_n[21] = 0;
endmodule

module SD2_PN_A1DCON_18(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
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

module SD2_PN_A1DCON_21(O_p, O_n, I_p, I_n);
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

module SD2_PN_A1DCON_15(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
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

module SD2DigitDecom_PN_017(X, Y, I_p, I_n);
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

module SD2_PN_A_Zero_25_000(O_p, O_n);
  output [25:23] O_p, O_n;
  assign O_p[23] = 0;
  assign O_n[23] = 0;
  assign O_p[24] = 0;
  assign O_n[24] = 0;
  assign O_p[25] = 0;
  assign O_n[25] = 0;
endmodule

module SD2_PN_A1DCON_23(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_24(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_25(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_22(O_p, O_n, I_p, I_n);
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

module SD2DigitDecom_PN_018(X, Y, I_p, I_n);
  output [22:22] X;
  output [22:22] Y;
  input [22:22] I_p, I_n;
  assign X = ~ I_n[22];
  assign Y = I_p[22];
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

module UBInv_23(O, I);
  output [23:23] O;
  input [23:23] I;
  assign O[23] = ~ I[23];
endmodule

module SD2DigitDecom_PN_019(X, Y, I_p, I_n);
  output [23:23] X;
  output [23:23] Y;
  input [23:23] I_p, I_n;
  assign X = ~ I_n[23];
  assign Y = I_p[23];
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

module UBInv_24(O, I);
  output [24:24] O;
  input [24:24] I;
  assign O[24] = ~ I[24];
endmodule

module SD2DigitDecom_PN_020(X, Y, I_p, I_n);
  output [24:24] X;
  output [24:24] Y;
  input [24:24] I_p, I_n;
  assign X = ~ I_n[24];
  assign Y = I_p[24];
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

module UBInv_25(O, I);
  output [25:25] O;
  input [25:25] I;
  assign O[25] = ~ I[25];
endmodule

module SD2DigitDecom_PN_021(X, Y, I_p, I_n);
  output [25:25] X;
  output [25:25] Y;
  input [25:25] I_p, I_n;
  assign X = ~ I_n[25];
  assign Y = I_p[25];
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

module UBInv_26(O, I);
  output [26:26] O;
  input [26:26] I;
  assign O[26] = ~ I[26];
endmodule

module SD2_PN_A_Zero_29_000(O_p, O_n);
  output [29:28] O_p, O_n;
  assign O_p[28] = 0;
  assign O_n[28] = 0;
  assign O_p[29] = 0;
  assign O_n[29] = 0;
endmodule

module SD2_PN_A1DCON_28(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_29(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_26(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A1DCON_27(O_p, O_n, I_p, I_n);
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

module SD2DigitDecom_PN_022(X, Y, I_p, I_n);
  output [26:26] X;
  output [26:26] Y;
  input [26:26] I_p, I_n;
  assign X = ~ I_n[26];
  assign Y = I_p[26];
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

module UBInv_27(O, I);
  output [27:27] O;
  input [27:27] I;
  assign O[27] = ~ I[27];
endmodule

module SD2DigitDecom_PN_023(X, Y, I_p, I_n);
  output [27:27] X;
  output [27:27] Y;
  input [27:27] I_p, I_n;
  assign X = ~ I_n[27];
  assign Y = I_p[27];
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

module UBInv_28(O, I);
  output [28:28] O;
  input [28:28] I;
  assign O[28] = ~ I[28];
endmodule

module SD2DigitDecom_PN_024(X, Y, I_p, I_n);
  output [28:28] X;
  output [28:28] Y;
  input [28:28] I_p, I_n;
  assign X = ~ I_n[28];
  assign Y = I_p[28];
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

module UBInv_29(O, I);
  output [29:29] O;
  input [29:29] I;
  assign O[29] = ~ I[29];
endmodule

module SD2DigitDecom_PN_025(X, Y, I_p, I_n);
  output [29:29] X;
  output [29:29] Y;
  input [29:29] I_p, I_n;
  assign X = ~ I_n[29];
  assign Y = I_p[29];
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

module UBInv_30(O, I);
  output [30:30] O;
  input [30:30] I;
  assign O[30] = ~ I[30];
endmodule

module SD2DigitCom_30(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A_Zero_30_000(O_p, O_n);
  output [30:27] O_p, O_n;
  assign O_p[27] = 0;
  assign O_n[27] = 0;
  assign O_p[28] = 0;
  assign O_n[28] = 0;
  assign O_p[29] = 0;
  assign O_n[29] = 0;
  assign O_p[30] = 0;
  assign O_n[30] = 0;
endmodule

module SD2_PN_A1DCON_30(O_p, O_n, I_p, I_n);
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

module SD2DigitDecom_PN_026(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_027(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_028(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_029(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_030(X, Y, I_p, I_n);
  output [30:30] X;
  output [30:30] Y;
  input [30:30] I_p, I_n;
  assign X = ~ I_n[30];
  assign Y = I_p[30];
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

module UBInv_31(O, I);
  output [31:31] O;
  input [31:31] I;
  assign O[31] = ~ I[31];
endmodule

module SD2DigitCom_31(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitDecom_PN_031(X, Y, I_p, I_n);
  output [31:31] X;
  output [31:31] Y;
  input [31:31] I_p, I_n;
  assign X = ~ I_n[31];
  assign Y = I_p[31];
endmodule

module UBOne_0(O);
  output O;
  assign O = 1;
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

module PriMRCLA_31_0(S, X, Y, Cin);
  output [32:0] S;
  input Cin;
  input [31:0] X;
  input [31:0] Y;
  wire [7:0] C1;
  wire [1:0] C2;
  wire [7:0] G1;
  wire [1:0] G2;
  wire [7:0] P1;
  wire [1:0] P2;
  assign C1[0] = C2[0];
  assign C1[4] = C2[1];
  assign C2[0] = Cin;
  assign C2[1] = G2[0] | ( P2[0] & C2[0] );
  assign S[32] = G2[1] | ( P2[1] & C2[1] );
  RCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  RCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
  RCLAlU_4 U2 (G1[2], P1[2], S[11:8], X[11:8], Y[11:8], C1[2]);
  RCLAlU_4 U3 (G1[3], P1[3], S[15:12], X[15:12], Y[15:12], C1[3]);
  RCLAlU_4 U4 (G1[4], P1[4], S[19:16], X[19:16], Y[19:16], C1[4]);
  RCLAlU_4 U5 (G1[5], P1[5], S[23:20], X[23:20], Y[23:20], C1[5]);
  RCLAlU_4 U6 (G1[6], P1[6], S[27:24], X[27:24], Y[27:24], C1[6]);
  RCLAlU_4 U7 (G1[7], P1[7], S[31:28], X[31:28], Y[31:28], C1[7]);
  RCLAU_4 U8 (G2[0], P2[0], C1[3:1], G1[3:0], P1[3:0], C2[0]);
  RCLAU_4 U9 (G2[1], P2[1], C1[7:5], G1[7:4], P1[7:4], C2[1]);
endmodule

module UBInv_32(O, I);
  output [32:32] O;
  input [32:32] I;
  assign O[32] = ~ I[32];
endmodule

module TCCom_32_0(O, I1, I2);
  output [32:0] O;
  input [32:32] I1;
  input [31:0] I2;
  assign O[32] = I1;
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
  assign O[23] = I2[23];
  assign O[24] = I2[24];
  assign O[25] = I2[25];
  assign O[26] = I2[26];
  assign O[27] = I2[27];
  assign O[28] = I2[28];
  assign O[29] = I2[29];
  assign O[30] = I2[30];
  assign O[31] = I2[31];
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
  MultUB_R4B_SD2RBT000 U0 (W, IN1, IN2);
endmodule

module MultUB_R4B_SD2RBT000 (P, IN1, IN2);
  output [32:0] P;
  input [13:0] IN1;
  input [13:0] IN2;
  wire [17:0] PP0__dp, PP0__dn;
  wire [21:4] PP1__dp, PP1__dn;
  wire [25:8] PP2__dp, PP2__dn;
  wire [29:12] PP3__dp, PP3__dn;
  wire [27:0] PP4__dp, PP4__dn;
  wire [31:0] Z__dp, Z__dn;
  UBSR4BPPG_13_0_13000 U0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, IN1, IN2);
  SD2RBTR_17_0_21_4000 U1 (Z__dp[31:0], Z__dn[31:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2TCConv_RCL_31_000 U2 (P, Z__dp, Z__dn);
endmodule

module NUBCMBIN_17_17_16000 (O, IN0, IN1, IN2);
  output [17:0] O;
  input IN0;
  input [16:2] IN1;
  input [1:0] IN2;
  NUB1DCON_17 U0 (O[17], IN0);
  NUBCON_16_2 U1 (O[16:2], IN1);
  NUBCON_1_0 U2 (O[1:0], IN2);
endmodule

module NUBCMBIN_21_21_20000 (O, IN0, IN1, IN2);
  output [21:4] O;
  input IN0;
  input [20:6] IN1;
  input [5:4] IN2;
  NUB1DCON_21 U0 (O[21], IN0);
  NUBCON_20_6 U1 (O[20:6], IN1);
  NUBCON_5_4 U2 (O[5:4], IN2);
endmodule

module NUBCMBIN_25_25_24000 (O, IN0, IN1, IN2);
  output [25:8] O;
  input IN0;
  input [24:10] IN1;
  input [9:8] IN2;
  NUB1DCON_25 U0 (O[25], IN0);
  NUBCON_24_10 U1 (O[24:10], IN1);
  NUBCON_9_8 U2 (O[9:8], IN2);
endmodule

module NUBCMBIN_27_27_23000 (O, IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7);
  output [27:2] O;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  input IN4;
  input IN5;
  input IN6;
  input IN7;
  NUB1DCON_27 U0 (O[27], IN0);
  NUBZero_26_24 U1 (O[26:24]);
  NUB1DCON_23 U2 (O[23], IN1);
  NUBZero_22_20 U3 (O[22:20]);
  NUB1DCON_19 U4 (O[19], IN2);
  NUBZero_18_16 U5 (O[18:16]);
  NUB1DCON_15 U6 (O[15], IN3);
  NUB1DCON_14 U7 (O[14], IN4);
  NUBZero_13_11 U8 (O[13:11]);
  NUB1DCON_10 U9 (O[10], IN5);
  NUBZero_9_7 U10 (O[9:7]);
  NUB1DCON_6 U11 (O[6], IN6);
  NUBZero_5_3 U12 (O[5:3]);
  NUB1DCON_2 U13 (O[2], IN7);
endmodule

module NUBCMBIN_27_2_1_0 (O, IN0, IN1);
  output [27:0] O;
  input [27:2] IN0;
  input [1:0] IN1;
  NUBCON_27_2 U0 (O[27:2], IN0);
  NUBCON_1_0 U1 (O[1:0], IN1);
endmodule

module NUBCMBIN_29_29_28000 (O, IN0, IN1, IN2);
  output [29:12] O;
  input IN0;
  input [28:14] IN1;
  input [13:12] IN2;
  NUB1DCON_29 U0 (O[29], IN0);
  NUBCON_28_14 U1 (O[28:14], IN1);
  NUBCON_13_12 U2 (O[13:12], IN2);
endmodule

module NUBCON_13_12 (O, I);
  output [13:12] O;
  input [13:12] I;
  NUB1DCON_12 U0 (O[12], I[12]);
  NUB1DCON_13 U1 (O[13], I[13]);
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

module NUBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  NUB1DCON_0 U0 (O[0], I[0]);
  NUB1DCON_1 U1 (O[1], I[1]);
endmodule

module NUBCON_20_6 (O, I);
  output [20:6] O;
  input [20:6] I;
  NUB1DCON_6 U0 (O[6], I[6]);
  NUB1DCON_7 U1 (O[7], I[7]);
  NUB1DCON_8 U2 (O[8], I[8]);
  NUB1DCON_9 U3 (O[9], I[9]);
  NUB1DCON_10 U4 (O[10], I[10]);
  NUB1DCON_11 U5 (O[11], I[11]);
  NUB1DCON_12 U6 (O[12], I[12]);
  NUB1DCON_13 U7 (O[13], I[13]);
  NUB1DCON_14 U8 (O[14], I[14]);
  NUB1DCON_15 U9 (O[15], I[15]);
  NUB1DCON_16 U10 (O[16], I[16]);
  NUB1DCON_17 U11 (O[17], I[17]);
  NUB1DCON_18 U12 (O[18], I[18]);
  NUB1DCON_19 U13 (O[19], I[19]);
  NUB1DCON_20 U14 (O[20], I[20]);
endmodule

module NUBCON_24_10 (O, I);
  output [24:10] O;
  input [24:10] I;
  NUB1DCON_10 U0 (O[10], I[10]);
  NUB1DCON_11 U1 (O[11], I[11]);
  NUB1DCON_12 U2 (O[12], I[12]);
  NUB1DCON_13 U3 (O[13], I[13]);
  NUB1DCON_14 U4 (O[14], I[14]);
  NUB1DCON_15 U5 (O[15], I[15]);
  NUB1DCON_16 U6 (O[16], I[16]);
  NUB1DCON_17 U7 (O[17], I[17]);
  NUB1DCON_18 U8 (O[18], I[18]);
  NUB1DCON_19 U9 (O[19], I[19]);
  NUB1DCON_20 U10 (O[20], I[20]);
  NUB1DCON_21 U11 (O[21], I[21]);
  NUB1DCON_22 U12 (O[22], I[22]);
  NUB1DCON_23 U13 (O[23], I[23]);
  NUB1DCON_24 U14 (O[24], I[24]);
endmodule

module NUBCON_27_2 (O, I);
  output [27:2] O;
  input [27:2] I;
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
  NUB1DCON_17 U15 (O[17], I[17]);
  NUB1DCON_18 U16 (O[18], I[18]);
  NUB1DCON_19 U17 (O[19], I[19]);
  NUB1DCON_20 U18 (O[20], I[20]);
  NUB1DCON_21 U19 (O[21], I[21]);
  NUB1DCON_22 U20 (O[22], I[22]);
  NUB1DCON_23 U21 (O[23], I[23]);
  NUB1DCON_24 U22 (O[24], I[24]);
  NUB1DCON_25 U23 (O[25], I[25]);
  NUB1DCON_26 U24 (O[26], I[26]);
  NUB1DCON_27 U25 (O[27], I[27]);
endmodule

module NUBCON_28_14 (O, I);
  output [28:14] O;
  input [28:14] I;
  NUB1DCON_14 U0 (O[14], I[14]);
  NUB1DCON_15 U1 (O[15], I[15]);
  NUB1DCON_16 U2 (O[16], I[16]);
  NUB1DCON_17 U3 (O[17], I[17]);
  NUB1DCON_18 U4 (O[18], I[18]);
  NUB1DCON_19 U5 (O[19], I[19]);
  NUB1DCON_20 U6 (O[20], I[20]);
  NUB1DCON_21 U7 (O[21], I[21]);
  NUB1DCON_22 U8 (O[22], I[22]);
  NUB1DCON_23 U9 (O[23], I[23]);
  NUB1DCON_24 U10 (O[24], I[24]);
  NUB1DCON_25 U11 (O[25], I[25]);
  NUB1DCON_26 U12 (O[26], I[26]);
  NUB1DCON_27 U13 (O[27], I[27]);
  NUB1DCON_28 U14 (O[28], I[28]);
endmodule

module NUBCON_5_4 (O, I);
  output [5:4] O;
  input [5:4] I;
  NUB1DCON_4 U0 (O[4], I[4]);
  NUB1DCON_5 U1 (O[5], I[5]);
endmodule

module NUBCON_9_8 (O, I);
  output [9:8] O;
  input [9:8] I;
  NUB1DCON_8 U0 (O[8], I[8]);
  NUB1DCON_9 U1 (O[9], I[9]);
endmodule

module SD2Decom_PN_31_0 (X, Y, I__dp, I__dn);
  output [31:0] X;
  output [31:0] Y;
  input [31:0] I__dp, I__dn;
  SD2DigitDecom_PN_026 U0 (X[0], Y[0], I__dp[0], I__dn[0]);
  SD2DigitDecom_PN_027 U1 (X[1], Y[1], I__dp[1], I__dn[1]);
  SD2DigitDecom_PN_028 U2 (X[2], Y[2], I__dp[2], I__dn[2]);
  SD2DigitDecom_PN_029 U3 (X[3], Y[3], I__dp[3], I__dn[3]);
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
  SD2DigitDecom_PN_017 U21 (X[21], Y[21], I__dp[21], I__dn[21]);
  SD2DigitDecom_PN_018 U22 (X[22], Y[22], I__dp[22], I__dn[22]);
  SD2DigitDecom_PN_019 U23 (X[23], Y[23], I__dp[23], I__dn[23]);
  SD2DigitDecom_PN_020 U24 (X[24], Y[24], I__dp[24], I__dn[24]);
  SD2DigitDecom_PN_021 U25 (X[25], Y[25], I__dp[25], I__dn[25]);
  SD2DigitDecom_PN_022 U26 (X[26], Y[26], I__dp[26], I__dn[26]);
  SD2DigitDecom_PN_023 U27 (X[27], Y[27], I__dp[27], I__dn[27]);
  SD2DigitDecom_PN_024 U28 (X[28], Y[28], I__dp[28], I__dn[28]);
  SD2DigitDecom_PN_025 U29 (X[29], Y[29], I__dp[29], I__dn[29]);
  SD2DigitDecom_PN_030 U30 (X[30], Y[30], I__dp[30], I__dn[30]);
  SD2DigitDecom_PN_031 U31 (X[31], Y[31], I__dp[31], I__dn[31]);
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
  SD2DigitDecom_PN_026 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_026 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_027 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_027 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_028 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_028 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_017 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_017 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_21 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_21 U3 (C2, S2, C1i, S1, Yp);
  UBInv_22 U4 (C2o, C2);
  SD2DigitCom_21 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_22 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  UBFA_22 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_22 U3 (C2, S2, C1i, S1, Yp);
  UBInv_23 U4 (C2o, C2);
  SD2DigitCom_22 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_23 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  UBFA_23 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_23 U3 (C2, S2, C1i, S1, Yp);
  UBInv_24 U4 (C2o, C2);
  SD2DigitCom_23 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_24 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  UBFA_24 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_24 U3 (C2, S2, C1i, S1, Yp);
  UBInv_25 U4 (C2o, C2);
  SD2DigitCom_24 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_25 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  UBFA_25 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_25 U3 (C2, S2, C1i, S1, Yp);
  UBInv_26 U4 (C2o, C2);
  SD2DigitCom_25 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_26 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  SD2DigitDecom_PN_022 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_022 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_26 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_26 U3 (C2, S2, C1i, S1, Yp);
  UBInv_27 U4 (C2o, C2);
  SD2DigitCom_26 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_27 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  SD2DigitDecom_PN_023 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_023 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_27 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_27 U3 (C2, S2, C1i, S1, Yp);
  UBInv_28 U4 (C2o, C2);
  SD2DigitCom_27 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_28 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  SD2DigitDecom_PN_024 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_024 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_28 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_28 U3 (C2, S2, C1i, S1, Yp);
  UBInv_29 U4 (C2o, C2);
  SD2DigitCom_28 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_29 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  SD2DigitDecom_PN_025 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_025 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_29 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_29 U3 (C2, S2, C1i, S1, Yp);
  UBInv_30 U4 (C2o, C2);
  SD2DigitCom_29 U5 (Z__dp, Z__dn, C2i, S2);
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
  SD2DigitDecom_PN_029 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_029 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_3 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_3 U3 (C2, S2, C1i, S1, Yp);
  UBInv_4 U4 (C2o, C2);
  SD2DigitCom_3 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2DigitRBA_30 (Z__dp, Z__dn, C1o, C2o, X__dp, X__dn, Y__dp, Y__dn, C1i, C2i);
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
  SD2DigitDecom_PN_030 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_030 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_30 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_30 U3 (C2, S2, C1i, S1, Yp);
  UBInv_31 U4 (C2o, C2);
  SD2DigitCom_30 U5 (Z__dp, Z__dn, C2i, S2);
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

module SD2PureRBA_21_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [22:4] Z__dp, Z__dn;
  input [21:4] X__dp, X__dn;
  input [21:4] Y__dp, Y__dn;
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
  wire C1_20;
  wire C1_21;
  wire C1_22;
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
  wire C2_16;
  wire C2_17;
  wire C2_18;
  wire C2_19;
  wire C2_20;
  wire C2_21;
  wire C2_22;
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
  SD2DigitRBA_15 U13 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitRBA_16 U14 (Z__dp[16], Z__dn[16], C1_17, C2_17, X__dp[16], X__dn[16], Y__dp[16], Y__dn[16], C1_16, C2_16);
  SD2DigitRBA_17 U15 (Z__dp[17], Z__dn[17], C1_18, C2_18, X__dp[17], X__dn[17], Y__dp[17], Y__dn[17], C1_17, C2_17);
  SD2DigitRBA_18 U16 (Z__dp[18], Z__dn[18], C1_19, C2_19, X__dp[18], X__dn[18], Y__dp[18], Y__dn[18], C1_18, C2_18);
  SD2DigitRBA_19 U17 (Z__dp[19], Z__dn[19], C1_20, C2_20, X__dp[19], X__dn[19], Y__dp[19], Y__dn[19], C1_19, C2_19);
  SD2DigitRBA_20 U18 (Z__dp[20], Z__dn[20], C1_21, C2_21, X__dp[20], X__dn[20], Y__dp[20], Y__dn[20], C1_20, C2_20);
  SD2DigitRBA_21 U19 (Z__dp[21], Z__dn[21], C1_22, C2_22, X__dp[21], X__dn[21], Y__dp[21], Y__dn[21], C1_21, C2_21);
  SD2DigitCom_22 U20 (Z__dp[22], Z__dn[22], C2_22, C1_22);
endmodule

module SD2PureRBA_25_8 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [26:8] Z__dp, Z__dn;
  input [25:8] X__dp, X__dn;
  input [25:8] Y__dp, Y__dn;
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
  wire C1_20;
  wire C1_21;
  wire C1_22;
  wire C1_23;
  wire C1_24;
  wire C1_25;
  wire C1_26;
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
  wire C2_20;
  wire C2_21;
  wire C2_22;
  wire C2_23;
  wire C2_24;
  wire C2_25;
  wire C2_26;
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
  SD2DigitRBA_19 U13 (Z__dp[19], Z__dn[19], C1_20, C2_20, X__dp[19], X__dn[19], Y__dp[19], Y__dn[19], C1_19, C2_19);
  SD2DigitRBA_20 U14 (Z__dp[20], Z__dn[20], C1_21, C2_21, X__dp[20], X__dn[20], Y__dp[20], Y__dn[20], C1_20, C2_20);
  SD2DigitRBA_21 U15 (Z__dp[21], Z__dn[21], C1_22, C2_22, X__dp[21], X__dn[21], Y__dp[21], Y__dn[21], C1_21, C2_21);
  SD2DigitRBA_22 U16 (Z__dp[22], Z__dn[22], C1_23, C2_23, X__dp[22], X__dn[22], Y__dp[22], Y__dn[22], C1_22, C2_22);
  SD2DigitRBA_23 U17 (Z__dp[23], Z__dn[23], C1_24, C2_24, X__dp[23], X__dn[23], Y__dp[23], Y__dn[23], C1_23, C2_23);
  SD2DigitRBA_24 U18 (Z__dp[24], Z__dn[24], C1_25, C2_25, X__dp[24], X__dn[24], Y__dp[24], Y__dn[24], C1_24, C2_24);
  SD2DigitRBA_25 U19 (Z__dp[25], Z__dn[25], C1_26, C2_26, X__dp[25], X__dn[25], Y__dp[25], Y__dn[25], C1_25, C2_25);
  SD2DigitCom_26 U20 (Z__dp[26], Z__dn[26], C2_26, C1_26);
endmodule

module SD2PureRBA_29_12 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [30:12] Z__dp, Z__dn;
  input [29:12] X__dp, X__dn;
  input [29:12] Y__dp, Y__dn;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_17;
  wire C1_18;
  wire C1_19;
  wire C1_20;
  wire C1_21;
  wire C1_22;
  wire C1_23;
  wire C1_24;
  wire C1_25;
  wire C1_26;
  wire C1_27;
  wire C1_28;
  wire C1_29;
  wire C1_30;
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
  wire C2_22;
  wire C2_23;
  wire C2_24;
  wire C2_25;
  wire C2_26;
  wire C2_27;
  wire C2_28;
  wire C2_29;
  wire C2_30;
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
  SD2DigitRBA_21 U11 (Z__dp[21], Z__dn[21], C1_22, C2_22, X__dp[21], X__dn[21], Y__dp[21], Y__dn[21], C1_21, C2_21);
  SD2DigitRBA_22 U12 (Z__dp[22], Z__dn[22], C1_23, C2_23, X__dp[22], X__dn[22], Y__dp[22], Y__dn[22], C1_22, C2_22);
  SD2DigitRBA_23 U13 (Z__dp[23], Z__dn[23], C1_24, C2_24, X__dp[23], X__dn[23], Y__dp[23], Y__dn[23], C1_23, C2_23);
  SD2DigitRBA_24 U14 (Z__dp[24], Z__dn[24], C1_25, C2_25, X__dp[24], X__dn[24], Y__dp[24], Y__dn[24], C1_24, C2_24);
  SD2DigitRBA_25 U15 (Z__dp[25], Z__dn[25], C1_26, C2_26, X__dp[25], X__dn[25], Y__dp[25], Y__dn[25], C1_25, C2_25);
  SD2DigitRBA_26 U16 (Z__dp[26], Z__dn[26], C1_27, C2_27, X__dp[26], X__dn[26], Y__dp[26], Y__dn[26], C1_26, C2_26);
  SD2DigitRBA_27 U17 (Z__dp[27], Z__dn[27], C1_28, C2_28, X__dp[27], X__dn[27], Y__dp[27], Y__dn[27], C1_27, C2_27);
  SD2DigitRBA_28 U18 (Z__dp[28], Z__dn[28], C1_29, C2_29, X__dp[28], X__dn[28], Y__dp[28], Y__dn[28], C1_28, C2_28);
  SD2DigitRBA_29 U19 (Z__dp[29], Z__dn[29], C1_30, C2_30, X__dp[29], X__dn[29], Y__dp[29], Y__dn[29], C1_29, C2_29);
  SD2DigitCom_30 U20 (Z__dp[30], Z__dn[30], C2_30, C1_30);
endmodule

module SD2PureRBA_30_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [31:0] Z__dp, Z__dn;
  input [30:0] X__dp, X__dn;
  input [30:0] Y__dp, Y__dn;
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
  wire C1_23;
  wire C1_24;
  wire C1_25;
  wire C1_26;
  wire C1_27;
  wire C1_28;
  wire C1_29;
  wire C1_3;
  wire C1_30;
  wire C1_31;
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
  wire C2_23;
  wire C2_24;
  wire C2_25;
  wire C2_26;
  wire C2_27;
  wire C2_28;
  wire C2_29;
  wire C2_3;
  wire C2_30;
  wire C2_31;
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
  SD2DigitRBA_22 U24 (Z__dp[22], Z__dn[22], C1_23, C2_23, X__dp[22], X__dn[22], Y__dp[22], Y__dn[22], C1_22, C2_22);
  SD2DigitRBA_23 U25 (Z__dp[23], Z__dn[23], C1_24, C2_24, X__dp[23], X__dn[23], Y__dp[23], Y__dn[23], C1_23, C2_23);
  SD2DigitRBA_24 U26 (Z__dp[24], Z__dn[24], C1_25, C2_25, X__dp[24], X__dn[24], Y__dp[24], Y__dn[24], C1_24, C2_24);
  SD2DigitRBA_25 U27 (Z__dp[25], Z__dn[25], C1_26, C2_26, X__dp[25], X__dn[25], Y__dp[25], Y__dn[25], C1_25, C2_25);
  SD2DigitRBA_26 U28 (Z__dp[26], Z__dn[26], C1_27, C2_27, X__dp[26], X__dn[26], Y__dp[26], Y__dn[26], C1_26, C2_26);
  SD2DigitRBA_27 U29 (Z__dp[27], Z__dn[27], C1_28, C2_28, X__dp[27], X__dn[27], Y__dp[27], Y__dn[27], C1_27, C2_27);
  SD2DigitRBA_28 U30 (Z__dp[28], Z__dn[28], C1_29, C2_29, X__dp[28], X__dn[28], Y__dp[28], Y__dn[28], C1_28, C2_28);
  SD2DigitRBA_29 U31 (Z__dp[29], Z__dn[29], C1_30, C2_30, X__dp[29], X__dn[29], Y__dp[29], Y__dn[29], C1_29, C2_29);
  SD2DigitRBA_30 U32 (Z__dp[30], Z__dn[30], C1_31, C2_31, X__dp[30], X__dn[30], Y__dp[30], Y__dn[30], C1_30, C2_30);
  SD2DigitCom_31 U33 (Z__dp[31], Z__dn[31], C2_31, C1_31);
endmodule

module SD2RBA_17_0_21_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [22:0] Z__dp, Z__dn;
  input [17:0] X__dp, X__dn;
  input [21:4] Y__dp, Y__dn;
  wire [21:0] XX__dp, XX__dn;
  wire [21:18] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_21_000 U0 (Zero__dp[21:18], Zero__dn[21:18]);
  SD2_PN_ACMBIN_21_000 U1 (XX__dp[21:0], XX__dn[21:0], Zero__dp[21:18], Zero__dn[21:18], X__dp[17:0], X__dn[17:0]);
  SD2PureRBA_21_4 U2 (Z__dp[22:4], Z__dn[22:4], XX__dp[21:4], XX__dn[21:4], Y__dp[21:4], Y__dn[21:4]);
  SD2_PN_ACON_3_0 U3 (Z__dp[3:0], Z__dn[3:0], XX__dp[3:0], XX__dn[3:0]);
endmodule

module SD2RBA_22_0_25_8 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [26:0] Z__dp, Z__dn;
  input [22:0] X__dp, X__dn;
  input [25:8] Y__dp, Y__dn;
  wire [25:0] XX__dp, XX__dn;
  wire [25:23] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_25_000 U0 (Zero__dp[25:23], Zero__dn[25:23]);
  SD2_PN_ACMBIN_25_000 U1 (XX__dp[25:0], XX__dn[25:0], Zero__dp[25:23], Zero__dn[25:23], X__dp[22:0], X__dn[22:0]);
  SD2PureRBA_25_8 U2 (Z__dp[26:8], Z__dn[26:8], XX__dp[25:8], XX__dn[25:8], Y__dp[25:8], Y__dn[25:8]);
  SD2_PN_ACON_7_0 U3 (Z__dp[7:0], Z__dn[7:0], XX__dp[7:0], XX__dn[7:0]);
endmodule

module SD2RBA_26_0_30_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [31:0] Z__dp, Z__dn;
  input [26:0] X__dp, X__dn;
  input [30:0] Y__dp, Y__dn;
  wire [30:0] XX__dp, XX__dn;
  wire [30:27] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_30_000 U0 (Zero__dp[30:27], Zero__dn[30:27]);
  SD2_PN_ACMBIN_30_000 U1 (XX__dp[30:0], XX__dn[30:0], Zero__dp[30:27], Zero__dn[30:27], X__dp[26:0], X__dn[26:0]);
  SD2PureRBA_30_0 U2 (Z__dp[31:0], Z__dn[31:0], XX__dp[30:0], XX__dn[30:0], Y__dp[30:0], Y__dn[30:0]);
endmodule

module SD2RBA_29_12_27_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [30:0] Z__dp, Z__dn;
  input [29:12] X__dp, X__dn;
  input [27:0] Y__dp, Y__dn;
  wire [29:0] YY__dp, YY__dn;
  wire [29:28] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_29_000 U0 (Zero__dp[29:28], Zero__dn[29:28]);
  SD2_PN_ACMBIN_29_000 U1 (YY__dp[29:0], YY__dn[29:0], Zero__dp[29:28], Zero__dn[29:28], Y__dp[27:0], Y__dn[27:0]);
  SD2PureRBA_29_12 U2 (Z__dp[30:12], Z__dn[30:12], X__dp[29:12], X__dn[29:12], YY__dp[29:12], YY__dn[29:12]);
  SD2_PN_ACON_11_0 U3 (Z__dp[11:0], Z__dn[11:0], YY__dp[11:0], YY__dn[11:0]);
endmodule

module SD2RBTR_17_0_21_4000 (Z__dp, Z__dn, PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  output [31:0] Z__dp, Z__dn;
  input [17:0] PP0__dp, PP0__dn;
  input [21:4] PP1__dp, PP1__dn;
  input [25:8] PP2__dp, PP2__dn;
  input [29:12] PP3__dp, PP3__dn;
  input [27:0] PP4__dp, PP4__dn;
  wire [22:0] W1_0__dp, W1_0__dn;
  wire [26:0] W2_1__dp, W2_1__dn;
  wire [30:0] W2_2__dp, W2_2__dn;
  SD2RBA_17_0_21_4 U0 (W1_0__dp[22:0], W1_0__dn[22:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn);
  SD2RBA_22_0_25_8 U1 (W2_1__dp[26:0], W2_1__dn[26:0], W1_0__dp[22:0], W1_0__dn[22:0], PP2__dp, PP2__dn);
  SD2RBA_29_12_27_0 U2 (W2_2__dp[30:0], W2_2__dn[30:0], PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2RBA_26_0_30_0 U3 (Z__dp[31:0], Z__dn[31:0], W2_1__dp[26:0], W2_1__dn[26:0], W2_2__dp[30:0], W2_2__dn[30:0]);
endmodule

module SD2TCConv_RCL_31_000 (O, I__dp, I__dn);
  output [32:0] O;
  input [31:0] I__dp, I__dn;
  wire C;
  wire [32:0] S;
  wire [31:0] X;
  wire [31:0] Y;
  wire Z;
  SD2Decom_PN_31_0 U0 (X, Y, I__dp, I__dn);
  UBOne_0 U1 (C);
  PriMRCLA_31_0 U2 (S, X, Y, C);
  UBInv_32 U3 (Z, S[32]);
  TCCom_32_0 U4 (O, Z, S[31:0]);
endmodule

module SD2_PN_ACMBIN_21_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [21:0] O__dp, O__dn;
  input [21:18] IN0__dp, IN0__dn;
  input [17:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_21_18 U0 (O__dp[21:18], O__dn[21:18], IN0__dp, IN0__dn);
  SD2_PN_ACON_17_0 U1 (O__dp[17:0], O__dn[17:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_25_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [25:0] O__dp, O__dn;
  input [25:23] IN0__dp, IN0__dn;
  input [22:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_25_23 U0 (O__dp[25:23], O__dn[25:23], IN0__dp, IN0__dn);
  SD2_PN_ACON_22_0 U1 (O__dp[22:0], O__dn[22:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_29_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [29:0] O__dp, O__dn;
  input [29:28] IN0__dp, IN0__dn;
  input [27:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_29_28 U0 (O__dp[29:28], O__dn[29:28], IN0__dp, IN0__dn);
  SD2_PN_ACON_27_0 U1 (O__dp[27:0], O__dn[27:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_30_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [30:0] O__dp, O__dn;
  input [30:27] IN0__dp, IN0__dn;
  input [26:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_30_27 U0 (O__dp[30:27], O__dn[30:27], IN0__dp, IN0__dn);
  SD2_PN_ACON_26_0 U1 (O__dp[26:0], O__dn[26:0], IN1__dp, IN1__dn);
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

module SD2_PN_ACON_17_0 (O__dp, O__dn, I__dp, I__dn);
  output [17:0] O__dp, O__dn;
  input [17:0] I__dp, I__dn;
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
endmodule

module SD2_PN_ACON_21_18 (O__dp, O__dn, I__dp, I__dn);
  output [21:18] O__dp, O__dn;
  input [21:18] I__dp, I__dn;
  SD2_PN_A1DCON_18 U0 (O__dp[18], O__dn[18], I__dp[18], I__dn[18]);
  SD2_PN_A1DCON_19 U1 (O__dp[19], O__dn[19], I__dp[19], I__dn[19]);
  SD2_PN_A1DCON_20 U2 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
  SD2_PN_A1DCON_21 U3 (O__dp[21], O__dn[21], I__dp[21], I__dn[21]);
endmodule

module SD2_PN_ACON_22_0 (O__dp, O__dn, I__dp, I__dn);
  output [22:0] O__dp, O__dn;
  input [22:0] I__dp, I__dn;
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
  SD2_PN_A1DCON_20 U20 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
  SD2_PN_A1DCON_21 U21 (O__dp[21], O__dn[21], I__dp[21], I__dn[21]);
  SD2_PN_A1DCON_22 U22 (O__dp[22], O__dn[22], I__dp[22], I__dn[22]);
endmodule

module SD2_PN_ACON_25_23 (O__dp, O__dn, I__dp, I__dn);
  output [25:23] O__dp, O__dn;
  input [25:23] I__dp, I__dn;
  SD2_PN_A1DCON_23 U0 (O__dp[23], O__dn[23], I__dp[23], I__dn[23]);
  SD2_PN_A1DCON_24 U1 (O__dp[24], O__dn[24], I__dp[24], I__dn[24]);
  SD2_PN_A1DCON_25 U2 (O__dp[25], O__dn[25], I__dp[25], I__dn[25]);
endmodule

module SD2_PN_ACON_26_0 (O__dp, O__dn, I__dp, I__dn);
  output [26:0] O__dp, O__dn;
  input [26:0] I__dp, I__dn;
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
  SD2_PN_A1DCON_20 U20 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
  SD2_PN_A1DCON_21 U21 (O__dp[21], O__dn[21], I__dp[21], I__dn[21]);
  SD2_PN_A1DCON_22 U22 (O__dp[22], O__dn[22], I__dp[22], I__dn[22]);
  SD2_PN_A1DCON_23 U23 (O__dp[23], O__dn[23], I__dp[23], I__dn[23]);
  SD2_PN_A1DCON_24 U24 (O__dp[24], O__dn[24], I__dp[24], I__dn[24]);
  SD2_PN_A1DCON_25 U25 (O__dp[25], O__dn[25], I__dp[25], I__dn[25]);
  SD2_PN_A1DCON_26 U26 (O__dp[26], O__dn[26], I__dp[26], I__dn[26]);
endmodule

module SD2_PN_ACON_27_0 (O__dp, O__dn, I__dp, I__dn);
  output [27:0] O__dp, O__dn;
  input [27:0] I__dp, I__dn;
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
  SD2_PN_A1DCON_20 U20 (O__dp[20], O__dn[20], I__dp[20], I__dn[20]);
  SD2_PN_A1DCON_21 U21 (O__dp[21], O__dn[21], I__dp[21], I__dn[21]);
  SD2_PN_A1DCON_22 U22 (O__dp[22], O__dn[22], I__dp[22], I__dn[22]);
  SD2_PN_A1DCON_23 U23 (O__dp[23], O__dn[23], I__dp[23], I__dn[23]);
  SD2_PN_A1DCON_24 U24 (O__dp[24], O__dn[24], I__dp[24], I__dn[24]);
  SD2_PN_A1DCON_25 U25 (O__dp[25], O__dn[25], I__dp[25], I__dn[25]);
  SD2_PN_A1DCON_26 U26 (O__dp[26], O__dn[26], I__dp[26], I__dn[26]);
  SD2_PN_A1DCON_27 U27 (O__dp[27], O__dn[27], I__dp[27], I__dn[27]);
endmodule

module SD2_PN_ACON_29_28 (O__dp, O__dn, I__dp, I__dn);
  output [29:28] O__dp, O__dn;
  input [29:28] I__dp, I__dn;
  SD2_PN_A1DCON_28 U0 (O__dp[28], O__dn[28], I__dp[28], I__dn[28]);
  SD2_PN_A1DCON_29 U1 (O__dp[29], O__dn[29], I__dp[29], I__dn[29]);
endmodule

module SD2_PN_ACON_30_27 (O__dp, O__dn, I__dp, I__dn);
  output [30:27] O__dp, O__dn;
  input [30:27] I__dp, I__dn;
  SD2_PN_A1DCON_27 U0 (O__dp[27], O__dn[27], I__dp[27], I__dn[27]);
  SD2_PN_A1DCON_28 U1 (O__dp[28], O__dn[28], I__dp[28], I__dn[28]);
  SD2_PN_A1DCON_29 U2 (O__dp[29], O__dn[29], I__dp[29], I__dn[29]);
  SD2_PN_A1DCON_30 U3 (O__dp[30], O__dn[30], I__dp[30], I__dn[30]);
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

module UBCMBIN_12_12_8_8000 (O, IN0, IN1, IN2, IN3);
  output [12:0] O;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  UB1DCON_12 U0 (O[12], IN0);
  UBZero_11_9 U1 (O[11:9]);
  UB1DCON_8 U2 (O[8], IN1);
  UBZero_7_5 U3 (O[7:5]);
  UB1DCON_4 U4 (O[4], IN2);
  UBZero_3_1 U5 (O[3:1]);
  UB1DCON_0 U6 (O[0], IN3);
endmodule

module UBCMBIN_17_17_14_000 (O, IN0, IN1);
  output [17:0] O;
  input IN0;
  input [14:0] IN1;
  UB1DCON_17 U0 (O[17], IN0);
  UBZero_16_15 U1 (O[16:15]);
  UBCON_14_0 U2 (O[14:0], IN1);
endmodule

module UBCMBIN_21_21_18_000 (O, IN0, IN1);
  output [21:4] O;
  input IN0;
  input [18:4] IN1;
  UB1DCON_21 U0 (O[21], IN0);
  UBZero_20_19 U1 (O[20:19]);
  UBCON_18_4 U2 (O[18:4], IN1);
endmodule

module UBCMBIN_25_25_22_000 (O, IN0, IN1);
  output [25:8] O;
  input IN0;
  input [22:8] IN1;
  UB1DCON_25 U0 (O[25], IN0);
  UBZero_24_23 U1 (O[24:23]);
  UBCON_22_8 U2 (O[22:8], IN1);
endmodule

module UBCMBIN_27_13_12_000 (O, IN0, IN1);
  output [27:0] O;
  input [27:13] IN0;
  input [12:0] IN1;
  UBCON_27_13 U0 (O[27:13], IN0);
  UBCON_12_0 U1 (O[12:0], IN1);
endmodule

module UBCMBIN_29_29_26_000 (O, IN0, IN1);
  output [29:12] O;
  input IN0;
  input [26:12] IN1;
  UB1DCON_29 U0 (O[29], IN0);
  UBZero_28_27 U1 (O[28:27]);
  UBCON_26_12 U2 (O[26:12], IN1);
endmodule

module UBCON_12_0 (O, I);
  output [12:0] O;
  input [12:0] I;
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
endmodule

module UBCON_14_0 (O, I);
  output [14:0] O;
  input [14:0] I;
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
endmodule

module UBCON_18_4 (O, I);
  output [18:4] O;
  input [18:4] I;
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
endmodule

module UBCON_22_8 (O, I);
  output [22:8] O;
  input [22:8] I;
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
endmodule

module UBCON_26_12 (O, I);
  output [26:12] O;
  input [26:12] I;
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
endmodule

module UBCON_27_13 (O, I);
  output [27:13] O;
  input [27:13] I;
  UB1DCON_13 U0 (O[13], I[13]);
  UB1DCON_14 U1 (O[14], I[14]);
  UB1DCON_15 U2 (O[15], I[15]);
  UB1DCON_16 U3 (O[16], I[16]);
  UB1DCON_17 U4 (O[17], I[17]);
  UB1DCON_18 U5 (O[18], I[18]);
  UB1DCON_19 U6 (O[19], I[19]);
  UB1DCON_20 U7 (O[20], I[20]);
  UB1DCON_21 U8 (O[21], I[21]);
  UB1DCON_22 U9 (O[22], I[22]);
  UB1DCON_23 U10 (O[23], I[23]);
  UB1DCON_24 U11 (O[24], I[24]);
  UB1DCON_25 U12 (O[25], I[25]);
  UB1DCON_26 U13 (O[26], I[26]);
  UB1DCON_27 U14 (O[27], I[27]);
endmodule

module UBMinusVPPG_13_0_000 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [16:2] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [16:2] W;
  SD41DDECON_1 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_1 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_16_2 U2 (PP, W, S);
  NUBBBG_2 U3 (C, S);
  UBHBBG_17 U4 (P, S);
endmodule

module UBMinusVPPG_13_0_001 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [20:6] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [20:6] W;
  SD41DDECON_3 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_3 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_20_6 U2 (PP, W, S);
  NUBBBG_6 U3 (C, S);
  UBHBBG_21 U4 (P, S);
endmodule

module UBMinusVPPG_13_0_002 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [24:10] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [24:10] W;
  SD41DDECON_5 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_5 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_24_10 U2 (PP, W, S);
  NUBBBG_10 U3 (C, S);
  UBHBBG_25 U4 (P, S);
endmodule

module UBMinusVPPG_13_0_003 (P, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output P;
  output [28:14] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [28:14] W;
  SD41DDECON_7 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_7 U1 (W, I1, U__d1, U__d0);
  UBNUBWCON_28_14 U2 (PP, W, S);
  NUBBBG_14 U3 (C, S);
  UBHBBG_29 U4 (P, S);
endmodule

module UBNUBWCON_16_2 (O, I, S);
  output [16:2] O;
  input [16:2] I;
  input S;
  BWCPN_2 U0 (O[2], I[2], S);
  BWCPN_3 U1 (O[3], I[3], S);
  BWCPN_4 U2 (O[4], I[4], S);
  BWCPN_5 U3 (O[5], I[5], S);
  BWCPN_6 U4 (O[6], I[6], S);
  BWCPN_7 U5 (O[7], I[7], S);
  BWCPN_8 U6 (O[8], I[8], S);
  BWCPN_9 U7 (O[9], I[9], S);
  BWCPN_10 U8 (O[10], I[10], S);
  BWCPN_11 U9 (O[11], I[11], S);
  BWCPN_12 U10 (O[12], I[12], S);
  BWCPN_13 U11 (O[13], I[13], S);
  BWCPN_14 U12 (O[14], I[14], S);
  BWCPN_15 U13 (O[15], I[15], S);
  BWCPN_16 U14 (O[16], I[16], S);
endmodule

module UBNUBWCON_20_6 (O, I, S);
  output [20:6] O;
  input [20:6] I;
  input S;
  BWCPN_6 U0 (O[6], I[6], S);
  BWCPN_7 U1 (O[7], I[7], S);
  BWCPN_8 U2 (O[8], I[8], S);
  BWCPN_9 U3 (O[9], I[9], S);
  BWCPN_10 U4 (O[10], I[10], S);
  BWCPN_11 U5 (O[11], I[11], S);
  BWCPN_12 U6 (O[12], I[12], S);
  BWCPN_13 U7 (O[13], I[13], S);
  BWCPN_14 U8 (O[14], I[14], S);
  BWCPN_15 U9 (O[15], I[15], S);
  BWCPN_16 U10 (O[16], I[16], S);
  BWCPN_17 U11 (O[17], I[17], S);
  BWCPN_18 U12 (O[18], I[18], S);
  BWCPN_19 U13 (O[19], I[19], S);
  BWCPN_20 U14 (O[20], I[20], S);
endmodule

module UBNUBWCON_24_10 (O, I, S);
  output [24:10] O;
  input [24:10] I;
  input S;
  BWCPN_10 U0 (O[10], I[10], S);
  BWCPN_11 U1 (O[11], I[11], S);
  BWCPN_12 U2 (O[12], I[12], S);
  BWCPN_13 U3 (O[13], I[13], S);
  BWCPN_14 U4 (O[14], I[14], S);
  BWCPN_15 U5 (O[15], I[15], S);
  BWCPN_16 U6 (O[16], I[16], S);
  BWCPN_17 U7 (O[17], I[17], S);
  BWCPN_18 U8 (O[18], I[18], S);
  BWCPN_19 U9 (O[19], I[19], S);
  BWCPN_20 U10 (O[20], I[20], S);
  BWCPN_21 U11 (O[21], I[21], S);
  BWCPN_22 U12 (O[22], I[22], S);
  BWCPN_23 U13 (O[23], I[23], S);
  BWCPN_24 U14 (O[24], I[24], S);
endmodule

module UBNUBWCON_28_14 (O, I, S);
  output [28:14] O;
  input [28:14] I;
  input S;
  BWCPN_14 U0 (O[14], I[14], S);
  BWCPN_15 U1 (O[15], I[15], S);
  BWCPN_16 U2 (O[16], I[16], S);
  BWCPN_17 U3 (O[17], I[17], S);
  BWCPN_18 U4 (O[18], I[18], S);
  BWCPN_19 U5 (O[19], I[19], S);
  BWCPN_20 U6 (O[20], I[20], S);
  BWCPN_21 U7 (O[21], I[21], S);
  BWCPN_22 U8 (O[22], I[22], S);
  BWCPN_23 U9 (O[23], I[23], S);
  BWCPN_24 U10 (O[24], I[24], S);
  BWCPN_25 U11 (O[25], I[25], S);
  BWCPN_26 U12 (O[26], I[26], S);
  BWCPN_27 U13 (O[27], I[27], S);
  BWCPN_28 U14 (O[28], I[28], S);
endmodule

module UBNUB_SD2Comp_12_000 (O__dp, O__dn, I_p, I_n);
  output [27:0] O__dp, O__dn;
  input [27:2] I_n;
  input [12:0] I_p;
  wire [27:0] N;
  wire [27:0] P;
  wire [27:13] Z_h;
  wire [1:0] Z_l;
  UBZero_27_13 U0 (Z_h);
  NUBZero_1_0 U1 (Z_l);
  UBCMBIN_27_13_12_000 U2 (P, Z_h, I_p);
  NUBCMBIN_27_2_1_0 U3 (N, I_n, Z_l);
  UBNUB_SD2PriComp_004 U4 (O__dp, O__dn, P, N);
endmodule

module UBNUB_SD2Comp_17_000 (O__dp, O__dn, I_p, I_n);
  output [17:0] O__dp, O__dn;
  input [16:2] I_n;
  input [17:0] I_p;
  wire [17:0] N;
  wire Z_h;
  wire [1:0] Z_l;
  NUBZero_17_17 U0 (Z_h);
  NUBZero_1_0 U1 (Z_l);
  NUBCMBIN_17_17_16000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_000 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_21_000 (O__dp, O__dn, I_p, I_n);
  output [21:4] O__dp, O__dn;
  input [20:6] I_n;
  input [21:4] I_p;
  wire [21:4] N;
  wire Z_h;
  wire [5:4] Z_l;
  NUBZero_21_21 U0 (Z_h);
  NUBZero_5_4 U1 (Z_l);
  NUBCMBIN_21_21_20000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_001 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_25_000 (O__dp, O__dn, I_p, I_n);
  output [25:8] O__dp, O__dn;
  input [24:10] I_n;
  input [25:8] I_p;
  wire [25:8] N;
  wire Z_h;
  wire [9:8] Z_l;
  NUBZero_25_25 U0 (Z_h);
  NUBZero_9_8 U1 (Z_l);
  NUBCMBIN_25_25_24000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_002 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_29_000 (O__dp, O__dn, I_p, I_n);
  output [29:12] O__dp, O__dn;
  input [28:14] I_n;
  input [29:12] I_p;
  wire [29:12] N;
  wire Z_h;
  wire [13:12] Z_l;
  NUBZero_29_29 U0 (Z_h);
  NUBZero_13_12 U1 (Z_l);
  NUBCMBIN_29_29_28000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_003 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2PriComp_000 (O__dp, O__dn, I_p, I_n);
  output [17:0] O__dp, O__dn;
  input [17:0] I_n;
  input [17:0] I_p;
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
  SD2DigitCom_17 U17 (O__dp[17], O__dn[17], I_n[17], I_p[17]);
endmodule

module UBNUB_SD2PriComp_001 (O__dp, O__dn, I_p, I_n);
  output [21:4] O__dp, O__dn;
  input [21:4] I_n;
  input [21:4] I_p;
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
  SD2DigitCom_15 U11 (O__dp[15], O__dn[15], I_n[15], I_p[15]);
  SD2DigitCom_16 U12 (O__dp[16], O__dn[16], I_n[16], I_p[16]);
  SD2DigitCom_17 U13 (O__dp[17], O__dn[17], I_n[17], I_p[17]);
  SD2DigitCom_18 U14 (O__dp[18], O__dn[18], I_n[18], I_p[18]);
  SD2DigitCom_19 U15 (O__dp[19], O__dn[19], I_n[19], I_p[19]);
  SD2DigitCom_20 U16 (O__dp[20], O__dn[20], I_n[20], I_p[20]);
  SD2DigitCom_21 U17 (O__dp[21], O__dn[21], I_n[21], I_p[21]);
endmodule

module UBNUB_SD2PriComp_002 (O__dp, O__dn, I_p, I_n);
  output [25:8] O__dp, O__dn;
  input [25:8] I_n;
  input [25:8] I_p;
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
  SD2DigitCom_19 U11 (O__dp[19], O__dn[19], I_n[19], I_p[19]);
  SD2DigitCom_20 U12 (O__dp[20], O__dn[20], I_n[20], I_p[20]);
  SD2DigitCom_21 U13 (O__dp[21], O__dn[21], I_n[21], I_p[21]);
  SD2DigitCom_22 U14 (O__dp[22], O__dn[22], I_n[22], I_p[22]);
  SD2DigitCom_23 U15 (O__dp[23], O__dn[23], I_n[23], I_p[23]);
  SD2DigitCom_24 U16 (O__dp[24], O__dn[24], I_n[24], I_p[24]);
  SD2DigitCom_25 U17 (O__dp[25], O__dn[25], I_n[25], I_p[25]);
endmodule

module UBNUB_SD2PriComp_003 (O__dp, O__dn, I_p, I_n);
  output [29:12] O__dp, O__dn;
  input [29:12] I_n;
  input [29:12] I_p;
  SD2DigitCom_12 U0 (O__dp[12], O__dn[12], I_n[12], I_p[12]);
  SD2DigitCom_13 U1 (O__dp[13], O__dn[13], I_n[13], I_p[13]);
  SD2DigitCom_14 U2 (O__dp[14], O__dn[14], I_n[14], I_p[14]);
  SD2DigitCom_15 U3 (O__dp[15], O__dn[15], I_n[15], I_p[15]);
  SD2DigitCom_16 U4 (O__dp[16], O__dn[16], I_n[16], I_p[16]);
  SD2DigitCom_17 U5 (O__dp[17], O__dn[17], I_n[17], I_p[17]);
  SD2DigitCom_18 U6 (O__dp[18], O__dn[18], I_n[18], I_p[18]);
  SD2DigitCom_19 U7 (O__dp[19], O__dn[19], I_n[19], I_p[19]);
  SD2DigitCom_20 U8 (O__dp[20], O__dn[20], I_n[20], I_p[20]);
  SD2DigitCom_21 U9 (O__dp[21], O__dn[21], I_n[21], I_p[21]);
  SD2DigitCom_22 U10 (O__dp[22], O__dn[22], I_n[22], I_p[22]);
  SD2DigitCom_23 U11 (O__dp[23], O__dn[23], I_n[23], I_p[23]);
  SD2DigitCom_24 U12 (O__dp[24], O__dn[24], I_n[24], I_p[24]);
  SD2DigitCom_25 U13 (O__dp[25], O__dn[25], I_n[25], I_p[25]);
  SD2DigitCom_26 U14 (O__dp[26], O__dn[26], I_n[26], I_p[26]);
  SD2DigitCom_27 U15 (O__dp[27], O__dn[27], I_n[27], I_p[27]);
  SD2DigitCom_28 U16 (O__dp[28], O__dn[28], I_n[28], I_p[28]);
  SD2DigitCom_29 U17 (O__dp[29], O__dn[29], I_n[29], I_p[29]);
endmodule

module UBNUB_SD2PriComp_004 (O__dp, O__dn, I_p, I_n);
  output [27:0] O__dp, O__dn;
  input [27:0] I_n;
  input [27:0] I_p;
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
  SD2DigitCom_17 U17 (O__dp[17], O__dn[17], I_n[17], I_p[17]);
  SD2DigitCom_18 U18 (O__dp[18], O__dn[18], I_n[18], I_p[18]);
  SD2DigitCom_19 U19 (O__dp[19], O__dn[19], I_n[19], I_p[19]);
  SD2DigitCom_20 U20 (O__dp[20], O__dn[20], I_n[20], I_p[20]);
  SD2DigitCom_21 U21 (O__dp[21], O__dn[21], I_n[21], I_p[21]);
  SD2DigitCom_22 U22 (O__dp[22], O__dn[22], I_n[22], I_p[22]);
  SD2DigitCom_23 U23 (O__dp[23], O__dn[23], I_n[23], I_p[23]);
  SD2DigitCom_24 U24 (O__dp[24], O__dn[24], I_n[24], I_p[24]);
  SD2DigitCom_25 U25 (O__dp[25], O__dn[25], I_n[25], I_p[25]);
  SD2DigitCom_26 U26 (O__dp[26], O__dn[26], I_n[26], I_p[26]);
  SD2DigitCom_27 U27 (O__dp[27], O__dn[27], I_n[27], I_p[27]);
endmodule

module UBPlusVPPG_13_0_0 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [14:0] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [14:0] W;
  SD41DDECON_0 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_0 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_14_0 U2 (PP, W, S);
  UBBBG_0 U3 (C, S);
  NUBBHBG_15 U4 (N, S);
endmodule

module UBPlusVPPG_13_0_2 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [18:4] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [18:4] W;
  SD41DDECON_2 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_2 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_18_4 U2 (PP, W, S);
  UBBBG_4 U3 (C, S);
  NUBBHBG_19 U4 (N, S);
endmodule

module UBPlusVPPG_13_0_4 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [22:8] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [22:8] W;
  SD41DDECON_4 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_4 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_22_8 U2 (PP, W, S);
  UBBBG_8 U3 (C, S);
  NUBBHBG_23 U4 (N, S);
endmodule

module UBPlusVPPG_13_0_6 (N, PP, C, I1, I2__ds, I2__d1, I2__d0);
  output C;
  output N;
  output [26:12] PP;
  input [13:0] I1;
  input I2__ds, I2__d1, I2__d0;
  wire S;
  wire U__d1, U__d0;
  wire [26:12] W;
  SD41DDECON_6 U0 (S, U__d1, U__d0, I2__ds, I2__d1, I2__d0);
  UBU4VPPG_13_0_6 U1 (W, I1, U__d1, U__d0);
  UBUBWCON_26_12 U2 (PP, W, S);
  UBBBG_12 U3 (C, S);
  NUBBHBG_27 U4 (N, S);
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

module UBSR4BPPG_13_0_13000 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, IN1, IN2);
  output [17:0] PP0__dp, PP0__dn;
  output [21:4] PP1__dp, PP1__dn;
  output [25:8] PP2__dp, PP2__dn;
  output [29:12] PP3__dp, PP3__dn;
  output [27:0] PP4__dp, PP4__dn;
  input [13:0] IN1;
  input [13:0] IN2;
  wire [7:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [27:2] MI_B;
  wire NCO0;
  wire NCO1;
  wire NCO2;
  wire NCO3;
  wire NEG0;
  wire NEG1;
  wire NEG2;
  wire NEG3;
  wire [16:2] NPP0;
  wire [20:6] NPP1;
  wire [24:10] NPP2;
  wire [28:14] NPP3;
  wire PCO0;
  wire PCO1;
  wire PCO2;
  wire PCO3;
  wire [12:0] PL_B;
  wire POG0;
  wire POG1;
  wire POG2;
  wire POG3;
  wire [14:0] PPP0;
  wire [18:4] PPP1;
  wire [22:8] PPP2;
  wire [26:12] PPP3;
  wire [17:0] PP_p0;
  wire [21:4] PP_p1;
  wire [25:8] PP_p2;
  wire [29:12] PP_p3;
  UBR4BE_13_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBPlusVPPG_13_0_0 U1 (NEG0, PPP0, PCO0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBMinusVPPG_13_0_000 U2 (POG0, NPP0, NCO0, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBCMBIN_17_17_14_000 U3 (PP_p0, POG0, PPP0);
  UBNUB_SD2Comp_17_000 U4 (PP0__dp[17:0], PP0__dn[17:0], PP_p0, NPP0);
  UBPlusVPPG_13_0_2 U5 (NEG1, PPP1, PCO1, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBMinusVPPG_13_0_001 U6 (POG1, NPP1, NCO1, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBCMBIN_21_21_18_000 U7 (PP_p1, POG1, PPP1);
  UBNUB_SD2Comp_21_000 U8 (PP1__dp[21:4], PP1__dn[21:4], PP_p1, NPP1);
  UBPlusVPPG_13_0_4 U9 (NEG2, PPP2, PCO2, IN1, IN2SD__ds[4], IN2SD__d1[4], IN2SD__d0[4]);
  UBMinusVPPG_13_0_002 U10 (POG2, NPP2, NCO2, IN1, IN2SD__ds[5], IN2SD__d1[5], IN2SD__d0[5]);
  UBCMBIN_25_25_22_000 U11 (PP_p2, POG2, PPP2);
  UBNUB_SD2Comp_25_000 U12 (PP2__dp[25:8], PP2__dn[25:8], PP_p2, NPP2);
  UBPlusVPPG_13_0_6 U13 (NEG3, PPP3, PCO3, IN1, IN2SD__ds[6], IN2SD__d1[6], IN2SD__d0[6]);
  UBMinusVPPG_13_0_003 U14 (POG3, NPP3, NCO3, IN1, IN2SD__ds[7], IN2SD__d1[7], IN2SD__d0[7]);
  UBCMBIN_29_29_26_000 U15 (PP_p3, POG3, PPP3);
  UBNUB_SD2Comp_29_000 U16 (PP3__dp[29:12], PP3__dn[29:12], PP_p3, NPP3);
  UBCMBIN_12_12_8_8000 U17 (PL_B, PCO3, PCO2, PCO1, PCO0);
  NUBCMBIN_27_27_23000 U18 (MI_B, NEG3, NEG2, NEG1, NEG0, NCO3, NCO2, NCO1, NCO0);
  UBNUB_SD2Comp_12_000 U19 (PP4__dp[27:0], PP4__dn[27:0], PL_B, MI_B);
endmodule

module UBU4VPPG_13_0_0 (O, I, U__d1, U__d0);
  output [14:0] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [13:1] P;
  U4DPPGL_0_0 U0 (P[1], O[0], I[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O[1], I[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O[2], I[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O[3], I[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O[4], I[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O[5], I[5], U__d1, U__d0, P[5]);
  U4DPPG_6_0 U6 (P[7], O[6], I[6], U__d1, U__d0, P[6]);
  U4DPPG_7_0 U7 (P[8], O[7], I[7], U__d1, U__d0, P[7]);
  U4DPPG_8_0 U8 (P[9], O[8], I[8], U__d1, U__d0, P[8]);
  U4DPPG_9_0 U9 (P[10], O[9], I[9], U__d1, U__d0, P[9]);
  U4DPPG_10_0 U10 (P[11], O[10], I[10], U__d1, U__d0, P[10]);
  U4DPPG_11_0 U11 (P[12], O[11], I[11], U__d1, U__d0, P[11]);
  U4DPPG_12_0 U12 (P[13], O[12], I[12], U__d1, U__d0, P[12]);
  U4DPPG_13_0 U13 (O[14], O[13], I[13], U__d1, U__d0, P[13]);
endmodule

module UBU4VPPG_13_0_1 (O, I, U__d1, U__d0);
  output [16:2] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [15:3] P;
  U4DPPGL_0_1 U0 (P[3], O[2], I[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O[3], I[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O[4], I[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O[5], I[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O[6], I[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O[7], I[5], U__d1, U__d0, P[7]);
  U4DPPG_6_1 U6 (P[9], O[8], I[6], U__d1, U__d0, P[8]);
  U4DPPG_7_1 U7 (P[10], O[9], I[7], U__d1, U__d0, P[9]);
  U4DPPG_8_1 U8 (P[11], O[10], I[8], U__d1, U__d0, P[10]);
  U4DPPG_9_1 U9 (P[12], O[11], I[9], U__d1, U__d0, P[11]);
  U4DPPG_10_1 U10 (P[13], O[12], I[10], U__d1, U__d0, P[12]);
  U4DPPG_11_1 U11 (P[14], O[13], I[11], U__d1, U__d0, P[13]);
  U4DPPG_12_1 U12 (P[15], O[14], I[12], U__d1, U__d0, P[14]);
  U4DPPG_13_1 U13 (O[16], O[15], I[13], U__d1, U__d0, P[15]);
endmodule

module UBU4VPPG_13_0_2 (O, I, U__d1, U__d0);
  output [18:4] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [17:5] P;
  U4DPPGL_0_2 U0 (P[5], O[4], I[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O[5], I[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O[6], I[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O[7], I[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O[8], I[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O[9], I[5], U__d1, U__d0, P[9]);
  U4DPPG_6_2 U6 (P[11], O[10], I[6], U__d1, U__d0, P[10]);
  U4DPPG_7_2 U7 (P[12], O[11], I[7], U__d1, U__d0, P[11]);
  U4DPPG_8_2 U8 (P[13], O[12], I[8], U__d1, U__d0, P[12]);
  U4DPPG_9_2 U9 (P[14], O[13], I[9], U__d1, U__d0, P[13]);
  U4DPPG_10_2 U10 (P[15], O[14], I[10], U__d1, U__d0, P[14]);
  U4DPPG_11_2 U11 (P[16], O[15], I[11], U__d1, U__d0, P[15]);
  U4DPPG_12_2 U12 (P[17], O[16], I[12], U__d1, U__d0, P[16]);
  U4DPPG_13_2 U13 (O[18], O[17], I[13], U__d1, U__d0, P[17]);
endmodule

module UBU4VPPG_13_0_3 (O, I, U__d1, U__d0);
  output [20:6] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [19:7] P;
  U4DPPGL_0_3 U0 (P[7], O[6], I[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O[7], I[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O[8], I[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O[9], I[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O[10], I[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O[11], I[5], U__d1, U__d0, P[11]);
  U4DPPG_6_3 U6 (P[13], O[12], I[6], U__d1, U__d0, P[12]);
  U4DPPG_7_3 U7 (P[14], O[13], I[7], U__d1, U__d0, P[13]);
  U4DPPG_8_3 U8 (P[15], O[14], I[8], U__d1, U__d0, P[14]);
  U4DPPG_9_3 U9 (P[16], O[15], I[9], U__d1, U__d0, P[15]);
  U4DPPG_10_3 U10 (P[17], O[16], I[10], U__d1, U__d0, P[16]);
  U4DPPG_11_3 U11 (P[18], O[17], I[11], U__d1, U__d0, P[17]);
  U4DPPG_12_3 U12 (P[19], O[18], I[12], U__d1, U__d0, P[18]);
  U4DPPG_13_3 U13 (O[20], O[19], I[13], U__d1, U__d0, P[19]);
endmodule

module UBU4VPPG_13_0_4 (O, I, U__d1, U__d0);
  output [22:8] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [21:9] P;
  U4DPPGL_0_4 U0 (P[9], O[8], I[0], U__d1, U__d0);
  U4DPPG_1_4 U1 (P[10], O[9], I[1], U__d1, U__d0, P[9]);
  U4DPPG_2_4 U2 (P[11], O[10], I[2], U__d1, U__d0, P[10]);
  U4DPPG_3_4 U3 (P[12], O[11], I[3], U__d1, U__d0, P[11]);
  U4DPPG_4_4 U4 (P[13], O[12], I[4], U__d1, U__d0, P[12]);
  U4DPPG_5_4 U5 (P[14], O[13], I[5], U__d1, U__d0, P[13]);
  U4DPPG_6_4 U6 (P[15], O[14], I[6], U__d1, U__d0, P[14]);
  U4DPPG_7_4 U7 (P[16], O[15], I[7], U__d1, U__d0, P[15]);
  U4DPPG_8_4 U8 (P[17], O[16], I[8], U__d1, U__d0, P[16]);
  U4DPPG_9_4 U9 (P[18], O[17], I[9], U__d1, U__d0, P[17]);
  U4DPPG_10_4 U10 (P[19], O[18], I[10], U__d1, U__d0, P[18]);
  U4DPPG_11_4 U11 (P[20], O[19], I[11], U__d1, U__d0, P[19]);
  U4DPPG_12_4 U12 (P[21], O[20], I[12], U__d1, U__d0, P[20]);
  U4DPPG_13_4 U13 (O[22], O[21], I[13], U__d1, U__d0, P[21]);
endmodule

module UBU4VPPG_13_0_5 (O, I, U__d1, U__d0);
  output [24:10] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [23:11] P;
  U4DPPGL_0_5 U0 (P[11], O[10], I[0], U__d1, U__d0);
  U4DPPG_1_5 U1 (P[12], O[11], I[1], U__d1, U__d0, P[11]);
  U4DPPG_2_5 U2 (P[13], O[12], I[2], U__d1, U__d0, P[12]);
  U4DPPG_3_5 U3 (P[14], O[13], I[3], U__d1, U__d0, P[13]);
  U4DPPG_4_5 U4 (P[15], O[14], I[4], U__d1, U__d0, P[14]);
  U4DPPG_5_5 U5 (P[16], O[15], I[5], U__d1, U__d0, P[15]);
  U4DPPG_6_5 U6 (P[17], O[16], I[6], U__d1, U__d0, P[16]);
  U4DPPG_7_5 U7 (P[18], O[17], I[7], U__d1, U__d0, P[17]);
  U4DPPG_8_5 U8 (P[19], O[18], I[8], U__d1, U__d0, P[18]);
  U4DPPG_9_5 U9 (P[20], O[19], I[9], U__d1, U__d0, P[19]);
  U4DPPG_10_5 U10 (P[21], O[20], I[10], U__d1, U__d0, P[20]);
  U4DPPG_11_5 U11 (P[22], O[21], I[11], U__d1, U__d0, P[21]);
  U4DPPG_12_5 U12 (P[23], O[22], I[12], U__d1, U__d0, P[22]);
  U4DPPG_13_5 U13 (O[24], O[23], I[13], U__d1, U__d0, P[23]);
endmodule

module UBU4VPPG_13_0_6 (O, I, U__d1, U__d0);
  output [26:12] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [25:13] P;
  U4DPPGL_0_6 U0 (P[13], O[12], I[0], U__d1, U__d0);
  U4DPPG_1_6 U1 (P[14], O[13], I[1], U__d1, U__d0, P[13]);
  U4DPPG_2_6 U2 (P[15], O[14], I[2], U__d1, U__d0, P[14]);
  U4DPPG_3_6 U3 (P[16], O[15], I[3], U__d1, U__d0, P[15]);
  U4DPPG_4_6 U4 (P[17], O[16], I[4], U__d1, U__d0, P[16]);
  U4DPPG_5_6 U5 (P[18], O[17], I[5], U__d1, U__d0, P[17]);
  U4DPPG_6_6 U6 (P[19], O[18], I[6], U__d1, U__d0, P[18]);
  U4DPPG_7_6 U7 (P[20], O[19], I[7], U__d1, U__d0, P[19]);
  U4DPPG_8_6 U8 (P[21], O[20], I[8], U__d1, U__d0, P[20]);
  U4DPPG_9_6 U9 (P[22], O[21], I[9], U__d1, U__d0, P[21]);
  U4DPPG_10_6 U10 (P[23], O[22], I[10], U__d1, U__d0, P[22]);
  U4DPPG_11_6 U11 (P[24], O[23], I[11], U__d1, U__d0, P[23]);
  U4DPPG_12_6 U12 (P[25], O[24], I[12], U__d1, U__d0, P[24]);
  U4DPPG_13_6 U13 (O[26], O[25], I[13], U__d1, U__d0, P[25]);
endmodule

module UBU4VPPG_13_0_7 (O, I, U__d1, U__d0);
  output [28:14] O;
  input [13:0] I;
  input U__d1, U__d0;
  wire [27:15] P;
  U4DPPGL_0_7 U0 (P[15], O[14], I[0], U__d1, U__d0);
  U4DPPG_1_7 U1 (P[16], O[15], I[1], U__d1, U__d0, P[15]);
  U4DPPG_2_7 U2 (P[17], O[16], I[2], U__d1, U__d0, P[16]);
  U4DPPG_3_7 U3 (P[18], O[17], I[3], U__d1, U__d0, P[17]);
  U4DPPG_4_7 U4 (P[19], O[18], I[4], U__d1, U__d0, P[18]);
  U4DPPG_5_7 U5 (P[20], O[19], I[5], U__d1, U__d0, P[19]);
  U4DPPG_6_7 U6 (P[21], O[20], I[6], U__d1, U__d0, P[20]);
  U4DPPG_7_7 U7 (P[22], O[21], I[7], U__d1, U__d0, P[21]);
  U4DPPG_8_7 U8 (P[23], O[22], I[8], U__d1, U__d0, P[22]);
  U4DPPG_9_7 U9 (P[24], O[23], I[9], U__d1, U__d0, P[23]);
  U4DPPG_10_7 U10 (P[25], O[24], I[10], U__d1, U__d0, P[24]);
  U4DPPG_11_7 U11 (P[26], O[25], I[11], U__d1, U__d0, P[25]);
  U4DPPG_12_7 U12 (P[27], O[26], I[12], U__d1, U__d0, P[26]);
  U4DPPG_13_7 U13 (O[28], O[27], I[13], U__d1, U__d0, P[27]);
endmodule

module UBUBWCON_14_0 (O, I, S);
  output [14:0] O;
  input [14:0] I;
  input S;
  BWCPP_0 U0 (O[0], I[0], S);
  BWCPP_1 U1 (O[1], I[1], S);
  BWCPP_2 U2 (O[2], I[2], S);
  BWCPP_3 U3 (O[3], I[3], S);
  BWCPP_4 U4 (O[4], I[4], S);
  BWCPP_5 U5 (O[5], I[5], S);
  BWCPP_6 U6 (O[6], I[6], S);
  BWCPP_7 U7 (O[7], I[7], S);
  BWCPP_8 U8 (O[8], I[8], S);
  BWCPP_9 U9 (O[9], I[9], S);
  BWCPP_10 U10 (O[10], I[10], S);
  BWCPP_11 U11 (O[11], I[11], S);
  BWCPP_12 U12 (O[12], I[12], S);
  BWCPP_13 U13 (O[13], I[13], S);
  BWCPP_14 U14 (O[14], I[14], S);
endmodule

module UBUBWCON_18_4 (O, I, S);
  output [18:4] O;
  input [18:4] I;
  input S;
  BWCPP_4 U0 (O[4], I[4], S);
  BWCPP_5 U1 (O[5], I[5], S);
  BWCPP_6 U2 (O[6], I[6], S);
  BWCPP_7 U3 (O[7], I[7], S);
  BWCPP_8 U4 (O[8], I[8], S);
  BWCPP_9 U5 (O[9], I[9], S);
  BWCPP_10 U6 (O[10], I[10], S);
  BWCPP_11 U7 (O[11], I[11], S);
  BWCPP_12 U8 (O[12], I[12], S);
  BWCPP_13 U9 (O[13], I[13], S);
  BWCPP_14 U10 (O[14], I[14], S);
  BWCPP_15 U11 (O[15], I[15], S);
  BWCPP_16 U12 (O[16], I[16], S);
  BWCPP_17 U13 (O[17], I[17], S);
  BWCPP_18 U14 (O[18], I[18], S);
endmodule

module UBUBWCON_22_8 (O, I, S);
  output [22:8] O;
  input [22:8] I;
  input S;
  BWCPP_8 U0 (O[8], I[8], S);
  BWCPP_9 U1 (O[9], I[9], S);
  BWCPP_10 U2 (O[10], I[10], S);
  BWCPP_11 U3 (O[11], I[11], S);
  BWCPP_12 U4 (O[12], I[12], S);
  BWCPP_13 U5 (O[13], I[13], S);
  BWCPP_14 U6 (O[14], I[14], S);
  BWCPP_15 U7 (O[15], I[15], S);
  BWCPP_16 U8 (O[16], I[16], S);
  BWCPP_17 U9 (O[17], I[17], S);
  BWCPP_18 U10 (O[18], I[18], S);
  BWCPP_19 U11 (O[19], I[19], S);
  BWCPP_20 U12 (O[20], I[20], S);
  BWCPP_21 U13 (O[21], I[21], S);
  BWCPP_22 U14 (O[22], I[22], S);
endmodule

module UBUBWCON_26_12 (O, I, S);
  output [26:12] O;
  input [26:12] I;
  input S;
  BWCPP_12 U0 (O[12], I[12], S);
  BWCPP_13 U1 (O[13], I[13], S);
  BWCPP_14 U2 (O[14], I[14], S);
  BWCPP_15 U3 (O[15], I[15], S);
  BWCPP_16 U4 (O[16], I[16], S);
  BWCPP_17 U5 (O[17], I[17], S);
  BWCPP_18 U6 (O[18], I[18], S);
  BWCPP_19 U7 (O[19], I[19], S);
  BWCPP_20 U8 (O[20], I[20], S);
  BWCPP_21 U9 (O[21], I[21], S);
  BWCPP_22 U10 (O[22], I[22], S);
  BWCPP_23 U11 (O[23], I[23], S);
  BWCPP_24 U12 (O[24], I[24], S);
  BWCPP_25 U13 (O[25], I[25], S);
  BWCPP_26 U14 (O[26], I[26], S);
endmodule

