/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_7_0_7_000

  Number system: Unsigned binary
  Multiplicand length: 8
  Multiplier length: 8
  Partial product generation: Simple PPG
  Partial product accumulation: Redundant binary addition tree
  Final stage addition: Han-Carlson adder
----------------------------------------------------------------------------*/

module UB1BPPG_0_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_0(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_1(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module SignP_0(O);
  output O;
  assign O = 0;
endmodule

module BWCPN_1(O, I, S);
  output O;
  input I;
  input S;
  assign O = S ^ ( ~ I );
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

module NUBBBG_1(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_9(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_8_8(O);
  output [8:8] O;
  assign O[8] = 0;
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

module NUBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module NUBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module NUB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_1(O, I);
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

module NUB1DCON_0(O, I);
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

module UB1BPPG_0_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_2(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_3(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
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

module NUBBBG_3(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_11(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_10_10(O);
  output [10:10] O;
  assign O[10] = 0;
endmodule

module UB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_11_11(O);
  output [11:11] O;
  assign O[11] = 0;
endmodule

module NUBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module NUB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
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

module UB1BPPG_0_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_4(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_5(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
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

module NUBBBG_5(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_13(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_12_12(O);
  output [12:12] O;
  assign O[12] = 0;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_13_13(O);
  output [13:13] O;
  assign O[13] = 0;
endmodule

module NUBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module NUB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
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

module UB1BPPG_0_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_6(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_0_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_1_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_2_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_3_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_4_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_5_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_6_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
endmodule

module UB1BPPG_7_7(O, IN1, IN2);
  output O;
  input IN1;
  input IN2;
  assign O = IN1 & IN2;
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

module NUBBBG_7(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_15(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_14_14(O);
  output [14:14] O;
  assign O[14] = 0;
endmodule

module UB1DCON_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_15_15(O);
  output [15:15] O;
  assign O[15] = 0;
endmodule

module NUBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
endmodule

module NUB1DCON_15(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_14(O, I);
  output O;
  input I;
  assign O = I;
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

module NTCSD2Conv_8_1(O_p, O_n, I_T, I_R);
  output [8:1] O_p, O_n;
  input [7:1] I_R;
  input [8:8] I_T;
  assign O_p[8] = I_T;
  assign O_n[8] = 0;
  assign O_p[7] = 0;
  assign O_n[7] = I_R[7];
  assign O_p[6] = 0;
  assign O_n[6] = I_R[6];
  assign O_p[5] = 0;
  assign O_n[5] = I_R[5];
  assign O_p[4] = 0;
  assign O_n[4] = I_R[4];
  assign O_p[3] = 0;
  assign O_n[3] = I_R[3];
  assign O_p[2] = 0;
  assign O_n[2] = I_R[2];
  assign O_p[1] = 0;
  assign O_n[1] = I_R[1];
endmodule

module SD2_PN_A_Zero_11_000(O_p, O_n);
  output [11:10] O_p, O_n;
  assign O_p[10] = 0;
  assign O_n[10] = 0;
  assign O_p[11] = 0;
  assign O_n[11] = 0;
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

module UBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module SD2DigitDecom_PN_000(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_001(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_002(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_003(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_004(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_005(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_006(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_007(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_008(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_009(X, Y, I_p, I_n);
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

module SD2_PN_A_Zero_13_000(O_p, O_n);
  output [13:13] O_p, O_n;
  assign O_p[13] = 0;
  assign O_n[13] = 0;
endmodule

module SD2_PN_A1DCON_13(O_p, O_n, I_p, I_n);
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

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
endmodule

module SD2DigitDecom_PN_010(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_011(X, Y, I_p, I_n);
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

module SD2_PN_A_Zero_15_000(O_p, O_n);
  output [15:9] O_p, O_n;
  assign O_p[9] = 0;
  assign O_n[9] = 0;
  assign O_p[10] = 0;
  assign O_n[10] = 0;
  assign O_p[11] = 0;
  assign O_n[11] = 0;
  assign O_p[12] = 0;
  assign O_n[12] = 0;
  assign O_p[13] = 0;
  assign O_n[13] = 0;
  assign O_p[14] = 0;
  assign O_n[14] = 0;
  assign O_p[15] = 0;
  assign O_n[15] = 0;
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

module UBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
endmodule

module SD2DigitDecom_PN_012(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_013(X, Y, I_p, I_n);
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

module SD2_PN_A_Zero_16_000(O_p, O_n);
  output [16:15] O_p, O_n;
  assign O_p[15] = 0;
  assign O_n[15] = 0;
  assign O_p[16] = 0;
  assign O_n[16] = 0;
endmodule

module SD2_PN_A1DCON_16(O_p, O_n, I_p, I_n);
  output O_p, O_n;
  input I_p, I_n;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module NUBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
endmodule

module SD2DigitDecom_PN_014(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_015(X, Y, I_p, I_n);
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

module SD2DigitCom_17(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitDecom_PN_016(X, Y, I_p, I_n);
  output [0:0] X;
  output [0:0] Y;
  input [0:0] I_p, I_n;
  assign X = ~ I_n[0];
  assign Y = I_p[0];
endmodule

module SD2DigitDecom_PN_017(X, Y, I_p, I_n);
  output [17:17] X;
  output [17:17] Y;
  input [17:17] I_p, I_n;
  assign X = ~ I_n[17];
  assign Y = I_p[17];
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

module UBPriHCA_17_0(S, X, Y, Cin);
  output [18:0] S;
  input Cin;
  input [17:0] X;
  input [17:0] Y;
  wire [17:0] G0;
  wire [17:0] G1;
  wire [17:0] G2;
  wire [17:0] G3;
  wire [17:0] G4;
  wire [17:0] G5;
  wire [17:0] G6;
  wire [17:0] P0;
  wire [17:0] P1;
  wire [17:0] P2;
  wire [17:0] P3;
  wire [17:0] P4;
  wire [17:0] P5;
  wire [17:0] P6;
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
  assign P2[6] = P1[6];
  assign G2[6] = G1[6];
  assign P2[8] = P1[8];
  assign G2[8] = G1[8];
  assign P2[10] = P1[10];
  assign G2[10] = G1[10];
  assign P2[12] = P1[12];
  assign G2[12] = G1[12];
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
  assign P3[6] = P2[6];
  assign G3[6] = G2[6];
  assign P3[8] = P2[8];
  assign G3[8] = G2[8];
  assign P3[10] = P2[10];
  assign G3[10] = G2[10];
  assign P3[12] = P2[12];
  assign G3[12] = G2[12];
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
  assign P4[10] = P3[10];
  assign G4[10] = G3[10];
  assign P4[12] = P3[12];
  assign G4[12] = G3[12];
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
  assign P6[3] = P5[3];
  assign G6[3] = G5[3];
  assign P6[5] = P5[5];
  assign G6[5] = G5[5];
  assign P6[7] = P5[7];
  assign G6[7] = G5[7];
  assign P6[9] = P5[9];
  assign G6[9] = G5[9];
  assign P6[11] = P5[11];
  assign G6[11] = G5[11];
  assign P6[13] = P5[13];
  assign G6[13] = G5[13];
  assign P6[15] = P5[15];
  assign G6[15] = G5[15];
  assign P6[17] = P5[17];
  assign G6[17] = G5[17];
  assign S[0] = Cin ^ P0[0];
  assign S[1] = ( G6[0] | ( P6[0] & Cin ) ) ^ P0[1];
  assign S[2] = ( G6[1] | ( P6[1] & Cin ) ) ^ P0[2];
  assign S[3] = ( G6[2] | ( P6[2] & Cin ) ) ^ P0[3];
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
  assign S[18] = G6[17] | ( P6[17] & Cin );
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
  GPGenerator U17 (G0[17], P0[17], X[17], Y[17]);
  CarryOperator U18 (G1[1], P1[1], G0[1], P0[1], G0[0], P0[0]);
  CarryOperator U19 (G1[3], P1[3], G0[3], P0[3], G0[2], P0[2]);
  CarryOperator U20 (G1[5], P1[5], G0[5], P0[5], G0[4], P0[4]);
  CarryOperator U21 (G1[7], P1[7], G0[7], P0[7], G0[6], P0[6]);
  CarryOperator U22 (G1[9], P1[9], G0[9], P0[9], G0[8], P0[8]);
  CarryOperator U23 (G1[11], P1[11], G0[11], P0[11], G0[10], P0[10]);
  CarryOperator U24 (G1[13], P1[13], G0[13], P0[13], G0[12], P0[12]);
  CarryOperator U25 (G1[15], P1[15], G0[15], P0[15], G0[14], P0[14]);
  CarryOperator U26 (G1[17], P1[17], G0[17], P0[17], G0[16], P0[16]);
  CarryOperator U27 (G2[3], P2[3], G1[3], P1[3], G1[1], P1[1]);
  CarryOperator U28 (G2[5], P2[5], G1[5], P1[5], G1[3], P1[3]);
  CarryOperator U29 (G2[7], P2[7], G1[7], P1[7], G1[5], P1[5]);
  CarryOperator U30 (G2[9], P2[9], G1[9], P1[9], G1[7], P1[7]);
  CarryOperator U31 (G2[11], P2[11], G1[11], P1[11], G1[9], P1[9]);
  CarryOperator U32 (G2[13], P2[13], G1[13], P1[13], G1[11], P1[11]);
  CarryOperator U33 (G2[15], P2[15], G1[15], P1[15], G1[13], P1[13]);
  CarryOperator U34 (G2[17], P2[17], G1[17], P1[17], G1[15], P1[15]);
  CarryOperator U35 (G3[5], P3[5], G2[5], P2[5], G2[1], P2[1]);
  CarryOperator U36 (G3[7], P3[7], G2[7], P2[7], G2[3], P2[3]);
  CarryOperator U37 (G3[9], P3[9], G2[9], P2[9], G2[5], P2[5]);
  CarryOperator U38 (G3[11], P3[11], G2[11], P2[11], G2[7], P2[7]);
  CarryOperator U39 (G3[13], P3[13], G2[13], P2[13], G2[9], P2[9]);
  CarryOperator U40 (G3[15], P3[15], G2[15], P2[15], G2[11], P2[11]);
  CarryOperator U41 (G3[17], P3[17], G2[17], P2[17], G2[13], P2[13]);
  CarryOperator U42 (G4[9], P4[9], G3[9], P3[9], G3[1], P3[1]);
  CarryOperator U43 (G4[11], P4[11], G3[11], P3[11], G3[3], P3[3]);
  CarryOperator U44 (G4[13], P4[13], G3[13], P3[13], G3[5], P3[5]);
  CarryOperator U45 (G4[15], P4[15], G3[15], P3[15], G3[7], P3[7]);
  CarryOperator U46 (G4[17], P4[17], G3[17], P3[17], G3[9], P3[9]);
  CarryOperator U47 (G5[17], P5[17], G4[17], P4[17], G4[1], P4[1]);
  CarryOperator U48 (G6[2], P6[2], G5[2], P5[2], G5[1], P5[1]);
  CarryOperator U49 (G6[4], P6[4], G5[4], P5[4], G5[3], P5[3]);
  CarryOperator U50 (G6[6], P6[6], G5[6], P5[6], G5[5], P5[5]);
  CarryOperator U51 (G6[8], P6[8], G5[8], P5[8], G5[7], P5[7]);
  CarryOperator U52 (G6[10], P6[10], G5[10], P5[10], G5[9], P5[9]);
  CarryOperator U53 (G6[12], P6[12], G5[12], P5[12], G5[11], P5[11]);
  CarryOperator U54 (G6[14], P6[14], G5[14], P5[14], G5[13], P5[13]);
  CarryOperator U55 (G6[16], P6[16], G5[16], P5[16], G5[15], P5[15]);
endmodule

module UBInv_18(O, I);
  output [18:18] O;
  input [18:18] I;
  assign O[18] = ~ I[18];
endmodule

module TCCom_18_0(O, I1, I2);
  output [18:0] O;
  input [18:18] I1;
  input [17:0] I2;
  assign O[18] = I1;
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
endmodule

module Multiplier_7_0_7_000(P, IN1, IN2);
  output [15:0] P;
  input [7:0] IN1;
  input [7:0] IN2;
  wire [18:0] W;
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
  MultUB_STD_SD2RBT000 U0 (W, IN1, IN2);
endmodule

module MultUB_STD_SD2RBT000 (P, IN1, IN2);
  output [18:0] P;
  input [7:0] IN1;
  input [7:0] IN2;
  wire [9:0] PP0__dp, PP0__dn;
  wire [11:2] PP1__dp, PP1__dn;
  wire [13:4] PP2__dp, PP2__dn;
  wire [15:6] PP3__dp, PP3__dn;
  wire [8:1] PP4__dp, PP4__dn;
  wire [17:0] Z__dp, Z__dn;
  UBSPPG_7_0_7_0 U0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, IN1, IN2);
  SD2RBTR_9_0_11_2_000 U1 (Z__dp[17:0], Z__dn[17:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2TCConv_HCA_17_000 U2 (P, Z__dp, Z__dn);
endmodule

module NUBCMBIN_11_11_10000 (O, IN0, IN1, IN2);
  output [11:2] O;
  input IN0;
  input [10:3] IN1;
  input IN2;
  NUB1DCON_11 U0 (O[11], IN0);
  NUBCON_10_3 U1 (O[10:3], IN1);
  NUB1DCON_2 U2 (O[2], IN2);
endmodule

module NUBCMBIN_13_13_12000 (O, IN0, IN1, IN2);
  output [13:4] O;
  input IN0;
  input [12:5] IN1;
  input IN2;
  NUB1DCON_13 U0 (O[13], IN0);
  NUBCON_12_5 U1 (O[12:5], IN1);
  NUB1DCON_4 U2 (O[4], IN2);
endmodule

module NUBCMBIN_15_15_14000 (O, IN0, IN1, IN2);
  output [15:6] O;
  input IN0;
  input [14:7] IN1;
  input IN2;
  NUB1DCON_15 U0 (O[15], IN0);
  NUBCON_14_7 U1 (O[14:7], IN1);
  NUB1DCON_6 U2 (O[6], IN2);
endmodule

module NUBCMBIN_7_7_5_5_000 (O, IN0, IN1, IN2, IN3);
  output [7:1] O;
  input IN0;
  input IN1;
  input IN2;
  input IN3;
  NUB1DCON_7 U0 (O[7], IN0);
  NUBZero_6_6 U1 (O[6]);
  NUB1DCON_5 U2 (O[5], IN1);
  NUBZero_4_4 U3 (O[4]);
  NUB1DCON_3 U4 (O[3], IN2);
  NUBZero_2_2 U5 (O[2]);
  NUB1DCON_1 U6 (O[1], IN3);
endmodule

module NUBCMBIN_9_9_8_1_000 (O, IN0, IN1, IN2);
  output [9:0] O;
  input IN0;
  input [8:1] IN1;
  input IN2;
  NUB1DCON_9 U0 (O[9], IN0);
  NUBCON_8_1 U1 (O[8:1], IN1);
  NUB1DCON_0 U2 (O[0], IN2);
endmodule

module NUBCON_10_3 (O, I);
  output [10:3] O;
  input [10:3] I;
  NUB1DCON_3 U0 (O[3], I[3]);
  NUB1DCON_4 U1 (O[4], I[4]);
  NUB1DCON_5 U2 (O[5], I[5]);
  NUB1DCON_6 U3 (O[6], I[6]);
  NUB1DCON_7 U4 (O[7], I[7]);
  NUB1DCON_8 U5 (O[8], I[8]);
  NUB1DCON_9 U6 (O[9], I[9]);
  NUB1DCON_10 U7 (O[10], I[10]);
endmodule

module NUBCON_12_5 (O, I);
  output [12:5] O;
  input [12:5] I;
  NUB1DCON_5 U0 (O[5], I[5]);
  NUB1DCON_6 U1 (O[6], I[6]);
  NUB1DCON_7 U2 (O[7], I[7]);
  NUB1DCON_8 U3 (O[8], I[8]);
  NUB1DCON_9 U4 (O[9], I[9]);
  NUB1DCON_10 U5 (O[10], I[10]);
  NUB1DCON_11 U6 (O[11], I[11]);
  NUB1DCON_12 U7 (O[12], I[12]);
endmodule

module NUBCON_14_7 (O, I);
  output [14:7] O;
  input [14:7] I;
  NUB1DCON_7 U0 (O[7], I[7]);
  NUB1DCON_8 U1 (O[8], I[8]);
  NUB1DCON_9 U2 (O[9], I[9]);
  NUB1DCON_10 U3 (O[10], I[10]);
  NUB1DCON_11 U4 (O[11], I[11]);
  NUB1DCON_12 U5 (O[12], I[12]);
  NUB1DCON_13 U6 (O[13], I[13]);
  NUB1DCON_14 U7 (O[14], I[14]);
endmodule

module NUBCON_8_1 (O, I);
  output [8:1] O;
  input [8:1] I;
  NUB1DCON_1 U0 (O[1], I[1]);
  NUB1DCON_2 U1 (O[2], I[2]);
  NUB1DCON_3 U2 (O[3], I[3]);
  NUB1DCON_4 U3 (O[4], I[4]);
  NUB1DCON_5 U4 (O[5], I[5]);
  NUB1DCON_6 U5 (O[6], I[6]);
  NUB1DCON_7 U6 (O[7], I[7]);
  NUB1DCON_8 U7 (O[8], I[8]);
endmodule

module SD2Decom_PN_17_0 (X, Y, I__dp, I__dn);
  output [17:0] X;
  output [17:0] Y;
  input [17:0] I__dp, I__dn;
  SD2DigitDecom_PN_016 U0 (X[0], Y[0], I__dp[0], I__dn[0]);
  SD2DigitDecom_PN_014 U1 (X[1], Y[1], I__dp[1], I__dn[1]);
  SD2DigitDecom_PN_000 U2 (X[2], Y[2], I__dp[2], I__dn[2]);
  SD2DigitDecom_PN_001 U3 (X[3], Y[3], I__dp[3], I__dn[3]);
  SD2DigitDecom_PN_002 U4 (X[4], Y[4], I__dp[4], I__dn[4]);
  SD2DigitDecom_PN_003 U5 (X[5], Y[5], I__dp[5], I__dn[5]);
  SD2DigitDecom_PN_004 U6 (X[6], Y[6], I__dp[6], I__dn[6]);
  SD2DigitDecom_PN_005 U7 (X[7], Y[7], I__dp[7], I__dn[7]);
  SD2DigitDecom_PN_006 U8 (X[8], Y[8], I__dp[8], I__dn[8]);
  SD2DigitDecom_PN_007 U9 (X[9], Y[9], I__dp[9], I__dn[9]);
  SD2DigitDecom_PN_008 U10 (X[10], Y[10], I__dp[10], I__dn[10]);
  SD2DigitDecom_PN_009 U11 (X[11], Y[11], I__dp[11], I__dn[11]);
  SD2DigitDecom_PN_010 U12 (X[12], Y[12], I__dp[12], I__dn[12]);
  SD2DigitDecom_PN_011 U13 (X[13], Y[13], I__dp[13], I__dn[13]);
  SD2DigitDecom_PN_012 U14 (X[14], Y[14], I__dp[14], I__dn[14]);
  SD2DigitDecom_PN_013 U15 (X[15], Y[15], I__dp[15], I__dn[15]);
  SD2DigitDecom_PN_015 U16 (X[16], Y[16], I__dp[16], I__dn[16]);
  SD2DigitDecom_PN_017 U17 (X[17], Y[17], I__dp[17], I__dn[17]);
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
  SD2DigitDecom_PN_014 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_014 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_008 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_008 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_009 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_009 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_010 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_010 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_011 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_011 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_012 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_012 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_013 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_013 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_015 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_015 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_16 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_16 U3 (C2, S2, C1i, S1, Yp);
  UBInv_17 U4 (C2o, C2);
  SD2DigitCom_16 U5 (Z__dp, Z__dn, C2i, S2);
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
  SD2DigitDecom_PN_000 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_000 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_001 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_001 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_002 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_002 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_003 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_003 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_004 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_004 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_005 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_005 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_006 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_006 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_007 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_007 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_9 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_9 U3 (C2, S2, C1i, S1, Yp);
  UBInv_10 U4 (C2o, C2);
  SD2DigitCom_9 U5 (Z__dp, Z__dn, C2i, S2);
endmodule

module SD2PureRBA_11_2 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [12:2] Z__dp, Z__dn;
  input [11:2] X__dp, X__dn;
  input [11:2] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_3;
  wire C1_4;
  wire C1_5;
  wire C1_6;
  wire C1_7;
  wire C1_8;
  wire C1_9;
  wire C1i;
  wire C2_10;
  wire C2_11;
  wire C2_12;
  wire C2_3;
  wire C2_4;
  wire C2_5;
  wire C2_6;
  wire C2_7;
  wire C2_8;
  wire C2_9;
  wire C2i;
  UBZero_2_2 U0 (C1i);
  NUBZero_2_2 U1 (C2i);
  SD2DigitRBA_2 U2 (Z__dp[2], Z__dn[2], C1_3, C2_3, X__dp[2], X__dn[2], Y__dp[2], Y__dn[2], C1i, C2i);
  SD2DigitRBA_3 U3 (Z__dp[3], Z__dn[3], C1_4, C2_4, X__dp[3], X__dn[3], Y__dp[3], Y__dn[3], C1_3, C2_3);
  SD2DigitRBA_4 U4 (Z__dp[4], Z__dn[4], C1_5, C2_5, X__dp[4], X__dn[4], Y__dp[4], Y__dn[4], C1_4, C2_4);
  SD2DigitRBA_5 U5 (Z__dp[5], Z__dn[5], C1_6, C2_6, X__dp[5], X__dn[5], Y__dp[5], Y__dn[5], C1_5, C2_5);
  SD2DigitRBA_6 U6 (Z__dp[6], Z__dn[6], C1_7, C2_7, X__dp[6], X__dn[6], Y__dp[6], Y__dn[6], C1_6, C2_6);
  SD2DigitRBA_7 U7 (Z__dp[7], Z__dn[7], C1_8, C2_8, X__dp[7], X__dn[7], Y__dp[7], Y__dn[7], C1_7, C2_7);
  SD2DigitRBA_8 U8 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1_8, C2_8);
  SD2DigitRBA_9 U9 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U10 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U11 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitCom_12 U12 (Z__dp[12], Z__dn[12], C2_12, C1_12);
endmodule

module SD2PureRBA_13_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [14:4] Z__dp, Z__dn;
  input [13:4] X__dp, X__dn;
  input [13:4] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
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
  SD2DigitCom_14 U12 (Z__dp[14], Z__dn[14], C2_14, C1_14);
endmodule

module SD2PureRBA_15_6 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [16:6] Z__dp, Z__dn;
  input [15:6] X__dp, X__dn;
  input [15:6] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
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
  wire C2_7;
  wire C2_8;
  wire C2_9;
  wire C2i;
  UBZero_6_6 U0 (C1i);
  NUBZero_6_6 U1 (C2i);
  SD2DigitRBA_6 U2 (Z__dp[6], Z__dn[6], C1_7, C2_7, X__dp[6], X__dn[6], Y__dp[6], Y__dn[6], C1i, C2i);
  SD2DigitRBA_7 U3 (Z__dp[7], Z__dn[7], C1_8, C2_8, X__dp[7], X__dn[7], Y__dp[7], Y__dn[7], C1_7, C2_7);
  SD2DigitRBA_8 U4 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1_8, C2_8);
  SD2DigitRBA_9 U5 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U6 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U7 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitRBA_12 U8 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1_12, C2_12);
  SD2DigitRBA_13 U9 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U10 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitRBA_15 U11 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitCom_16 U12 (Z__dp[16], Z__dn[16], C2_16, C1_16);
endmodule

module SD2PureRBA_16_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [17:1] Z__dp, Z__dn;
  input [16:1] X__dp, X__dn;
  input [16:1] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
  wire C1_14;
  wire C1_15;
  wire C1_16;
  wire C1_17;
  wire C1_2;
  wire C1_3;
  wire C1_4;
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
  wire C2_2;
  wire C2_3;
  wire C2_4;
  wire C2_5;
  wire C2_6;
  wire C2_7;
  wire C2_8;
  wire C2_9;
  wire C2i;
  UBZero_1_1 U0 (C1i);
  NUBZero_1_1 U1 (C2i);
  SD2DigitRBA_1 U2 (Z__dp[1], Z__dn[1], C1_2, C2_2, X__dp[1], X__dn[1], Y__dp[1], Y__dn[1], C1i, C2i);
  SD2DigitRBA_2 U3 (Z__dp[2], Z__dn[2], C1_3, C2_3, X__dp[2], X__dn[2], Y__dp[2], Y__dn[2], C1_2, C2_2);
  SD2DigitRBA_3 U4 (Z__dp[3], Z__dn[3], C1_4, C2_4, X__dp[3], X__dn[3], Y__dp[3], Y__dn[3], C1_3, C2_3);
  SD2DigitRBA_4 U5 (Z__dp[4], Z__dn[4], C1_5, C2_5, X__dp[4], X__dn[4], Y__dp[4], Y__dn[4], C1_4, C2_4);
  SD2DigitRBA_5 U6 (Z__dp[5], Z__dn[5], C1_6, C2_6, X__dp[5], X__dn[5], Y__dp[5], Y__dn[5], C1_5, C2_5);
  SD2DigitRBA_6 U7 (Z__dp[6], Z__dn[6], C1_7, C2_7, X__dp[6], X__dn[6], Y__dp[6], Y__dn[6], C1_6, C2_6);
  SD2DigitRBA_7 U8 (Z__dp[7], Z__dn[7], C1_8, C2_8, X__dp[7], X__dn[7], Y__dp[7], Y__dn[7], C1_7, C2_7);
  SD2DigitRBA_8 U9 (Z__dp[8], Z__dn[8], C1_9, C2_9, X__dp[8], X__dn[8], Y__dp[8], Y__dn[8], C1_8, C2_8);
  SD2DigitRBA_9 U10 (Z__dp[9], Z__dn[9], C1_10, C2_10, X__dp[9], X__dn[9], Y__dp[9], Y__dn[9], C1_9, C2_9);
  SD2DigitRBA_10 U11 (Z__dp[10], Z__dn[10], C1_11, C2_11, X__dp[10], X__dn[10], Y__dp[10], Y__dn[10], C1_10, C2_10);
  SD2DigitRBA_11 U12 (Z__dp[11], Z__dn[11], C1_12, C2_12, X__dp[11], X__dn[11], Y__dp[11], Y__dn[11], C1_11, C2_11);
  SD2DigitRBA_12 U13 (Z__dp[12], Z__dn[12], C1_13, C2_13, X__dp[12], X__dn[12], Y__dp[12], Y__dn[12], C1_12, C2_12);
  SD2DigitRBA_13 U14 (Z__dp[13], Z__dn[13], C1_14, C2_14, X__dp[13], X__dn[13], Y__dp[13], Y__dn[13], C1_13, C2_13);
  SD2DigitRBA_14 U15 (Z__dp[14], Z__dn[14], C1_15, C2_15, X__dp[14], X__dn[14], Y__dp[14], Y__dn[14], C1_14, C2_14);
  SD2DigitRBA_15 U16 (Z__dp[15], Z__dn[15], C1_16, C2_16, X__dp[15], X__dn[15], Y__dp[15], Y__dn[15], C1_15, C2_15);
  SD2DigitRBA_16 U17 (Z__dp[16], Z__dn[16], C1_17, C2_17, X__dp[16], X__dn[16], Y__dp[16], Y__dn[16], C1_16, C2_16);
  SD2DigitCom_17 U18 (Z__dp[17], Z__dn[17], C2_17, C1_17);
endmodule

module SD2RBA_12_0_13_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [14:0] Z__dp, Z__dn;
  input [12:0] X__dp, X__dn;
  input [13:4] Y__dp, Y__dn;
  wire [13:0] XX__dp, XX__dn;
  wire Zero__dp, Zero__dn;
  SD2_PN_A_Zero_13_000 U0 (Zero__dp, Zero__dn);
  SD2_PN_ACMBIN_13_000 U1 (XX__dp[13:0], XX__dn[13:0], Zero__dp, Zero__dn, X__dp[12:0], X__dn[12:0]);
  SD2PureRBA_13_4 U2 (Z__dp[14:4], Z__dn[14:4], XX__dp[13:4], XX__dn[13:4], Y__dp[13:4], Y__dn[13:4]);
  SD2_PN_ACON_3_0 U3 (Z__dp[3:0], Z__dn[3:0], XX__dp[3:0], XX__dn[3:0]);
endmodule

module SD2RBA_14_0_16_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [17:0] Z__dp, Z__dn;
  input [14:0] X__dp, X__dn;
  input [16:1] Y__dp, Y__dn;
  wire [16:0] XX__dp, XX__dn;
  wire [16:15] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_16_000 U0 (Zero__dp[16:15], Zero__dn[16:15]);
  SD2_PN_ACMBIN_16_000 U1 (XX__dp[16:0], XX__dn[16:0], Zero__dp[16:15], Zero__dn[16:15], X__dp[14:0], X__dn[14:0]);
  SD2PureRBA_16_1 U2 (Z__dp[17:1], Z__dn[17:1], XX__dp[16:1], XX__dn[16:1], Y__dp[16:1], Y__dn[16:1]);
  SD2_PN_A1DCON_0 U3 (Z__dp[0], Z__dn[0], XX__dp[0], XX__dn[0]);
endmodule

module SD2RBA_15_6_8_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [16:1] Z__dp, Z__dn;
  input [15:6] X__dp, X__dn;
  input [8:1] Y__dp, Y__dn;
  wire [15:1] YY__dp, YY__dn;
  wire [15:9] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_15_000 U0 (Zero__dp[15:9], Zero__dn[15:9]);
  SD2_PN_ACMBIN_15_000 U1 (YY__dp[15:1], YY__dn[15:1], Zero__dp[15:9], Zero__dn[15:9], Y__dp[8:1], Y__dn[8:1]);
  SD2PureRBA_15_6 U2 (Z__dp[16:6], Z__dn[16:6], X__dp[15:6], X__dn[15:6], YY__dp[15:6], YY__dn[15:6]);
  SD2_PN_ACON_5_1 U3 (Z__dp[5:1], Z__dn[5:1], YY__dp[5:1], YY__dn[5:1]);
endmodule

module SD2RBA_9_0_11_2 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [12:0] Z__dp, Z__dn;
  input [9:0] X__dp, X__dn;
  input [11:2] Y__dp, Y__dn;
  wire [11:0] XX__dp, XX__dn;
  wire [11:10] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_11_000 U0 (Zero__dp[11:10], Zero__dn[11:10]);
  SD2_PN_ACMBIN_11_000 U1 (XX__dp[11:0], XX__dn[11:0], Zero__dp[11:10], Zero__dn[11:10], X__dp[9:0], X__dn[9:0]);
  SD2PureRBA_11_2 U2 (Z__dp[12:2], Z__dn[12:2], XX__dp[11:2], XX__dn[11:2], Y__dp[11:2], Y__dn[11:2]);
  SD2_PN_ACON_1_0 U3 (Z__dp[1:0], Z__dn[1:0], XX__dp[1:0], XX__dn[1:0]);
endmodule

module SD2RBTR_9_0_11_2_000 (Z__dp, Z__dn, PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  output [17:0] Z__dp, Z__dn;
  input [9:0] PP0__dp, PP0__dn;
  input [11:2] PP1__dp, PP1__dn;
  input [13:4] PP2__dp, PP2__dn;
  input [15:6] PP3__dp, PP3__dn;
  input [8:1] PP4__dp, PP4__dn;
  wire [12:0] W1_0__dp, W1_0__dn;
  wire [14:0] W2_1__dp, W2_1__dn;
  wire [16:1] W2_2__dp, W2_2__dn;
  SD2RBA_9_0_11_2 U0 (W1_0__dp[12:0], W1_0__dn[12:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn);
  SD2RBA_12_0_13_4 U1 (W2_1__dp[14:0], W2_1__dn[14:0], W1_0__dp[12:0], W1_0__dn[12:0], PP2__dp, PP2__dn);
  SD2RBA_15_6_8_1 U2 (W2_2__dp[16:1], W2_2__dn[16:1], PP3__dp, PP3__dn, PP4__dp, PP4__dn);
  SD2RBA_14_0_16_1 U3 (Z__dp[17:0], Z__dn[17:0], W2_1__dp[14:0], W2_1__dn[14:0], W2_2__dp[16:1], W2_2__dn[16:1]);
endmodule

module SD2TCConv_HCA_17_000 (O, I__dp, I__dn);
  output [18:0] O;
  input [17:0] I__dp, I__dn;
  wire C;
  wire [18:0] S;
  wire [17:0] X;
  wire [17:0] Y;
  wire Z;
  SD2Decom_PN_17_0 U0 (X, Y, I__dp, I__dn);
  UBOne_0 U1 (C);
  UBPriHCA_17_0 U2 (S, X, Y, C);
  UBInv_18 U3 (Z, S[18]);
  TCCom_18_0 U4 (O, Z, S[17:0]);
endmodule

module SD2_PN_ACMBIN_11_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [11:0] O__dp, O__dn;
  input [11:10] IN0__dp, IN0__dn;
  input [9:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_11_10 U0 (O__dp[11:10], O__dn[11:10], IN0__dp, IN0__dn);
  SD2_PN_ACON_9_0 U1 (O__dp[9:0], O__dn[9:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_13_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [13:0] O__dp, O__dn;
  input IN0__dp, IN0__dn;
  input [12:0] IN1__dp, IN1__dn;
  SD2_PN_A1DCON_13 U0 (O__dp[13], O__dn[13], IN0__dp, IN0__dn);
  SD2_PN_ACON_12_0 U1 (O__dp[12:0], O__dn[12:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_15_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [15:1] O__dp, O__dn;
  input [15:9] IN0__dp, IN0__dn;
  input [8:1] IN1__dp, IN1__dn;
  SD2_PN_ACON_15_9 U0 (O__dp[15:9], O__dn[15:9], IN0__dp, IN0__dn);
  SD2_PN_ACON_8_1 U1 (O__dp[8:1], O__dn[8:1], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_16_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [16:0] O__dp, O__dn;
  input [16:15] IN0__dp, IN0__dn;
  input [14:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_16_15 U0 (O__dp[16:15], O__dn[16:15], IN0__dp, IN0__dn);
  SD2_PN_ACON_14_0 U1 (O__dp[14:0], O__dn[14:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACON_11_10 (O__dp, O__dn, I__dp, I__dn);
  output [11:10] O__dp, O__dn;
  input [11:10] I__dp, I__dn;
  SD2_PN_A1DCON_10 U0 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U1 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
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

module SD2_PN_ACON_14_0 (O__dp, O__dn, I__dp, I__dn);
  output [14:0] O__dp, O__dn;
  input [14:0] I__dp, I__dn;
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
endmodule

module SD2_PN_ACON_15_9 (O__dp, O__dn, I__dp, I__dn);
  output [15:9] O__dp, O__dn;
  input [15:9] I__dp, I__dn;
  SD2_PN_A1DCON_9 U0 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U1 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U2 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U3 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
  SD2_PN_A1DCON_13 U4 (O__dp[13], O__dn[13], I__dp[13], I__dn[13]);
  SD2_PN_A1DCON_14 U5 (O__dp[14], O__dn[14], I__dp[14], I__dn[14]);
  SD2_PN_A1DCON_15 U6 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
endmodule

module SD2_PN_ACON_16_15 (O__dp, O__dn, I__dp, I__dn);
  output [16:15] O__dp, O__dn;
  input [16:15] I__dp, I__dn;
  SD2_PN_A1DCON_15 U0 (O__dp[15], O__dn[15], I__dp[15], I__dn[15]);
  SD2_PN_A1DCON_16 U1 (O__dp[16], O__dn[16], I__dp[16], I__dn[16]);
endmodule

module SD2_PN_ACON_1_0 (O__dp, O__dn, I__dp, I__dn);
  output [1:0] O__dp, O__dn;
  input [1:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
endmodule

module SD2_PN_ACON_3_0 (O__dp, O__dn, I__dp, I__dn);
  output [3:0] O__dp, O__dn;
  input [3:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U2 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U3 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
endmodule

module SD2_PN_ACON_5_1 (O__dp, O__dn, I__dp, I__dn);
  output [5:1] O__dp, O__dn;
  input [5:1] I__dp, I__dn;
  SD2_PN_A1DCON_1 U0 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U1 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U2 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U3 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U4 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
endmodule

module SD2_PN_ACON_8_1 (O__dp, O__dn, I__dp, I__dn);
  output [8:1] O__dp, O__dn;
  input [8:1] I__dp, I__dn;
  SD2_PN_A1DCON_1 U0 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U1 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U2 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U3 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U4 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U5 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
  SD2_PN_A1DCON_7 U6 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U7 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
endmodule

module SD2_PN_ACON_9_0 (O__dp, O__dn, I__dp, I__dn);
  output [9:0] O__dp, O__dn;
  input [9:0] I__dp, I__dn;
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
endmodule

module UBCMBIN_11_11_9_2 (O, IN0, IN1);
  output [11:2] O;
  input IN0;
  input [9:2] IN1;
  UB1DCON_11 U0 (O[11], IN0);
  UBZero_10_10 U1 (O[10]);
  UBCON_9_2 U2 (O[9:2], IN1);
endmodule

module UBCMBIN_13_13_11_000 (O, IN0, IN1);
  output [13:4] O;
  input IN0;
  input [11:4] IN1;
  UB1DCON_13 U0 (O[13], IN0);
  UBZero_12_12 U1 (O[12]);
  UBCON_11_4 U2 (O[11:4], IN1);
endmodule

module UBCMBIN_15_15_13_000 (O, IN0, IN1);
  output [15:6] O;
  input IN0;
  input [13:6] IN1;
  UB1DCON_15 U0 (O[15], IN0);
  UBZero_14_14 U1 (O[14]);
  UBCON_13_6 U2 (O[13:6], IN1);
endmodule

module UBCMBIN_9_9_7_0 (O, IN0, IN1);
  output [9:0] O;
  input IN0;
  input [7:0] IN1;
  UB1DCON_9 U0 (O[9], IN0);
  UBZero_8_8 U1 (O[8]);
  UBCON_7_0 U2 (O[7:0], IN1);
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

module UBCON_13_6 (O, I);
  output [13:6] O;
  input [13:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
  UB1DCON_8 U2 (O[8], I[8]);
  UB1DCON_9 U3 (O[9], I[9]);
  UB1DCON_10 U4 (O[10], I[10]);
  UB1DCON_11 U5 (O[11], I[11]);
  UB1DCON_12 U6 (O[12], I[12]);
  UB1DCON_13 U7 (O[13], I[13]);
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

module UBMinusVPPG_7_0_1 (P, PP, C, I1, I2);
  output C;
  output P;
  output [8:1] PP;
  input [7:0] I1;
  input I2;
  wire S;
  wire [8:1] W;
  UB1BPPG_0_1 U0 (W[1], I1[0], I2);
  UB1BPPG_1_1 U1 (W[2], I1[1], I2);
  UB1BPPG_2_1 U2 (W[3], I1[2], I2);
  UB1BPPG_3_1 U3 (W[4], I1[3], I2);
  UB1BPPG_4_1 U4 (W[5], I1[4], I2);
  UB1BPPG_5_1 U5 (W[6], I1[5], I2);
  UB1BPPG_6_1 U6 (W[7], I1[6], I2);
  UB1BPPG_7_1 U7 (W[8], I1[7], I2);
  SignP_0 U8 (S);
  UBNUBWCON_8_1 U9 (PP, W, S);
  NUBBBG_1 U10 (C, S);
  UBHBBG_9 U11 (P, S);
endmodule

module UBMinusVPPG_7_0_3 (P, PP, C, I1, I2);
  output C;
  output P;
  output [10:3] PP;
  input [7:0] I1;
  input I2;
  wire S;
  wire [10:3] W;
  UB1BPPG_0_3 U0 (W[3], I1[0], I2);
  UB1BPPG_1_3 U1 (W[4], I1[1], I2);
  UB1BPPG_2_3 U2 (W[5], I1[2], I2);
  UB1BPPG_3_3 U3 (W[6], I1[3], I2);
  UB1BPPG_4_3 U4 (W[7], I1[4], I2);
  UB1BPPG_5_3 U5 (W[8], I1[5], I2);
  UB1BPPG_6_3 U6 (W[9], I1[6], I2);
  UB1BPPG_7_3 U7 (W[10], I1[7], I2);
  SignP_0 U8 (S);
  UBNUBWCON_10_3 U9 (PP, W, S);
  NUBBBG_3 U10 (C, S);
  UBHBBG_11 U11 (P, S);
endmodule

module UBMinusVPPG_7_0_5 (P, PP, C, I1, I2);
  output C;
  output P;
  output [12:5] PP;
  input [7:0] I1;
  input I2;
  wire S;
  wire [12:5] W;
  UB1BPPG_0_5 U0 (W[5], I1[0], I2);
  UB1BPPG_1_5 U1 (W[6], I1[1], I2);
  UB1BPPG_2_5 U2 (W[7], I1[2], I2);
  UB1BPPG_3_5 U3 (W[8], I1[3], I2);
  UB1BPPG_4_5 U4 (W[9], I1[4], I2);
  UB1BPPG_5_5 U5 (W[10], I1[5], I2);
  UB1BPPG_6_5 U6 (W[11], I1[6], I2);
  UB1BPPG_7_5 U7 (W[12], I1[7], I2);
  SignP_0 U8 (S);
  UBNUBWCON_12_5 U9 (PP, W, S);
  NUBBBG_5 U10 (C, S);
  UBHBBG_13 U11 (P, S);
endmodule

module UBMinusVPPG_7_0_7 (P, PP, C, I1, I2);
  output C;
  output P;
  output [14:7] PP;
  input [7:0] I1;
  input I2;
  wire S;
  wire [14:7] W;
  UB1BPPG_0_7 U0 (W[7], I1[0], I2);
  UB1BPPG_1_7 U1 (W[8], I1[1], I2);
  UB1BPPG_2_7 U2 (W[9], I1[2], I2);
  UB1BPPG_3_7 U3 (W[10], I1[3], I2);
  UB1BPPG_4_7 U4 (W[11], I1[4], I2);
  UB1BPPG_5_7 U5 (W[12], I1[5], I2);
  UB1BPPG_6_7 U6 (W[13], I1[6], I2);
  UB1BPPG_7_7 U7 (W[14], I1[7], I2);
  SignP_0 U8 (S);
  UBNUBWCON_14_7 U9 (PP, W, S);
  NUBBBG_7 U10 (C, S);
  UBHBBG_15 U11 (P, S);
endmodule

module UBNUBWCON_10_3 (O, I, S);
  output [10:3] O;
  input [10:3] I;
  input S;
  BWCPN_3 U0 (O[3], I[3], S);
  BWCPN_4 U1 (O[4], I[4], S);
  BWCPN_5 U2 (O[5], I[5], S);
  BWCPN_6 U3 (O[6], I[6], S);
  BWCPN_7 U4 (O[7], I[7], S);
  BWCPN_8 U5 (O[8], I[8], S);
  BWCPN_9 U6 (O[9], I[9], S);
  BWCPN_10 U7 (O[10], I[10], S);
endmodule

module UBNUBWCON_12_5 (O, I, S);
  output [12:5] O;
  input [12:5] I;
  input S;
  BWCPN_5 U0 (O[5], I[5], S);
  BWCPN_6 U1 (O[6], I[6], S);
  BWCPN_7 U2 (O[7], I[7], S);
  BWCPN_8 U3 (O[8], I[8], S);
  BWCPN_9 U4 (O[9], I[9], S);
  BWCPN_10 U5 (O[10], I[10], S);
  BWCPN_11 U6 (O[11], I[11], S);
  BWCPN_12 U7 (O[12], I[12], S);
endmodule

module UBNUBWCON_14_7 (O, I, S);
  output [14:7] O;
  input [14:7] I;
  input S;
  BWCPN_7 U0 (O[7], I[7], S);
  BWCPN_8 U1 (O[8], I[8], S);
  BWCPN_9 U2 (O[9], I[9], S);
  BWCPN_10 U3 (O[10], I[10], S);
  BWCPN_11 U4 (O[11], I[11], S);
  BWCPN_12 U5 (O[12], I[12], S);
  BWCPN_13 U6 (O[13], I[13], S);
  BWCPN_14 U7 (O[14], I[14], S);
endmodule

module UBNUBWCON_8_1 (O, I, S);
  output [8:1] O;
  input [8:1] I;
  input S;
  BWCPN_1 U0 (O[1], I[1], S);
  BWCPN_2 U1 (O[2], I[2], S);
  BWCPN_3 U2 (O[3], I[3], S);
  BWCPN_4 U3 (O[4], I[4], S);
  BWCPN_5 U4 (O[5], I[5], S);
  BWCPN_6 U5 (O[6], I[6], S);
  BWCPN_7 U6 (O[7], I[7], S);
  BWCPN_8 U7 (O[8], I[8], S);
endmodule

module UBNUB_SD2Comp_11_000 (O__dp, O__dn, I_p, I_n);
  output [11:2] O__dp, O__dn;
  input [10:3] I_n;
  input [11:2] I_p;
  wire [11:2] N;
  wire Z_h;
  wire Z_l;
  NUBZero_11_11 U0 (Z_h);
  NUBZero_2_2 U1 (Z_l);
  NUBCMBIN_11_11_10000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_001 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_13_000 (O__dp, O__dn, I_p, I_n);
  output [13:4] O__dp, O__dn;
  input [12:5] I_n;
  input [13:4] I_p;
  wire [13:4] N;
  wire Z_h;
  wire Z_l;
  NUBZero_13_13 U0 (Z_h);
  NUBZero_4_4 U1 (Z_l);
  NUBCMBIN_13_13_12000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_002 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_15_000 (O__dp, O__dn, I_p, I_n);
  output [15:6] O__dp, O__dn;
  input [14:7] I_n;
  input [15:6] I_p;
  wire [15:6] N;
  wire Z_h;
  wire Z_l;
  NUBZero_15_15 U0 (Z_h);
  NUBZero_6_6 U1 (Z_l);
  NUBCMBIN_15_15_14000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_003 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_9_0000 (O__dp, O__dn, I_p, I_n);
  output [9:0] O__dp, O__dn;
  input [8:1] I_n;
  input [9:0] I_p;
  wire [9:0] N;
  wire Z_h;
  wire Z_l;
  NUBZero_9_9 U0 (Z_h);
  NUBZero_0_0 U1 (Z_l);
  NUBCMBIN_9_9_8_1_000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_000 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2PriComp_000 (O__dp, O__dn, I_p, I_n);
  output [9:0] O__dp, O__dn;
  input [9:0] I_n;
  input [9:0] I_p;
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
endmodule

module UBNUB_SD2PriComp_001 (O__dp, O__dn, I_p, I_n);
  output [11:2] O__dp, O__dn;
  input [11:2] I_n;
  input [11:2] I_p;
  SD2DigitCom_2 U0 (O__dp[2], O__dn[2], I_n[2], I_p[2]);
  SD2DigitCom_3 U1 (O__dp[3], O__dn[3], I_n[3], I_p[3]);
  SD2DigitCom_4 U2 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U3 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U4 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U5 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U6 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U7 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U8 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U9 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
endmodule

module UBNUB_SD2PriComp_002 (O__dp, O__dn, I_p, I_n);
  output [13:4] O__dp, O__dn;
  input [13:4] I_n;
  input [13:4] I_p;
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
endmodule

module UBNUB_SD2PriComp_003 (O__dp, O__dn, I_p, I_n);
  output [15:6] O__dp, O__dn;
  input [15:6] I_n;
  input [15:6] I_p;
  SD2DigitCom_6 U0 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U1 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U2 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U3 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U4 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U5 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
  SD2DigitCom_12 U6 (O__dp[12], O__dn[12], I_n[12], I_p[12]);
  SD2DigitCom_13 U7 (O__dp[13], O__dn[13], I_n[13], I_p[13]);
  SD2DigitCom_14 U8 (O__dp[14], O__dn[14], I_n[14], I_p[14]);
  SD2DigitCom_15 U9 (O__dp[15], O__dn[15], I_n[15], I_p[15]);
endmodule

module UBSPPG_7_0_7_0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, PP4__dp, PP4__dn, I1, I2);
  output [9:0] PP0__dp, PP0__dn;
  output [11:2] PP1__dp, PP1__dn;
  output [13:4] PP2__dp, PP2__dn;
  output [15:6] PP3__dp, PP3__dn;
  output [8:1] PP4__dp, PP4__dn;
  input [7:0] I1;
  input [7:0] I2;
  wire [7:1] MI_B;
  wire NCO0;
  wire NCO1;
  wire NCO2;
  wire NCO3;
  wire [8:1] NPP0;
  wire [10:3] NPP1;
  wire [12:5] NPP2;
  wire [14:7] NPP3;
  wire POG0;
  wire POG1;
  wire POG2;
  wire POG3;
  wire [7:0] PPP0;
  wire [9:2] PPP1;
  wire [11:4] PPP2;
  wire [13:6] PPP3;
  wire [9:0] PP_p0;
  wire [11:2] PP_p1;
  wire [13:4] PP_p2;
  wire [15:6] PP_p3;
  wire ZE;
  UBVPPG_7_0_0 U0 (PPP0, I1, I2[0]);
  UBMinusVPPG_7_0_1 U1 (POG0, NPP0, NCO0, I1, I2[1]);
  UBCMBIN_9_9_7_0 U2 (PP_p0, POG0, PPP0);
  UBNUB_SD2Comp_9_0000 U3 (PP0__dp[9:0], PP0__dn[9:0], PP_p0, NPP0);
  UBVPPG_7_0_2 U4 (PPP1, I1, I2[2]);
  UBMinusVPPG_7_0_3 U5 (POG1, NPP1, NCO1, I1, I2[3]);
  UBCMBIN_11_11_9_2 U6 (PP_p1, POG1, PPP1);
  UBNUB_SD2Comp_11_000 U7 (PP1__dp[11:2], PP1__dn[11:2], PP_p1, NPP1);
  UBVPPG_7_0_4 U8 (PPP2, I1, I2[4]);
  UBMinusVPPG_7_0_5 U9 (POG2, NPP2, NCO2, I1, I2[5]);
  UBCMBIN_13_13_11_000 U10 (PP_p2, POG2, PPP2);
  UBNUB_SD2Comp_13_000 U11 (PP2__dp[13:4], PP2__dn[13:4], PP_p2, NPP2);
  UBVPPG_7_0_6 U12 (PPP3, I1, I2[6]);
  UBMinusVPPG_7_0_7 U13 (POG3, NPP3, NCO3, I1, I2[7]);
  UBCMBIN_15_15_13_000 U14 (PP_p3, POG3, PPP3);
  UBNUB_SD2Comp_15_000 U15 (PP3__dp[15:6], PP3__dn[15:6], PP_p3, NPP3);
  NUBCMBIN_7_7_5_5_000 U16 (MI_B, NCO3, NCO2, NCO1, NCO0);
  UBZero_8_8 U17 (ZE);
  NTCSD2Conv_8_1 U18 (PP4__dp[8:1], PP4__dn[8:1], ZE, MI_B);
endmodule

module UBVPPG_7_0_0 (O, IN1, IN2);
  output [7:0] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_0 U0 (O[0], IN1[0], IN2);
  UB1BPPG_1_0 U1 (O[1], IN1[1], IN2);
  UB1BPPG_2_0 U2 (O[2], IN1[2], IN2);
  UB1BPPG_3_0 U3 (O[3], IN1[3], IN2);
  UB1BPPG_4_0 U4 (O[4], IN1[4], IN2);
  UB1BPPG_5_0 U5 (O[5], IN1[5], IN2);
  UB1BPPG_6_0 U6 (O[6], IN1[6], IN2);
  UB1BPPG_7_0 U7 (O[7], IN1[7], IN2);
endmodule

module UBVPPG_7_0_2 (O, IN1, IN2);
  output [9:2] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_2 U0 (O[2], IN1[0], IN2);
  UB1BPPG_1_2 U1 (O[3], IN1[1], IN2);
  UB1BPPG_2_2 U2 (O[4], IN1[2], IN2);
  UB1BPPG_3_2 U3 (O[5], IN1[3], IN2);
  UB1BPPG_4_2 U4 (O[6], IN1[4], IN2);
  UB1BPPG_5_2 U5 (O[7], IN1[5], IN2);
  UB1BPPG_6_2 U6 (O[8], IN1[6], IN2);
  UB1BPPG_7_2 U7 (O[9], IN1[7], IN2);
endmodule

module UBVPPG_7_0_4 (O, IN1, IN2);
  output [11:4] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_4 U0 (O[4], IN1[0], IN2);
  UB1BPPG_1_4 U1 (O[5], IN1[1], IN2);
  UB1BPPG_2_4 U2 (O[6], IN1[2], IN2);
  UB1BPPG_3_4 U3 (O[7], IN1[3], IN2);
  UB1BPPG_4_4 U4 (O[8], IN1[4], IN2);
  UB1BPPG_5_4 U5 (O[9], IN1[5], IN2);
  UB1BPPG_6_4 U6 (O[10], IN1[6], IN2);
  UB1BPPG_7_4 U7 (O[11], IN1[7], IN2);
endmodule

module UBVPPG_7_0_6 (O, IN1, IN2);
  output [13:6] O;
  input [7:0] IN1;
  input IN2;
  UB1BPPG_0_6 U0 (O[6], IN1[0], IN2);
  UB1BPPG_1_6 U1 (O[7], IN1[1], IN2);
  UB1BPPG_2_6 U2 (O[8], IN1[2], IN2);
  UB1BPPG_3_6 U3 (O[9], IN1[3], IN2);
  UB1BPPG_4_6 U4 (O[10], IN1[4], IN2);
  UB1BPPG_5_6 U5 (O[11], IN1[5], IN2);
  UB1BPPG_6_6 U6 (O[12], IN1[6], IN2);
  UB1BPPG_7_6 U7 (O[13], IN1[7], IN2);
endmodule

