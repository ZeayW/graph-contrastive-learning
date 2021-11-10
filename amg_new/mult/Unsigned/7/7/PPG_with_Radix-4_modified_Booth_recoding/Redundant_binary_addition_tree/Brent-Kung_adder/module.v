/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_6_0_6_000

  Number system: Unsigned binary
  Multiplicand length: 7
  Multiplier length: 7
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: Redundant binary addition tree
  Final stage addition: Brent-Kung adder
----------------------------------------------------------------------------*/

module NUBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
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

module R4BEEH_3_3(O_ds, O_d1, O_d0, I2, I1, I0);
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

module UBZero_3_1(O);
  output [3:1] O;
  assign O[1] = 0;
  assign O[2] = 0;
  assign O[3] = 0;
endmodule

module NUBZero_11_9(O);
  output [11:9] O;
  assign O[9] = 0;
  assign O[10] = 0;
  assign O[11] = 0;
endmodule

module NUBZero_5_3(O);
  output [5:3] O;
  assign O[3] = 0;
  assign O[4] = 0;
  assign O[5] = 0;
endmodule

module UBZero_12_5(O);
  output [12:5] O;
  assign O[5] = 0;
  assign O[6] = 0;
  assign O[7] = 0;
  assign O[8] = 0;
  assign O[9] = 0;
  assign O[10] = 0;
  assign O[11] = 0;
  assign O[12] = 0;
endmodule

module UB1DCON_12(O, I);
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

