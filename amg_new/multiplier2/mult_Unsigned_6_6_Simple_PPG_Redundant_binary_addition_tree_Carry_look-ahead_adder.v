/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_5_0_5_000

  Number system: Unsigned binary
  Multiplicand length: 6
  Multiplier length: 6
  Partial product generation: Simple PPG
  Partial product accumulation: Redundant binary addition tree
  Final stage addition: Carry look-ahead adder
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

module NUBBBG_1(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UBHBBG_7(O, S);
  output O;
  input S;
  assign O = ~ S;
endmodule

module UB1DCON_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
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

module NUBZero_7_7(O);
  output [7:7] O;
  assign O[7] = 0;
endmodule

module NUBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module NUB1DCON_7(O, I);
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

module NUBBBG_3(O, S);
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

module UB1DCON_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUBZero_9_9(O);
  output [9:9] O;
  assign O[9] = 0;
endmodule

module NUBZero_2_2(O);
  output [2:2] O;
  assign O[2] = 0;
endmodule

module NUB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module NUB1DCON_8(O, I);
  output O;
  input I;
  assign O = I;
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

module NUBBBG_5(O, S);
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

module NUBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
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

module NTCSD2Conv_6_1(O_p, O_n, I_T, I_R);
  output [6:1] O_p, O_n;
  input [5:1] I_R;
  input [6:6] I_T;
  assign O_p[6] = I_T;
  assign O_n[6] = 0;
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

module SD2_PN_A_Zero_9_8(O_p, O_n);
  output [9:8] O_p, O_n;
  assign O_p[8] = 0;
  assign O_n[8] = 0;
  assign O_p[9] = 0;
  assign O_n[9] = 0;
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

module SD2_PN_A_Zero_11_000(O_p, O_n);
  output [11:7] O_p, O_n;
  assign O_p[7] = 0;
  assign O_n[7] = 0;
  assign O_p[8] = 0;
  assign O_n[8] = 0;
  assign O_p[9] = 0;
  assign O_n[9] = 0;
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

module UBZero_4_4(O);
  output [4:4] O;
  assign O[4] = 0;
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

module SD2DigitCom_12(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2_PN_A_Zero_12_000(O_p, O_n);
  output [12:11] O_p, O_n;
  assign O_p[11] = 0;
  assign O_n[11] = 0;
  assign O_p[12] = 0;
  assign O_n[12] = 0;
endmodule

module SD2_PN_A1DCON_12(O_p, O_n, I_p, I_n);
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

module SD2DigitDecom_PN_010(X, Y, I_p, I_n);
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

module SD2DigitDecom_PN_011(X, Y, I_p, I_n);
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

module SD2DigitCom_13(O_p, O_n, I_n, I_p);
  output O_p, O_n;
  input I_n;
  input I_p;
  assign O_p = I_p;
  assign O_n = I_n;
endmodule

module SD2DigitDecom_PN_012(X, Y, I_p, I_n);
  output [0:0] X;
  output [0:0] Y;
  input [0:0] I_p, I_n;
  assign X = ~ I_n[0];
  assign Y = I_p[0];
endmodule

module SD2DigitDecom_PN_013(X, Y, I_p, I_n);
  output [13:13] X;
  output [13:13] Y;
  input [13:13] I_p, I_n;
  assign X = ~ I_n[13];
  assign Y = I_p[13];
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

module CLAUnit_14(C, G, P, Cin);
  output [14:1] C;
  input Cin;
  input [13:0] G;
  input [13:0] P;
  assign C[1] = G[0] | ( P[0] & Cin );
  assign C[2] = G[1] | ( P[1] & G[0] ) | ( P[1] & P[0] & Cin );
  assign C[3] = G[2] | ( P[2] & G[1] ) | ( P[2] & P[1] & G[0] ) | ( P[2] & P[1] & P[0] & Cin );
  assign C[4] = G[3] | ( P[3] & G[2] ) | ( P[3] & P[2] & G[1] ) | ( P[3] & P[2] & P[1] & G[0] ) | ( P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[5] = G[4] | ( P[4] & G[3] ) | ( P[4] & P[3] & G[2] ) | ( P[4] & P[3] & P[2] & G[1] ) | ( P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[6] = G[5] | ( P[5] & G[4] ) | ( P[5] & P[4] & G[3] ) | ( P[5] & P[4] & P[3] & G[2] ) | ( P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[5] & P[4] & P[3]
 & P[2] & P[1] & P[0] & Cin );
  assign C[7] = G[6] | ( P[6] & G[5] ) | ( P[6] & P[5] & G[4] ) | ( P[6] & P[5] & P[4] & G[3] ) | ( P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[6] & P[5] & P[4]
 & P[3] & P[2] & P[1] & G[0] ) | ( P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[8] = G[7] | ( P[7] & G[6] ) | ( P[7] & P[6] & G[5] ) | ( P[7] & P[6] & P[5] & G[4] ) | ( P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[7] & P[6] & P[5]
 & P[4] & P[3] & P[2] & G[1] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[9] = G[8] | ( P[8] & G[7] ) | ( P[8] & P[7] & G[6] ) | ( P[8] & P[7] & P[6] & G[5] ) | ( P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & G[2] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[8] & P[7] & P[6] & P[5] & P[4] & P[3]
 & P[2] & P[1] & P[0] & Cin );
  assign C[10] = G[9] | ( P[9] & G[8] ) | ( P[9] & P[8] & G[7] ) | ( P[9] & P[8] & P[7] & G[6] ) | ( P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[9] & P[8] & P[7]
 & P[6] & P[5] & P[4] & G[3] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4]
 & P[3] & P[2] & P[1] & G[0] ) | ( P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[11] = G[10] | ( P[10] & G[9] ) | ( P[10] & P[9] & G[8] ) | ( P[10] & P[9] & P[8] & G[7] ) | ( P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[10] & P[9] & P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] &
 Cin );
  assign C[12] = G[11] | ( P[11] & G[10] ) | ( P[11] & P[10] & G[9] ) | ( P[11] & P[10] & P[9] & G[8] ) | ( P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[11]
 & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[11] & P[10] & P[9]
 & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3]
 & P[2] & P[1] & G[0] ) | ( P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
  assign C[13] = G[12] | ( P[12] & G[11] ) | ( P[12] & P[11] & G[10] ) | ( P[12] & P[11] & P[10] & G[9] ) | ( P[12] & P[11] & P[10] & P[9] & G[8] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[12]
 & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[12] & P[11] & P[10]
 & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4]
 & P[3] & P[2] & G[1] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2]
 & P[1] & P[0] & Cin );
  assign C[14] = G[13] | ( P[13] & G[12] ) | ( P[13] & P[12] & G[11] ) | ( P[13] & P[12] & P[11] & G[10] ) | ( P[13] & P[12] & P[11] & P[10] & G[9] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & G[8] ) |
 ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & G[7] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & G[6] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & G[5] ) | ( P[13] &
 P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & G[4] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & G[3] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] &
 P[7] & P[6] & P[5] & P[4] & P[3] & G[2] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & G[1] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6]
 & P[5] & P[4] & P[3] & P[2] & P[1] & G[0] ) | ( P[13] & P[12] & P[11] & P[10] & P[9] & P[8] & P[7] & P[6] & P[5] & P[4] & P[3] & P[2] & P[1] & P[0] & Cin );
endmodule

module UBPriCLA_13_0(S, X, Y, Cin);
  output [14:0] S;
  input Cin;
  input [13:0] X;
  input [13:0] Y;
  wire [14:1] C;
  wire [13:0] G;
  wire [13:0] P;
  assign S[0] = Cin ^ P[0];
  assign S[1] = C[1] ^ P[1];
  assign S[2] = C[2] ^ P[2];
  assign S[3] = C[3] ^ P[3];
  assign S[4] = C[4] ^ P[4];
  assign S[5] = C[5] ^ P[5];
  assign S[6] = C[6] ^ P[6];
  assign S[7] = C[7] ^ P[7];
  assign S[8] = C[8] ^ P[8];
  assign S[9] = C[9] ^ P[9];
  assign S[10] = C[10] ^ P[10];
  assign S[11] = C[11] ^ P[11];
  assign S[12] = C[12] ^ P[12];
  assign S[13] = C[13] ^ P[13];
  assign S[14] = C[14];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  GPGenerator U2 (G[2], P[2], X[2], Y[2]);
  GPGenerator U3 (G[3], P[3], X[3], Y[3]);
  GPGenerator U4 (G[4], P[4], X[4], Y[4]);
  GPGenerator U5 (G[5], P[5], X[5], Y[5]);
  GPGenerator U6 (G[6], P[6], X[6], Y[6]);
  GPGenerator U7 (G[7], P[7], X[7], Y[7]);
  GPGenerator U8 (G[8], P[8], X[8], Y[8]);
  GPGenerator U9 (G[9], P[9], X[9], Y[9]);
  GPGenerator U10 (G[10], P[10], X[10], Y[10]);
  GPGenerator U11 (G[11], P[11], X[11], Y[11]);
  GPGenerator U12 (G[12], P[12], X[12], Y[12]);
  GPGenerator U13 (G[13], P[13], X[13], Y[13]);
  CLAUnit_14 U14 (C, G, P, Cin);
endmodule

module UBInv_14(O, I);
  output [14:14] O;
  input [14:14] I;
  assign O[14] = ~ I[14];
endmodule

module TCCom_14_0(O, I1, I2);
  output [14:0] O;
  input [14:14] I1;
  input [13:0] I2;
  assign O[14] = I1;
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
endmodule