module SD2DigitCom_15(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A_Zero_15_000(O_p, O_n);
  output [15:13] O_p, O_n;
  assign O_p[13] = 0;
  assign O_n[13] = 0;
  assign O_p[14] = 0;
  assign O_n[14] = 0;
  assign O_p[15] = 0;
  assign O_n[15] = 0;
endmodule

module SD2_PN_A1DCON_15(O_p, O_n, I_p, I_n);
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

module SD2DigitDecom_PN_011(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_012(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_013(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_014(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_015(X, Y, I_p, I_n);
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

module SD2DigitCom_16(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitDecom_PN_016(X, Y, I_p, I_n);
  output [16:16] X;
  output [16:16] Y;
  input [16:16] I_p, I_n;
  assign X = ~ I_n[16];
  assign Y = I_p[16];
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

module UBPriBKA_16_0(S, X, Y, Cin);
  output [17:0] S;
  input Cin;
  input [16:0] X;
  input [16:0] Y;
  wire [16:0] G0;
  wire [16:0] G1;
  wire [16:0] G2;
  wire [16:0] G3;
  wire [16:0] G4;
  wire [16:0] G5;
  wire [16:0] G6;
  wire [16:0] G7;
  wire [16:0] G8;
  wire [16:0] P0;
  wire [16:0] P1;
  wire [16:0] P2;
  wire [16:0] P3;
  wire [16:0] P4;
  wire [16:0] P5;
  wire [16:0] P6;
  wire [16:0] P7;
  wire [16:0] P8;
  assign P1[0] = P0[0];
  assign G1[0] = G0[0];
  assign P1[2] = P0[2];
  assign G1[2] = G0[2];
  assign P1[4] = P0[4];
  assign G1[4] = G0[4];
  assign P1[6] = P0[6];
  assign G1[6] = G0[6];
  assign P1[8] = P0[8];
  assign G1[8] = G0[8];
  assign P1[10] = P0[10];
  assign G1[10] = G0[10];
  assign P1[12] = P0[12];
  assign G1[12] = G0[12];
  assign P1[14] = P0[14];
  assign G1[14] = G0[14];
  assign P1[16] = P0[16];
  assign G1[16] = G0[16];
  assign P2[0] = P1[0];
  assign G2[0] = G1[0];
  assign P2[1] = P1[1];
  assign G2[1] = G1[1];
  assign P2[2] = P1[2];
  assign G2[2] = G1[2];
  assign P2[4] = P1[4];
  assign G2[4] = G1[4];
  assign P2[5] = P1[5];
  assign G2[5] = G1[5];
  assign P2[6] = P1[6];
  assign G2[6] = G1[6];
  assign P2[8] = P1[8];
  assign G2[8] = G1[8];
  assign P2[9] = P1[9];
  assign G2[9] = G1[9];
  assign P2[10] = P1[10];
  assign G2[10] = G1[10];
  assign P2[12] = P1[12];
  assign G2[12] = G1[12];
  assign P2[13] = P1[13];
  assign G2[13] = G1[13];
  assign P2[14] = P1[14];
  assign G2[14] = G1[14];
  assign P2[16] = P1[16];
  assign G2[16] = G1[16];
  assign P3[0] = P2[0];
  assign G3[0] = G2[0];
  assign P3[1] = P2[1];
  assign G3[1] = G2[1];
  assign P3[2] = P2[2];
  assign G3[2] = G2[2];
  assign P3[3] = P2[3];
  assign G3[3] = G2[3];
  assign P3[4] = P2[4];
  assign G3[4] = G2[4];
  assign P3[5] = P2[5];
  assign G3[5] = G2[5];
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P3[8] = P2[8];
  assign G3[8] = G2[8];
  assign P3[9] = P2[9];
  assign G3[9] = G2[9];
  assign P3[10] = P2[10];
  assign G3[10] = G2[10];
  assign P3[11] = P2[11];
  assign G3[11] = G2[11];
  assign P3[12] = P2[12];
  assign G3[12] = G2[12];
  assign P3[13] = P2[13];
  assign G3[13] = G2[13];
  assign P3[14] = P2[14];
  assign G3[14] = G2[14];
  assign P3[16] = P2[16];
  assign G3[16] = G2[16];
  assign P4[0] = P3[0];
  assign G4[0] = G3[0];
  assign P4[1] = P3[1];
  assign G4[1] = G3[1];
  assign P4[2] = P3[2];
  assign G4[2] = G3[2];
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
  assign P4[12] = P3[12];
  assign G4[12] = G3[12];
  assign P4[13] = P3[13];
  assign G4[13] = G3[13];
  assign P4[14] = P3[14];
  assign G4[14] = G3[14];
  assign P4[16] = P3[16];
  assign G4[16] = G3[16];
  assign P5[0] = P4[0];
  assign G5[0] = G4[0];
  assign P5[1] = P4[1];
  assign G5[1] = G4[1];
  assign P5[2] = P4[2];
  assign G5[2] = G4[2];
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
  assign P6[0] = P5[0];
  assign G6[0] = G5[0];
  assign P6[1] = P5[1];
  assign G6[1] = G5[1];
  assign P6[2] = P5[2];
  assign G6[2] = G5[2];
  assign P6[3] = P5[3];
  assign G6[3] = G5[3];
  assign P6[4] = P5[4];
  assign G6[4] = G5[4];
  assign P6[5] = P5[5];
  assign G6[5] = G5[5];
  assign P6[6] = P5[6];
  assign G6[6] = G5[6];
  assign P6[7] = P5[7];
  assign G6[7] = G5[7];
  assign P6[8] = P5[8];
  assign G6[8] = G5[8];
  assign P6[9] = P5[9];
  assign G6[9] = G5[9];
  assign P6[10] = P5[10];
  assign G6[10] = G5[10];
  assign P6[12] = P5[12];
  assign G6[12] = G5[12];
  assign P6[13] = P5[13];
  assign G6[13] = G5[13];
  assign P6[14] = P5[14];
  assign G6[14] = G5[14];
  assign P6[15] = P5[15];
  assign G6[15] = G5[15];
  assign P6[16] = P5[16];
  assign G6[16] = G5[16];
  assign P7[0] = P6[0];
  assign G7[0] = G6[0];
  assign P7[1] = P6[1];
  assign G7[1] = G6[1];
  assign P7[2] = P6[2];
  assign G7[2] = G6[2];
  assign P7[3] = P6[3];
  assign G7[3] = G6[3];
  assign P7[4] = P6[4];
  assign G7[4] = G6[4];
  assign P7[6] = P6[6];
  assign G7[6] = G6[6];
  assign P7[7] = P6[7];
  assign G7[7] = G6[7];
  assign P7[8] = P6[8];
  assign G7[8] = G6[8];
  assign P7[10] = P6[10];
  assign G7[10] = G6[10];
  assign P7[11] = P6[11];
  assign G7[11] = G6[11];
  assign P7[12] = P6[12];
  assign G7[12] = G6[12];
  assign P7[14] = P6[14];
  assign G7[14] = G6[14];
  assign P7[15] = P6[15];
  assign G7[15] = G6[15];
  assign P7[16] = P6[16];
  assign G7[16] = G6[16];
  assign P8[0] = P7[0];
  assign G8[0] = G7[0];
  assign P8[1] = P7[1];
  assign G8[1] = G7[1];
  assign P8[3] = P7[3];
  assign G8[3] = G7[3];
  assign P8[5] = P7[5];
  assign G8[5] = G7[5];
  assign P8[7] = P7[7];
  assign G8[7] = G7[7];
  assign P8[9] = P7[9];
  assign G8[9] = G7[9];
  assign P8[11] = P7[11];
  assign G8[11] = G7[11];
  assign P8[13] = P7[13];
  assign G8[13] = G7[13];
  assign P8[15] = P7[15];
  assign G8[15] = G7[15];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G8[0] | ( P8[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G8[1] | ( P8[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G8[2] | ( P8[2] & Cin ) ) ^ P0[3];
  assign S[4] = ( G8[3] | ( P8[3] & Cin ) ) ^ P0[4];
  assign S[5] = ( G8[4] | ( P8[4] & Cin ) ) ^ P0[5];
  assign S[6] = ( G8[5] | ( P8[5] & Cin ) ) ^ P0[6];
  assign S[7] = ( G8[6] | ( P8[6] & Cin ) ) ^ P0[7];
  assign S[8] = ( G8[7] | ( P8[7] & Cin ) ) ^ P0[8];
  assign S[9] = ( G8[8] | ( P8[8] & Cin ) ) ^ P0[9];
  assign S[10] = ( G8[9] | ( P8[9] & Cin ) ) ^ P0[10];
  assign S[11] = ( G8[10] | ( P8[10] & Cin ) ) ^ P0[11];
  assign S[12] = ( G8[11] | ( P8[11] & Cin ) ) ^ P0[12];
  assign S[13] = ( G8[12] | ( P8[12] & Cin ) ) ^ P0[13];
  assign S[14] = ( G8[13] | ( P8[13] & Cin ) ) ^ P0[14];
  assign S[15] = ( G8[14] | ( P8[14] & Cin ) ) ^ P0[15];
  assign S[16] = ( G8[15] | ( P8[15] & Cin ) ) ^ P0[16];
  assign S[17] = G8[16] | ( P8[16] & Cin );
  GPGenerator U0 (G0[0], P0[0], X[0], Y[0]);
  GPGenerator U1 (G0[1], P0[1], X[1], Y[1]);
  GPGenerator U2 (G0[2], P0[2], X[2], Y[2]);
  GPGenerator U3 (G0[3], P0[3], X[3], Y[3]);
  GPGenerator U4 (G0[4], P0[4], X[4], Y[4]);
  GPGenerator U5 (G0[5], P0[5], X[5], Y[5]);
  GPGenerator U6 (G0[6], P0[6], X[6], Y[6]);
  GPGenerator U7 (G0[7], P0[7], X[7], Y[7]);
  GPGenerator U8 (G0[8], P0[8], X[8], Y[8]);
  GPGenerator U9 (G0[9], P0[9], X[9], Y[9]);
  GPGenerator U10 (G0[10], P0[10], X[10], Y[10]);
  GPGenerator U11 (G0[11], P0[11], X[11], Y[11]);
  GPGenerator U12 (G0[12], P0[12], X[12], Y[12]);
  GPGenerator U13 (G0[13], P0[13], X[13], Y[13]);
  GPGenerator U14 (G0[14], P0[14], X[14], Y[14]);
  GPGenerator U15 (G0[15], P0[15], X[15], Y[15]);
  GPGenerator U16 (G0[16], P0[16], X[16], Y[16]);
  CarryOperator U17 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U18 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U19 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U20 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U21 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U22 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U23 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U24 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U25 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U26 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U27 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U28 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U29 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U30 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U31 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U32 (G6[11], P6[11], G5[11], P5[11], G5[7], P5[7]);
  CarryOperator U33 (G7[5], P7[5], G6[5], P6[5], G6[3], P6[3]);
  CarryOperator U34 (G7[9], P7[9], G6[9], P6[9], G6[7], P6[7]);
  CarryOperator U35 (G7[13], P7[13], G6[13], P6[13], G6[11], P6[11]);
  CarryOperator U36 (G8[2], P8[2], G7[2], P7[2], G7[1], P7[1]);
  CarryOperator U37 (G8[4], P8[4], G7[4], P7[4], G7[3], P7[3]);
  CarryOperator U38 (G8[6], P8[6], G7[6], P7[6], G7[5], P7[5]);
  CarryOperator U39 (G8[8], P8[8], G7[8], P7[8], G7[7], P7[7]);
  CarryOperator U40 (G8[10], P8[10], G7[10], P7[10], G7[9], P7[9]);
  CarryOperator U41 (G8[12], P8[12], G7[12], P7[12], G7[11], P7[11]);
  CarryOperator U42 (G8[14], P8[14], G7[14], P7[14], G7[13], P7[13]);
  CarryOperator U43 (G8[16], P8[16], G7[16], P7[16], G7[15], P7[15]);
endmodule

module UBInv_17(O, I);
  output [17:17] O;
  input [17:17] I;
  assign O[17] = ~ I[17];
endmodule

module TCCom_17_0(O, I1, I2);
  output [17:0] O;
  input [17:17] I1;
  input [16:0] I2;
  assign O[17] = I1;
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
endmodule

module Multiplier_6_0_6_000(P, IN1, IN2);
  output [13:0] P;
  input [6:0] IN1;
  input [6:0] IN2;
  wire [17:0] W;
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
  MultUB_R4B_SD2RBT000 U0 (W, IN1, IN2);
endmodule

module MultUB_R4B_SD2RBT000 (P, IN1, IN2);
  output [17:0] P;
  input [6:0] IN1;
  input [6:0] IN2;
  wire [10:0] PP0__dp, PP0__dn;
  wire [14:4] PP1__dp, PP1__dn;
  wire [12:0] PP2__dp, PP2__dn;
  wire [16:0] Z__dp, Z__dn;
  UBSR4BPPG_6_0_6_0 U0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, IN1, IN2);
  SD2RBTR_10_0_14_4000 U1 (Z__dp[16:0], Z__dn[16:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn);
  SD2TCConv_BKA_16_000 U2 (P, Z__dp, Z__dn);
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

module NUBCMBIN_12_12_8_000 (O, IN0, IN1, IN2, IN3);
  output [12:2] O;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  NUB1DCON_12 U0 (O[12], IN0);
  NUBZero_11_9 U1 (O[11:9]);
  NUB1DCON_8 U2 (O[8], IN1);
  NUBZero_7_7 U3 (O[7]);
  NUB1DCON_6 U4 (O[6], IN2);
  NUBZero_5_3 U5 (O[5:3]);
  NUB1DCON_2 U6 (O[2], IN3);
endmodule

module NUBCMBIN_12_2_1_0 (O, IN0, IN1);
  output [12:0] O;
  input [12:2] IN0;
  input [1:0] IN1;
  NUBCON_12_2 U0 (O[12:2], IN0);
  NUBCON_1_0 U1 (O[1:0], IN1);
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

module NUBCON_12_2 (O, I);
  output [12:2] O;
  input [12:2] I;
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

module SD2Decom_PN_16_0 (X, Y, I__dp, I__dn);
  output [16:0] X;
  output [16:0] Y;
  input [16:0] I__dp, I__dn;
  SD2DigitDecom_PN_011 U0 (X[0], Y[0], I__dp[0], I__dn[0]);
  SD2DigitDecom_PN_012 U1 (X[1], Y[1], I__dp[1], I__dn[1]);
  SD2DigitDecom_PN_013 U2 (X[2], Y[2], I__dp[2], I__dn[2]);
  SD2DigitDecom_PN_014 U3 (X[3], Y[3], I__dp[3], I__dn[3]);
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
  SD2DigitDecom_PN_015 U15 (X[15], Y[15], I__dp[15], I__dn[15]);
  SD2DigitDecom_PN_016 U16 (X[16], Y[16], I__dp[16], I__dn[16]);
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
  SD2DigitDecom_PN_011 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_011 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_012 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_012 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_015 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_015 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_15 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_15 U3 (C2, S2, C1i, S1, Yp);
  UBInv_16 U4 (C2o, C2);
  SD2DigitCom_15 U5 (Z__dp, Z__dn, C2i, S2);
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
  SD2DigitDecom_PN_013 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_013 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_2 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_2 U3 (C2, S2, C1i, S1, Yp);
  UBInv_3 U4 (C2o, C2);
  SD2DigitCom_2 U5 (Z__dp, Z__dn, C2i, S2);
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
  SD2DigitDecom_PN_014 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_014 U1 (Yn, Yp, Y__dp, Y__dn);
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

module SD2PureRBA_15_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [16:0] Z__dp, Z__dn;
  input [15:0] X__dp, X__dn;
  input [15:0] Y__dp, Y__dn;
  wire C1_1;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_2;
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
  wire C2_2;
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
  SD2DigitCom_16 U18 (Z__dp[16], Z__dn[16], C2_16, C1_16);
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

module SD2RBA_15_0_12_0 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [16:0] Z__dp, Z__dn;
  input [15:0] X__dp, X__dn;
  input [12:0] Y__dp, Y__dn;
  wire [15:0] YY__dp, YY__dn;
  wire [15:13] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_15_000 U0 (Zero__dp[15:13], Zero__dn[15:13]);
  SD2_PN_ACMBIN_15_000 U1 (YY__dp[15:0], YY__dn[15:0], Zero__dp[15:13], Zero__dn[15:13], Y__dp[12:0], Y__dn[12:0]);
  SD2PureRBA_15_0 U2 (Z__dp[16:0], Z__dn[16:0], X__dp[15:0], X__dn[15:0], YY__dp[15:0], YY__dn[15:0]);
endmodule

module SD2RBTR_10_0_14_4000 (Z__dp, Z__dn, PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn);
  output [16:0] Z__dp, Z__dn;
  input [10:0] PP0__dp, PP0__dn;
  input [14:4] PP1__dp, PP1__dn;
  input [12:0] PP2__dp, PP2__dn;
  wire [15:0] W1_0__dp, W1_0__dn;
  SD2RBA_10_0_14_4 U0 (W1_0__dp[15:0], W1_0__dn[15:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn);
  SD2RBA_15_0_12_0 U1 (Z__dp[16:0], Z__dn[16:0], W1_0__dp[15:0], W1_0__dn[15:0], PP2__dp, PP2__dn);
endmodule

module SD2TCConv_BKA_16_000 (O, I__dp, I__dn);
  output [17:0] O;
  input [16:0] I__dp, I__dn;
  wire C;
  wire [17:0] S;
  wire [16:0] X;
  wire [16:0] Y;
  wire Z;
  SD2Decom_PN_16_0 U0 (X, Y, I__dp, I__dn);
  UBOne_0 U1 (C);
  UBPriBKA_16_0 U2 (S, X, Y, C);
  UBInv_17 U3 (Z, S[17]);
  TCCom_17_0 U4 (O, Z, S[16:0]);
endmodule

module SD2_PN_ACMBIN_14_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [14:0] O__dp, O__dn;
  input [14:11] IN0__dp, IN0__dn;
  input [10:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_14_11 U0 (O__dp[14:11], O__dn[14:11], IN0__dp, IN0__dn);
  SD2_PN_ACON_10_0 U1 (O__dp[10:0], O__dn[10:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_15_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [15:0] O__dp, O__dn;
  input [15:13] IN0__dp, IN0__dn;
  input [12:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_15_13 U0 (O__dp[15:13], O__dn[15:13], IN0__dp, IN0__dn);
  SD2_PN_ACON_12_0 U1 (O__dp[12:0], O__dn[12:0], IN1__dp, IN1__dn);
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

module SD2_PN_ACON_12_0 (O__dp, O__dn, I__dp, I__dn);
  output [12:0] O__dp, O__dn;
  input [12:0] I__dp, I__dn;
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
endmodule

module SD2_PN_ACON_14_11 (O__dp, O__dn, I__dp, I__dn);
  output [14:11] O__dp, O__dn;
  input [14:11] I__dp, I__dn;
  SD2_PN_A1DCON_11 U0 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U1 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U2 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U3 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
endmodule

module SD2_PN_ACON_15_13 (O__dp, O__dn, I__dp, I__dn);
  output [15:13] O__dp, O__dn;
  input [15:13] I__dp, I__dn;
  SD2_PN_A1DCON_13 U0 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U1 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
  SD2_PN_A1DCON_15 U2 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
endmodule

module SD2_PN_ACON_3_0 (O__dp, O__dn, I__dp, I__dn);
  output [3:0] O__dp, O__dn;
  input [3:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
endmodule

module UBCMBIN_10_10_7_0 (O, IN0, IN1);
  output [10:0] O;
  input IN0;
  input [7:0] IN1;
  UB1DCON_10 U0 (O[10], IN0);
  UBZero_9_8 U1 (O[9:8]);
  UBCON_7_0 U2 (O[7:0], IN1);
endmodule

module UBCMBIN_12_5_4_0 (O, IN0, IN1);
  output [12:0] O;
  input [12:5] IN0;
  input [4:0] IN1;
  UBCON_12_5 U0 (O[12:5], IN0);
  UBCON_4_0 U1 (O[4:0], IN1);
endmodule

module UBCMBIN_14_14_11_000 (O, IN0, IN1);
  output [14:4] O;
  input IN0;
  input [11:4] IN1;
  UB1DCON_14 U0 (O[14], IN0);
  UBZero_13_12 U1 (O[13:12]);
  UBCON_11_4 U2 (O[11:4], IN1);
endmodule

module UBCMBIN_4_4_0_0 (O, IN0, IN1);
  output [4:0] O;
  input IN0;
  input IN1;
  UB1DCON_4 U0 (O[4], IN0);
  UBZero_3_1 U1 (O[3:1]);
  UB1DCON_0 U2 (O[0], IN1);
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

module UBCON_12_5 (O, I);
  output [12:5] O;
  input [12:5] I;
  UB1DCON_5 U0 (O[5], I[5]);
  UB1DCON_6 U1 (O[6], I[6]);
  UB1DCON_7 U2 (O[7], I[7]);
  UB1DCON_8 U3 (O[8], I[8]);
  UB1DCON_9 U4 (O[9], I[9]);
  UB1DCON_10 U5 (O[10], I[10]);
  UB1DCON_11 U6 (O[11], I[11]);
  UB1DCON_12 U7 (O[12], I[12]);
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

module UBNUB_SD2Comp_4_0000 (O__dp, O__dn, I_p, I_n);
  output [12:0] O__dp, O__dn;
  input [12:2] I_n;
  input [4:0] I_p;
  wire [12:0] N;
  wire [12:0] P;
  wire [12:5] Z_h;
  wire [1:0] Z_l;
  UBZero_12_5 U0 (Z_h);
  NUBZero_1_0 U1 (Z_l);
  UBCMBIN_12_5_4_0 U2 (P, Z_h, I_p);
  NUBCMBIN_12_2_1_0 U3 (N, I_n, Z_l);
  UBNUB_SD2PriComp_002 U4 (O__dp, O__dn, P, N);
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
  output [12:0] O__dp, O__dn;
  input [12:0] I_n;
  input [12:0] I_p;
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

module UBR4BE_6_0 (O__ds, O__d1, O__d0, I);
  output [3:0] O__ds, O__d1, O__d0;
  input [6:0] I;
  wire T;
  NUBZero_7_7 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEEH_3_3 U4 (O__ds[3], O__d1[3], O__d0[3], T, I[6], I[5]);
endmodule

module UBSR4BPPG_6_0_6_0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, IN1, IN2);
  output [10:0] PP0__dp, PP0__dn;
  output [14:4] PP1__dp, PP1__dn;
  output [12:0] PP2__dp, PP2__dn;
  input [6:0] IN1;
  input [6:0] IN2;
  wire [3:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [12:2] MI_B;
  wire NCO0;
  wire NCO1;
  wire NEG0;
  wire NEG1;
  wire [9:2] NPP0;
  wire [13:6] NPP1;
  wire PCO0;
  wire PCO1;
  wire [4:0] PL_B;
  wire POG0;
  wire POG1;
  wire [7:0] PPP0;
  wire [11:4] PPP1;
  wire [10:0] PP_p0;
  wire [14:4] PP_p1;
  UBR4BE_6_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBPlusVPPG_6_0_0 U1 (NEG0, PPP0, PCO0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBMinusVPPG_6_0_1 U2 (POG0, NPP0, NCO0, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBCMBIN_10_10_7_0 U3 (PP_p0, POG0, PPP0);
  UBNUB_SD2Comp_10_000 U4 (PP0__dp[10:0], PP0__dn[10:0], PP_p0, NPP0);
  UBPlusVPPG_6_0_2 U5 (NEG1, PPP1, PCO1, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBMinusVPPG_6_0_3 U6 (POG1, NPP1, NCO1, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBCMBIN_14_14_11_000 U7 (PP_p1, POG1, PPP1);
  UBNUB_SD2Comp_14_000 U8 (PP1__dp[14:4], PP1__dn[14:4], PP_p1, NPP1);
  UBCMBIN_4_4_0_0 U9 (PL_B, PCO1, PCO0);
  NUBCMBIN_12_12_8_000 U10 (MI_B, NEG1, NEG0, NCO1, NCO0);
  UBNUB_SD2Comp_4_0000 U11 (PP2__dp[12:0], PP2__dn[12:0], PL_B, MI_B);
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