module Multiplier_5_0_5_000(P, IN1, IN2);
  output [11:0] P;
  input [5:0] IN1;
  input [5:0] IN2;
  wire [14:0] W;
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
  MultUB_STD_SD2RBT000 U0 (W, IN1, IN2);
endmodule

module MultUB_STD_SD2RBT000 (P, IN1, IN2);
  output [14:0] P;
  input [5:0] IN1;
  input [5:0] IN2;
  wire [7:0] PP0__dp, PP0__dn;
  wire [9:2] PP1__dp, PP1__dn;
  wire [11:4] PP2__dp, PP2__dn;
  wire [6:1] PP3__dp, PP3__dn;
  wire [13:0] Z__dp, Z__dn;
  UBSPPG_5_0_5_0 U0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, IN1, IN2);
  SD2RBTR_7_0_9_2_1000 U1 (Z__dp[13:0], Z__dn[13:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn);
  SD2TCConv_CLA_13_000 U2 (P, Z__dp, Z__dn);
endmodule

module NUBCMBIN_11_11_10000 (O, IN0, IN1, IN2);
  output [11:4] O;
  input IN0;
  input [10:5] IN1;
  input IN2;
  NUB1DCON_11 U0 (O[11], IN0);
  NUBCON_10_5 U1 (O[10:5], IN1);
  NUB1DCON_4 U2 (O[4], IN2);
endmodule

module NUBCMBIN_5_5_3_3_000 (O, IN0, IN1, IN2);
  output [5:1] O;
  input IN0;
  input IN1;
  input IN2;
  NUB1DCON_5 U0 (O[5], IN0);
  NUBZero_4_4 U1 (O[4]);
  NUB1DCON_3 U2 (O[3], IN1);
  NUBZero_2_2 U3 (O[2]);
  NUB1DCON_1 U4 (O[1], IN2);
endmodule

module NUBCMBIN_7_7_6_1_000 (O, IN0, IN1, IN2);
  output [7:0] O;
  input IN0;
  input [6:1] IN1;
  input IN2;
  NUB1DCON_7 U0 (O[7], IN0);
  NUBCON_6_1 U1 (O[6:1], IN1);
  NUB1DCON_0 U2 (O[0], IN2);
endmodule

module NUBCMBIN_9_9_8_3_000 (O, IN0, IN1, IN2);
  output [9:2] O;
  input IN0;
  input [8:3] IN1;
  input IN2;
  NUB1DCON_9 U0 (O[9], IN0);
  NUBCON_8_3 U1 (O[8:3], IN1);
  NUB1DCON_2 U2 (O[2], IN2);
endmodule

module NUBCON_10_5 (O, I);
  output [10:5] O;
  input [10:5] I;
  NUB1DCON_5 U0 (O[5], I[5]);
  NUB1DCON_6 U1 (O[6], I[6]);
  NUB1DCON_7 U2 (O[7], I[7]);
  NUB1DCON_8 U3 (O[8], I[8]);
  NUB1DCON_9 U4 (O[9], I[9]);
  NUB1DCON_10 U5 (O[10], I[10]);
endmodule

module NUBCON_6_1 (O, I);
  output [6:1] O;
  input [6:1] I;
  NUB1DCON_1 U0 (O[1], I[1]);
  NUB1DCON_2 U1 (O[2], I[2]);
  NUB1DCON_3 U2 (O[3], I[3]);
  NUB1DCON_4 U3 (O[4], I[4]);
  NUB1DCON_5 U4 (O[5], I[5]);
  NUB1DCON_6 U5 (O[6], I[6]);
endmodule

module NUBCON_8_3 (O, I);
  output [8:3] O;
  input [8:3] I;
  NUB1DCON_3 U0 (O[3], I[3]);
  NUB1DCON_4 U1 (O[4], I[4]);
  NUB1DCON_5 U2 (O[5], I[5]);
  NUB1DCON_6 U3 (O[6], I[6]);
  NUB1DCON_7 U4 (O[7], I[7]);
  NUB1DCON_8 U5 (O[8], I[8]);
endmodule

module SD2Decom_PN_13_0 (X, Y, I__dp, I__dn);
  output [13:0] X;
  output [13:0] Y;
  input [13:0] I__dp, I__dn;
  SD2DigitDecom_PN_012 U0 (X[0], Y[0], I__dp[0], I__dn[0]);
  SD2DigitDecom_PN_010 U1 (X[1], Y[1], I__dp[1], I__dn[1]);
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
  SD2DigitDecom_PN_011 U12 (X[12], Y[12], I__dp[12], I__dn[12]);
  SD2DigitDecom_PN_013 U13 (X[13], Y[13], I__dp[13], I__dn[13]);
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
  SD2DigitDecom_PN_010 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_010 U1 (Yn, Yp, Y__dp, Y__dn);
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
  SD2DigitDecom_PN_011 U0 (Xn, Xp, X__dp, X__dn);
  SD2DigitDecom_PN_011 U1 (Yn, Yp, Y__dp, Y__dn);
  UBFA_12 U2 (C1o, S1, Xn, Xp, Yn);
  UBFA_12 U3 (C2, S2, C1i, S1, Yp);
  UBInv_13 U4 (C2o, C2);
  SD2DigitCom_12 U5 (Z__dp, Z__dn, C2i, S2);
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

module SD2PureRBA_11_4 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [12:4] Z__dp, Z__dn;
  input [11:4] X__dp, X__dn;
  input [11:4] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_5;
  wire C1_6;
  wire C1_7;
  wire C1_8;
  wire C1_9;
  wire C1i;
  wire C2_10;
  wire C2_11;
  wire C2_12;
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
  SD2DigitCom_12 U10 (Z__dp[12], Z__dn[12], C2_12, C1_12);
endmodule

module SD2PureRBA_12_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [13:1] Z__dp, Z__dn;
  input [12:1] X__dp, X__dn;
  input [12:1] Y__dp, Y__dn;
  wire C1_10;
  wire C1_11;
  wire C1_12;
  wire C1_13;
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
  SD2DigitCom_13 U14 (Z__dp[13], Z__dn[13], C2_13, C1_13);
endmodule

module SD2PureRBA_9_2 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [10:2] Z__dp, Z__dn;
  input [9:2] X__dp, X__dn;
  input [9:2] Y__dp, Y__dn;
  wire C1_10;
  wire C1_3;
  wire C1_4;
  wire C1_5;
  wire C1_6;
  wire C1_7;
  wire C1_8;
  wire C1_9;
  wire C1i;
  wire C2_10;
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
  SD2DigitCom_10 U10 (Z__dp[10], Z__dn[10], C2_10, C1_10);
endmodule

module SD2RBA_10_0_12_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [13:0] Z__dp, Z__dn;
  input [10:0] X__dp, X__dn;
  input [12:1] Y__dp, Y__dn;
  wire [12:0] XX__dp, XX__dn;
  wire [12:11] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_12_000 U0 (Zero__dp[12:11], Zero__dn[12:11]);
  SD2_PN_ACMBIN_12_000 U1 (XX__dp[12:0], XX__dn[12:0], Zero__dp[12:11], Zero__dn[12:11], X__dp[10:0], X__dn[10:0]);
  SD2PureRBA_12_1 U2 (Z__dp[13:1], Z__dn[13:1], XX__dp[12:1], XX__dn[12:1], Y__dp[12:1], Y__dn[12:1]);
  SD2_PN_A1DCON_0 U3 (Z__dp[0], Z__dn[0], XX__dp[0], XX__dn[0]);
endmodule

module SD2RBA_11_4_6_1 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [12:1] Z__dp, Z__dn;
  input [11:4] X__dp, X__dn;
  input [6:1] Y__dp, Y__dn;
  wire [11:1] YY__dp, YY__dn;
  wire [11:7] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_11_000 U0 (Zero__dp[11:7], Zero__dn[11:7]);
  SD2_PN_ACMBIN_11_000 U1 (YY__dp[11:1], YY__dn[11:1], Zero__dp[11:7], Zero__dn[11:7], Y__dp[6:1], Y__dn[6:1]);
  SD2PureRBA_11_4 U2 (Z__dp[12:4], Z__dn[12:4], X__dp[11:4], X__dn[11:4], YY__dp[11:4], YY__dn[11:4]);
  SD2_PN_ACON_3_1 U3 (Z__dp[3:1], Z__dn[3:1], YY__dp[3:1], YY__dn[3:1]);
endmodule

module SD2RBA_7_0_9_2 (Z__dp, Z__dn, X__dp, X__dn, Y__dp, Y__dn);
  output [10:0] Z__dp, Z__dn;
  input [7:0] X__dp, X__dn;
  input [9:2] Y__dp, Y__dn;
  wire [9:0] XX__dp, XX__dn;
  wire [9:8] Zero__dp, Zero__dn;
  SD2_PN_A_Zero_9_8 U0 (Zero__dp[9:8], Zero__dn[9:8]);
  SD2_PN_ACMBIN_9_8000 U1 (XX__dp[9:0], XX__dn[9:0], Zero__dp[9:8], Zero__dn[9:8], X__dp[7:0], X__dn[7:0]);
  SD2PureRBA_9_2 U2 (Z__dp[10:2], Z__dn[10:2], XX__dp[9:2], XX__dn[9:2], Y__dp[9:2], Y__dn[9:2]);
  SD2_PN_ACON_1_0 U3 (Z__dp[1:0], Z__dn[1:0], XX__dp[1:0], XX__dn[1:0]);
endmodule

module SD2RBTR_7_0_9_2_1000 (Z__dp, Z__dn, PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn);
  output [13:0] Z__dp, Z__dn;
  input [7:0] PP0__dp, PP0__dn;
  input [9:2] PP1__dp, PP1__dn;
  input [11:4] PP2__dp, PP2__dn;
  input [6:1] PP3__dp, PP3__dn;
  wire [10:0] W1_0__dp, W1_0__dn;
  wire [12:1] W1_1__dp, W1_1__dn;
  SD2RBA_7_0_9_2 U0 (W1_0__dp[10:0], W1_0__dn[10:0], PP0__dp, PP0__dn, PP1__dp, PP1__dn);
  SD2RBA_11_4_6_1 U1 (W1_1__dp[12:1], W1_1__dn[12:1], PP2__dp, PP2__dn, PP3__dp, PP3__dn);
  SD2RBA_10_0_12_1 U2 (Z__dp[13:0], Z__dn[13:0], W1_0__dp[10:0], W1_0__dn[10:0], W1_1__dp[12:1], W1_1__dn[12:1]);
endmodule

module SD2TCConv_CLA_13_000 (O, I__dp, I__dn);
  output [14:0] O;
  input [13:0] I__dp, I__dn;
  wire C;
  wire [14:0] S;
  wire [13:0] X;
  wire [13:0] Y;
  wire Z;
  SD2Decom_PN_13_0 U0 (X, Y, I__dp, I__dn);
  UBOne_0 U1 (C);
  UBPriCLA_13_0 U2 (S, X, Y, C);
  UBInv_14 U3 (Z, S[14]);
  TCCom_14_0 U4 (O, Z, S[13:0]);
endmodule

module SD2_PN_ACMBIN_11_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [11:1] O__dp, O__dn;
  input [11:7] IN0__dp, IN0__dn;
  input [6:1] IN1__dp, IN1__dn;
  SD2_PN_ACON_11_7 U0 (O__dp[11:7], O__dn[11:7], IN0__dp, IN0__dn);
  SD2_PN_ACON_6_1 U1 (O__dp[6:1], O__dn[6:1], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_12_000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [12:0] O__dp, O__dn;
  input [12:11] IN0__dp, IN0__dn;
  input [10:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_12_11 U0 (O__dp[12:11], O__dn[12:11], IN0__dp, IN0__dn);
  SD2_PN_ACON_10_0 U1 (O__dp[10:0], O__dn[10:0], IN1__dp, IN1__dn);
endmodule

module SD2_PN_ACMBIN_9_8000 (O__dp, O__dn, IN0__dp, IN0__dn, IN1__dp, IN1__dn);
  output [9:0] O__dp, O__dn;
  input [9:8] IN0__dp, IN0__dn;
  input [7:0] IN1__dp, IN1__dn;
  SD2_PN_ACON_9_8 U0 (O__dp[9:8], O__dn[9:8], IN0__dp, IN0__dn);
  SD2_PN_ACON_7_0 U1 (O__dp[7:0], O__dn[7:0], IN1__dp, IN1__dn);
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

module SD2_PN_ACON_11_7 (O__dp, O__dn, I__dp, I__dn);
  output [11:7] O__dp, O__dn;
  input [11:7] I__dp, I__dn;
  SD2_PN_A1DCON_7 U0 (O__dp[7], O__dn[7], I__dp[7], I__dn[7]);
  SD2_PN_A1DCON_8 U1 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U2 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
  SD2_PN_A1DCON_10 U3 (O__dp[10], O__dn[10], I__dp[10], I__dn[10]);
  SD2_PN_A1DCON_11 U4 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
endmodule

module SD2_PN_ACON_12_11 (O__dp, O__dn, I__dp, I__dn);
  output [12:11] O__dp, O__dn;
  input [12:11] I__dp, I__dn;
  SD2_PN_A1DCON_11 U0 (O__dp[11], O__dn[11], I__dp[11], I__dn[11]);
  SD2_PN_A1DCON_12 U1 (O__dp[12], O__dn[12], I__dp[12], I__dn[12]);
endmodule

module SD2_PN_ACON_1_0 (O__dp, O__dn, I__dp, I__dn);
  output [1:0] O__dp, O__dn;
  input [1:0] I__dp, I__dn;
  SD2_PN_A1DCON_0 U0 (O__dp[0], O__dn[0], I__dp[0], I__dn[0]);
  SD2_PN_A1DCON_1 U1 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
endmodule

module SD2_PN_ACON_3_1 (O__dp, O__dn, I__dp, I__dn);
  output [3:1] O__dp, O__dn;
  input [3:1] I__dp, I__dn;
  SD2_PN_A1DCON_1 U0 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U1 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U2 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
endmodule

module SD2_PN_ACON_6_1 (O__dp, O__dn, I__dp, I__dn);
  output [6:1] O__dp, O__dn;
  input [6:1] I__dp, I__dn;
  SD2_PN_A1DCON_1 U0 (O__dp[1], O__dn[1], I__dp[1], I__dn[1]);
  SD2_PN_A1DCON_2 U1 (O__dp[2], O__dn[2], I__dp[2], I__dn[2]);
  SD2_PN_A1DCON_3 U2 (O__dp[3], O__dn[3], I__dp[3], I__dn[3]);
  SD2_PN_A1DCON_4 U3 (O__dp[4], O__dn[4], I__dp[4], I__dn[4]);
  SD2_PN_A1DCON_5 U4 (O__dp[5], O__dn[5], I__dp[5], I__dn[5]);
  SD2_PN_A1DCON_6 U5 (O__dp[6], O__dn[6], I__dp[6], I__dn[6]);
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

module SD2_PN_ACON_9_8 (O__dp, O__dn, I__dp, I__dn);
  output [9:8] O__dp, O__dn;
  input [9:8] I__dp, I__dn;
  SD2_PN_A1DCON_8 U0 (O__dp[8], O__dn[8], I__dp[8], I__dn[8]);
  SD2_PN_A1DCON_9 U1 (O__dp[9], O__dn[9], I__dp[9], I__dn[9]);
endmodule

module UBCMBIN_11_11_9_4 (O, IN0, IN1);
  output [11:4] O;
  input IN0;
  input [9:4] IN1;
  UB1DCON_11 U0 (O[11], IN0);
  UBZero_10_10 U1 (O[10]);
  UBCON_9_4 U2 (O[9:4], IN1);
endmodule

module UBCMBIN_7_7_5_0 (O, IN0, IN1);
  output [7:0] O;
  input IN0;
  input [5:0] IN1;
  UB1DCON_7 U0 (O[7], IN0);
  UBZero_6_6 U1 (O[6]);
  UBCON_5_0 U2 (O[5:0], IN1);
endmodule

module UBCMBIN_9_9_7_2 (O, IN0, IN1);
  output [9:2] O;
  input IN0;
  input [7:2] IN1;
  UB1DCON_9 U0 (O[9], IN0);
  UBZero_8_8 U1 (O[8]);
  UBCON_7_2 U2 (O[7:2], IN1);
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

module UBCON_7_2 (O, I);
  output [7:2] O;
  input [7:2] I;
  UB1DCON_2 U0 (O[2], I[2]);
  UB1DCON_3 U1 (O[3], I[3]);
  UB1DCON_4 U2 (O[4], I[4]);
  UB1DCON_5 U3 (O[5], I[5]);
  UB1DCON_6 U4 (O[6], I[6]);
  UB1DCON_7 U5 (O[7], I[7]);
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

module UBMinusVPPG_5_0_1 (P, PP, C, I1, I2);
  output C;
  output P;
  output [6:1] PP;
  input [5:0] I1;
  input I2;
  wire S;
  wire [6:1] W;
  UB1BPPG_0_1 U0 (W[1], I1[0], I2);
  UB1BPPG_1_1 U1 (W[2], I1[1], I2);
  UB1BPPG_2_1 U2 (W[3], I1[2], I2);
  UB1BPPG_3_1 U3 (W[4], I1[3], I2);
  UB1BPPG_4_1 U4 (W[5], I1[4], I2);
  UB1BPPG_5_1 U5 (W[6], I1[5], I2);
  SignP_0 U6 (S);
  UBNUBWCON_6_1 U7 (PP, W, S);
  NUBBBG_1 U8 (C, S);
  UBHBBG_7 U9 (P, S);
endmodule

module UBMinusVPPG_5_0_3 (P, PP, C, I1, I2);
  output C;
  output P;
  output [8:3] PP;
  input [5:0] I1;
  input I2;
  wire S;
  wire [8:3] W;
  UB1BPPG_0_3 U0 (W[3], I1[0], I2);
  UB1BPPG_1_3 U1 (W[4], I1[1], I2);
  UB1BPPG_2_3 U2 (W[5], I1[2], I2);
  UB1BPPG_3_3 U3 (W[6], I1[3], I2);
  UB1BPPG_4_3 U4 (W[7], I1[4], I2);
  UB1BPPG_5_3 U5 (W[8], I1[5], I2);
  SignP_0 U6 (S);
  UBNUBWCON_8_3 U7 (PP, W, S);
  NUBBBG_3 U8 (C, S);
  UBHBBG_9 U9 (P, S);
endmodule

module UBMinusVPPG_5_0_5 (P, PP, C, I1, I2);
  output C;
  output P;
  output [10:5] PP;
  input [5:0] I1;
  input I2;
  wire S;
  wire [10:5] W;
  UB1BPPG_0_5 U0 (W[5], I1[0], I2);
  UB1BPPG_1_5 U1 (W[6], I1[1], I2);
  UB1BPPG_2_5 U2 (W[7], I1[2], I2);
  UB1BPPG_3_5 U3 (W[8], I1[3], I2);
  UB1BPPG_4_5 U4 (W[9], I1[4], I2);
  UB1BPPG_5_5 U5 (W[10], I1[5], I2);
  SignP_0 U6 (S);
  UBNUBWCON_10_5 U7 (PP, W, S);
  NUBBBG_5 U8 (C, S);
  UBHBBG_11 U9 (P, S);
endmodule

module UBNUBWCON_10_5 (O, I, S);
  output [10:5] O;
  input [10:5] I;
  input S;
  BWCPN_5 U0 (O[5], I[5], S);
  BWCPN_6 U1 (O[6], I[6], S);
  BWCPN_7 U2 (O[7], I[7], S);
  BWCPN_8 U3 (O[8], I[8], S);
  BWCPN_9 U4 (O[9], I[9], S);
  BWCPN_10 U5 (O[10], I[10], S);
endmodule

module UBNUBWCON_6_1 (O, I, S);
  output [6:1] O;
  input [6:1] I;
  input S;
  BWCPN_1 U0 (O[1], I[1], S);
  BWCPN_2 U1 (O[2], I[2], S);
  BWCPN_3 U2 (O[3], I[3], S);
  BWCPN_4 U3 (O[4], I[4], S);
  BWCPN_5 U4 (O[5], I[5], S);
  BWCPN_6 U5 (O[6], I[6], S);
endmodule

module UBNUBWCON_8_3 (O, I, S);
  output [8:3] O;
  input [8:3] I;
  input S;
  BWCPN_3 U0 (O[3], I[3], S);
  BWCPN_4 U1 (O[4], I[4], S);
  BWCPN_5 U2 (O[5], I[5], S);
  BWCPN_6 U3 (O[6], I[6], S);
  BWCPN_7 U4 (O[7], I[7], S);
  BWCPN_8 U5 (O[8], I[8], S);
endmodule

module UBNUB_SD2Comp_11_000 (O__dp, O__dn, I_p, I_n);
  output [11:4] O__dp, O__dn;
  input [10:5] I_n;
  input [11:4] I_p;
  wire [11:4] N;
  wire Z_h;
  wire Z_l;
  NUBZero_11_11 U0 (Z_h);
  NUBZero_4_4 U1 (Z_l);
  NUBCMBIN_11_11_10000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_002 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_7_0000 (O__dp, O__dn, I_p, I_n);
  output [7:0] O__dp, O__dn;
  input [6:1] I_n;
  input [7:0] I_p;
  wire [7:0] N;
  wire Z_h;
  wire Z_l;
  NUBZero_7_7 U0 (Z_h);
  NUBZero_0_0 U1 (Z_l);
  NUBCMBIN_7_7_6_1_000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_000 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2Comp_9_2000 (O__dp, O__dn, I_p, I_n);
  output [9:2] O__dp, O__dn;
  input [8:3] I_n;
  input [9:2] I_p;
  wire [9:2] N;
  wire Z_h;
  wire Z_l;
  NUBZero_9_9 U0 (Z_h);
  NUBZero_2_2 U1 (Z_l);
  NUBCMBIN_9_9_8_3_000 U2 (N, Z_h, I_n, Z_l);
  UBNUB_SD2PriComp_001 U3 (O__dp, O__dn, I_p, N);
endmodule

module UBNUB_SD2PriComp_000 (O__dp, O__dn, I_p, I_n);
  output [7:0] O__dp, O__dn;
  input [7:0] I_n;
  input [7:0] I_p;
  SD2DigitCom_0 U0 (O__dp[0], O__dn[0], I_n[0], I_p[0]);
  SD2DigitCom_1 U1 (O__dp[1], O__dn[1], I_n[1], I_p[1]);
  SD2DigitCom_2 U2 (O__dp[2], O__dn[2], I_n[2], I_p[2]);
  SD2DigitCom_3 U3 (O__dp[3], O__dn[3], I_n[3], I_p[3]);
  SD2DigitCom_4 U4 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U5 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U6 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U7 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
endmodule

module UBNUB_SD2PriComp_001 (O__dp, O__dn, I_p, I_n);
  output [9:2] O__dp, O__dn;
  input [9:2] I_n;
  input [9:2] I_p;
  SD2DigitCom_2 U0 (O__dp[2], O__dn[2], I_n[2], I_p[2]);
  SD2DigitCom_3 U1 (O__dp[3], O__dn[3], I_n[3], I_p[3]);
  SD2DigitCom_4 U2 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U3 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U4 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U5 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U6 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U7 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
endmodule

module UBNUB_SD2PriComp_002 (O__dp, O__dn, I_p, I_n);
  output [11:4] O__dp, O__dn;
  input [11:4] I_n;
  input [11:4] I_p;
  SD2DigitCom_4 U0 (O__dp[4], O__dn[4], I_n[4], I_p[4]);
  SD2DigitCom_5 U1 (O__dp[5], O__dn[5], I_n[5], I_p[5]);
  SD2DigitCom_6 U2 (O__dp[6], O__dn[6], I_n[6], I_p[6]);
  SD2DigitCom_7 U3 (O__dp[7], O__dn[7], I_n[7], I_p[7]);
  SD2DigitCom_8 U4 (O__dp[8], O__dn[8], I_n[8], I_p[8]);
  SD2DigitCom_9 U5 (O__dp[9], O__dn[9], I_n[9], I_p[9]);
  SD2DigitCom_10 U6 (O__dp[10], O__dn[10], I_n[10], I_p[10]);
  SD2DigitCom_11 U7 (O__dp[11], O__dn[11], I_n[11], I_p[11]);
endmodule

module UBSPPG_5_0_5_0 (PP0__dp, PP0__dn, PP1__dp, PP1__dn, PP2__dp, PP2__dn, PP3__dp, PP3__dn, I1, I2);
  output [7:0] PP0__dp, PP0__dn;
  output [9:2] PP1__dp, PP1__dn;
  output [11:4] PP2__dp, PP2__dn;
  output [6:1] PP3__dp, PP3__dn;
  input [5:0] I1;
  input [5:0] I2;
  wire [5:1] MI_B;
  wire NCO0;
  wire NCO1;
  wire NCO2;
  wire [6:1] NPP0;
  wire [8:3] NPP1;
  wire [10:5] NPP2;
  wire POG0;
  wire POG1;
  wire POG2;
  wire [5:0] PPP0;
  wire [7:2] PPP1;
  wire [9:4] PPP2;
  wire [7:0] PP_p0;
  wire [9:2] PP_p1;
  wire [11:4] PP_p2;
  wire ZE;
  UBVPPG_5_0_0 U0 (PPP0, I1, I2[0]);
  UBMinusVPPG_5_0_1 U1 (POG0, NPP0, NCO0, I1, I2[1]);
  UBCMBIN_7_7_5_0 U2 (PP_p0, POG0, PPP0);
  UBNUB_SD2Comp_7_0000 U3 (PP0__dp[7:0], PP0__dn[7:0], PP_p0, NPP0);
  UBVPPG_5_0_2 U4 (PPP1, I1, I2[2]);
  UBMinusVPPG_5_0_3 U5 (POG1, NPP1, NCO1, I1, I2[3]);
  UBCMBIN_9_9_7_2 U6 (PP_p1, POG1, PPP1);
  UBNUB_SD2Comp_9_2000 U7 (PP1__dp[9:2], PP1__dn[9:2], PP_p1, NPP1);
  UBVPPG_5_0_4 U8 (PPP2, I1, I2[4]);
  UBMinusVPPG_5_0_5 U9 (POG2, NPP2, NCO2, I1, I2[5]);
  UBCMBIN_11_11_9_4 U10 (PP_p2, POG2, PPP2);
  UBNUB_SD2Comp_11_000 U11 (PP2__dp[11:4], PP2__dn[11:4], PP_p2, NPP2);
  NUBCMBIN_5_5_3_3_000 U12 (MI_B, NCO2, NCO1, NCO0);
  UBZero_6_6 U13 (ZE);
  NTCSD2Conv_6_1 U14 (PP3__dp[6:1], PP3__dn[6:1], ZE, MI_B);
endmodule

module UBVPPG_5_0_0 (O, IN1, IN2);
  output [5:0] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_0 U0 (O[0], IN1[0], IN2);
  UB1BPPG_1_0 U1 (O[1], IN1[1], IN2);
  UB1BPPG_2_0 U2 (O[2], IN1[2], IN2);
  UB1BPPG_3_0 U3 (O[3], IN1[3], IN2);
  UB1BPPG_4_0 U4 (O[4], IN1[4], IN2);
  UB1BPPG_5_0 U5 (O[5], IN1[5], IN2);
endmodule

module UBVPPG_5_0_2 (O, IN1, IN2);
  output [7:2] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_2 U0 (O[2], IN1[0], IN2);
  UB1BPPG_1_2 U1 (O[3], IN1[1], IN2);
  UB1BPPG_2_2 U2 (O[4], IN1[2], IN2);
  UB1BPPG_3_2 U3 (O[5], IN1[3], IN2);
  UB1BPPG_4_2 U4 (O[6], IN1[4], IN2);
  UB1BPPG_5_2 U5 (O[7], IN1[5], IN2);
endmodule

module UBVPPG_5_0_4 (O, IN1, IN2);
  output [9:4] O;
  input [5:0] IN1;
  input IN2;
  UB1BPPG_0_4 U0 (O[4], IN1[0], IN2);
  UB1BPPG_1_4 U1 (O[5], IN1[1], IN2);
  UB1BPPG_2_4 U2 (O[6], IN1[2], IN2);
  UB1BPPG_3_4 U3 (O[7], IN1[3], IN2);
  UB1BPPG_4_4 U4 (O[8], IN1[4], IN2);
  UB1BPPG_5_4 U5 (O[9], IN1[5], IN2);
endmodule

