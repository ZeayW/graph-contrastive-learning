/*----------------------------------------------------------------------------
  Copyright (c) 2021 Homma laboratory. All rights reserved.

  Top module: Multiplier_5_0_5_000

  Number system: Unsigned binary
  Multiplicand length: 6
  Multiplier length: 6
  Partial product generation: PPG with Radix-4 modified Booth recoding
  Partial product accumulation: (7,3) counter tree
  Final stage addition: Ripple-block carry look-ahead adder
----------------------------------------------------------------------------*/

module NUBZero_6_6(O);
  output [6:6] O;
  assign O[6] = 0;
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

module R4BEEH_3_2(O_ds, O_d1, O_d0, I1, I0);
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

module U4DPPGH_6_0(Po, O, I, U_d1, U_d0, Pi);
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

module BWCNP_7(O, I, S);
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

module U4DPPGH_6_1(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
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

module BWCNP_9(O, I, S);
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

module U4DPPGH_6_2(Po, O, I, U_d1, U_d0, Pi);
  output O;
  output Po;
  input I;
  input Pi;
  input U_d1, U_d0;
  assign O = ( I & U_d0 ) | Pi;
  assign Po = I & ( U_d1 | U_d0 );
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

module U4DPPGH_6_3(Po, O, I, U_d1, U_d0, Pi);
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

module UBBBG_6(O, S);
  output O;
  input S;
  assign O = S;
endmodule

module UBOne_8(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_8(O, I);
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

module UBOne_10(O);
  output O;
  assign O = 1;
endmodule

module UB1DCON_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UB1DCON_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_1_1(O);
  output [1:1] O;
  assign O[1] = 0;
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

module UB1DCON_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_3_3(O);
  output [3:3] O;
  assign O[3] = 0;
endmodule

module UB1DCON_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBZero_5_5(O);
  output [5:5] O;
  assign O[5] = 0;
endmodule

module UBOne_7(O);
  output O;
  assign O = 1;
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

module UB4_3C6(S1, S2, S3, X1, X2, X3, X4);
  output S1;
  output S2;
  output S3;
  input X1;
  input X2;
  input X3;
  input X4;
  wire W1;
  wire W2;
  wire W3;
  wire W4;
  wire W5;
  wire W6;
  assign W1 = X1 ^ X2 ^ X3;
  assign W2 = X4;
  assign W3 = ~ ( ( ~ ( X1 & X2 ) ) & ( ~ ( X1 & X3 ) ) & ( ~ ( X2 & X3 ) ) );
  assign W4 = 0;
  assign W5 = 1;
  assign W6 = ~ ( ( ~ ( W4 & W5 ) ) ^ W3 );
  assign S3 = W1 ^ W2;
  assign S2 = ~ ( W6 ^ ( ~ ( W1 & W2 ) ) );
  assign S1 = ~ ( W5 & ( ~ ( W3 & W4 ) ) & ( ~ ( W1 & W2 & W6 ) ) );
endmodule

module UB4_3C7(S1, S2, S3, X1, X2, X3, X4);
  output S1;
  output S2;
  output S3;
  input X1;
  input X2;
  input X3;
  input X4;
  wire W1;
  wire W2;
  wire W3;
  wire W4;
  wire W5;
  wire W6;
  assign W1 = X1 ^ X2 ^ X3;
  assign W2 = X4;
  assign W3 = ~ ( ( ~ ( X1 & X2 ) ) & ( ~ ( X1 & X3 ) ) & ( ~ ( X2 & X3 ) ) );
  assign W4 = 0;
  assign W5 = 1;
  assign W6 = ~ ( ( ~ ( W4 & W5 ) ) ^ W3 );
  assign S3 = W1 ^ W2;
  assign S2 = ~ ( W6 ^ ( ~ ( W1 & W2 ) ) );
  assign S1 = ~ ( W5 & ( ~ ( W3 & W4 ) ) & ( ~ ( W1 & W2 & W6 ) ) );
endmodule

module UB4_3C8(S1, S2, S3, X1, X2, X3, X4);
  output S1;
  output S2;
  output S3;
  input X1;
  input X2;
  input X3;
  input X4;
  wire W1;
  wire W2;
  wire W3;
  wire W4;
  wire W5;
  wire W6;
  assign W1 = X1 ^ X2 ^ X3;
  assign W2 = X4;
  assign W3 = ~ ( ( ~ ( X1 & X2 ) ) & ( ~ ( X1 & X3 ) ) & ( ~ ( X2 & X3 ) ) );
  assign W4 = 0;
  assign W5 = 1;
  assign W6 = ~ ( ( ~ ( W4 & W5 ) ) ^ W3 );
  assign S3 = W1 ^ W2;
  assign S2 = ~ ( W6 ^ ( ~ ( W1 & W2 ) ) );
  assign S1 = ~ ( W5 & ( ~ ( W3 & W4 ) ) & ( ~ ( W1 & W2 & W6 ) ) );
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

module RCLAU_2(Go, Po, C, G, P, Cin);
  output [1:1] C;
  output Go;
  output Po;
  input Cin;
  input [1:0] G;
  input [1:0] P;
  assign Po = P[0] & P[1];
  assign Go = G[1] | ( P[1] & G[0] );
  assign C[1] = G[0] | ( P[0] & Cin );
endmodule

module RCLAlU_2(Go, Po, S, X, Y, Cin);
  output Go;
  output Po;
  output [1:0] S;
  input Cin;
  input [1:0] X;
  input [1:0] Y;
  wire [1:1] C;
  wire [1:0] G;
  wire [1:0] P;
  assign S[0] = P[0] ^ Cin;
  assign S[1] = P[1] ^ C[1];
  GPGenerator U0 (G[0], P[0], X[0], Y[0]);
  GPGenerator U1 (G[1], P[1], X[1], Y[1]);
  RCLAU_2 U2 (Go, Po, C, G, P, Cin);
endmodule

module PriMRCLA_13_0(S, X, Y, Cin);
  output [14:0] S;
  input Cin;
  input [13:0] X;
  input [13:0] Y;
  wire [3:0] C1;
  wire [3:0] G1;
  wire [3:0] P1;
  assign C1[0] = Cin;
  assign C1[1] = G1[0] | ( P1[0] & C1[0] );
  assign C1[2] = G1[1] | ( P1[1] & C1[1] );
  assign C1[3] = G1[2] | ( P1[2] & C1[2] );
  assign S[14] = G1[3] | ( P1[3] & C1[3] );
  RCLAlU_4 U0 (G1[0], P1[0], S[3:0], X[3:0], Y[3:0], C1[0]);
  RCLAlU_4 U1 (G1[1], P1[1], S[7:4], X[7:4], Y[7:4], C1[1]);
  RCLAlU_4 U2 (G1[2], P1[2], S[11:8], X[11:8], Y[11:8], C1[2]);
  RCLAlU_2 U3 (G1[3], P1[3], S[13:12], X[13:12], Y[13:12], C1[3]);
endmodule

module UBZero_0_0(O);
  output [0:0] O;
  assign O[0] = 0;
endmodule

module UBTC1CON14_0(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_1(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_2(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_3(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_4(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_5(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_6(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_7(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_8(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_9(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_10(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_11(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_12(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTC1CON14_13(O, I);
  output O;
  input I;
  assign O = I;
endmodule

module UBTCTCONV_14_14(O, I);
  output [14:14] O;
  input [14:14] I;
  assign O = ~ I;
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
  MultUB_R4B_D73_RC000 U0 (W, IN1, IN2);
endmodule

module D7_3CTR_13_0_12_0000 (S1, S2, PP0, PP1, PP2);
  output [13:0] S1;
  output [13:0] S2;
  input [13:0] PP0;
  input [12:0] PP1;
  input [11:2] PP2;
  wire [13:0] W0;
  wire [13:0] W1;
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
  UBHA_12 U10 (W1[13], W1[12], PP0[12], PP1[12]);
  UBCON_1_0 U11 (W0[1:0], PP0[1:0]);
  UB1DCON_2 U12 (W0[2], PP2[2]);
  UB1DCON_13 U13 (W0[13], PP0[13]);
  UBCON_1_0 U14 (W1[1:0], PP1[1:0]);
  D7_3CTR_13_0_13_0 U15 (S1, S2, W0, W1);
endmodule

module D7_3CTR_13_0_13_0 (S1, S2, PP0, PP1);
  output [13:0] S1;
  output [13:0] S2;
  input [13:0] PP0;
  input [13:0] PP1;
  UBCON_13_0 U0 (S1, PP0);
  UBCON_13_0 U1 (S2, PP1);
endmodule

module D7_3CTR_8_0_10_0_000 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  output [13:0] S1;
  output [13:0] S2;
  input [8:0] PP0;
  input [10:0] PP1;
  input [12:2] PP2;
  input [13:4] PP3;
  input [7:6] PP4;
  wire [13:0] W0;
  wire [12:0] W1;
  wire [11:2] W2;
  UBHA_4 U0 (W1[5], W2[4], PP0[4], PP1[4]);
  UBFA_5 U1 (W1[6], W2[5], PP0[5], PP1[5], PP2[5]);
  UB4_3C6 U2 (W0[8], W1[7], W2[6], PP0[6], PP1[6], PP2[6], PP3[6]);
  UB4_3C7 U3 (W0[9], W1[8], W2[7], PP0[7], PP1[7], PP2[7], PP3[7]);
  UB4_3C8 U4 (W0[10], W1[9], W2[8], PP0[8], PP1[8], PP2[8], PP3[8]);
  UBFA_9 U5 (W1[10], W2[9], PP1[9], PP2[9], PP3[9]);
  UBFA_10 U6 (W2[11], W2[10], PP1[10], PP2[10], PP3[10]);
  UBCON_3_0 U7 (W0[3:0], PP0[3:0]);
  UB1DCON_4 U8 (W0[4], PP2[4]);
  UB1DCON_5 U9 (W0[5], PP3[5]);
  UBCON_7_6 U10 (W0[7:6], PP4[7:6]);
  UBCON_12_11 U11 (W0[12:11], PP2[12:11]);
  UB1DCON_13 U12 (W0[13], PP3[13]);
  UBCON_3_0 U13 (W1[3:0], PP1[3:0]);
  UB1DCON_4 U14 (W1[4], PP3[4]);
  UBCON_12_11 U15 (W1[12:11], PP3[12:11]);
  UBCON_3_2 U16 (W2[3:2], PP2[3:2]);
  D7_3CTR_13_0_12_0000 U17 (S1, S2, W0, W1, W2);
endmodule

module MultUB_R4B_D73_RC000 (P, IN1, IN2);
  output [14:0] P;
  input [5:0] IN1;
  input [5:0] IN2;
  wire [8:0] PP0;
  wire [10:0] PP1;
  wire [12:2] PP2;
  wire [13:4] PP3;
  wire [7:6] PP4;
  wire [13:0] S1;
  wire [13:0] S2;
  wire [14:0] UP;
  UBR4BPPG_5_0_5_0 U0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  D7_3CTR_8_0_10_0_000 U1 (S1, S2, PP0, PP1, PP2, PP3, PP4);
  UBRCL_13_0_13_0 U2 (UP, S1, S2);
  UBTCCONV14_14_0 U3 (P, UP);
endmodule

module TCU4VPPG_6_0_0 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [6:0] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [6:1] P;
  U4DPPGL_0_0 U0 (P[1], O_R[0], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_0 U1 (P[2], O_R[1], IN1_R[1], U__d1, U__d0, P[1]);
  U4DPPG_2_0 U2 (P[3], O_R[2], IN1_R[2], U__d1, U__d0, P[2]);
  U4DPPG_3_0 U3 (P[4], O_R[3], IN1_R[3], U__d1, U__d0, P[3]);
  U4DPPG_4_0 U4 (P[5], O_R[4], IN1_R[4], U__d1, U__d0, P[4]);
  U4DPPG_5_0 U5 (P[6], O_R[5], IN1_R[5], U__d1, U__d0, P[5]);
  U4DPPGH_6_0 U6 (O_T, O_R[6], IN1_T, U__d1, U__d0, P[6]);
endmodule

module TCU4VPPG_6_0_1 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [8:2] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [8:3] P;
  U4DPPGL_0_1 U0 (P[3], O_R[2], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_1 U1 (P[4], O_R[3], IN1_R[1], U__d1, U__d0, P[3]);
  U4DPPG_2_1 U2 (P[5], O_R[4], IN1_R[2], U__d1, U__d0, P[4]);
  U4DPPG_3_1 U3 (P[6], O_R[5], IN1_R[3], U__d1, U__d0, P[5]);
  U4DPPG_4_1 U4 (P[7], O_R[6], IN1_R[4], U__d1, U__d0, P[6]);
  U4DPPG_5_1 U5 (P[8], O_R[7], IN1_R[5], U__d1, U__d0, P[7]);
  U4DPPGH_6_1 U6 (O_T, O_R[8], IN1_T, U__d1, U__d0, P[8]);
endmodule

module TCU4VPPG_6_0_2 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [10:4] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [10:5] P;
  U4DPPGL_0_2 U0 (P[5], O_R[4], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_2 U1 (P[6], O_R[5], IN1_R[1], U__d1, U__d0, P[5]);
  U4DPPG_2_2 U2 (P[7], O_R[6], IN1_R[2], U__d1, U__d0, P[6]);
  U4DPPG_3_2 U3 (P[8], O_R[7], IN1_R[3], U__d1, U__d0, P[7]);
  U4DPPG_4_2 U4 (P[9], O_R[8], IN1_R[4], U__d1, U__d0, P[8]);
  U4DPPG_5_2 U5 (P[10], O_R[9], IN1_R[5], U__d1, U__d0, P[9]);
  U4DPPGH_6_2 U6 (O_T, O_R[10], IN1_T, U__d1, U__d0, P[10]);
endmodule

module TCU4VPPG_6_0_3 (O_T, O_R, IN1_T, IN1_R, U__d1, U__d0);
  output [12:6] O_R;
  output O_T;
  input [5:0] IN1_R;
  input IN1_T;
  input U__d1, U__d0;
  wire [12:7] P;
  U4DPPGL_0_3 U0 (P[7], O_R[6], IN1_R[0], U__d1, U__d0);
  U4DPPG_1_3 U1 (P[8], O_R[7], IN1_R[1], U__d1, U__d0, P[7]);
  U4DPPG_2_3 U2 (P[9], O_R[8], IN1_R[2], U__d1, U__d0, P[8]);
  U4DPPG_3_3 U3 (P[10], O_R[9], IN1_R[3], U__d1, U__d0, P[9]);
  U4DPPG_4_3 U4 (P[11], O_R[10], IN1_R[4], U__d1, U__d0, P[10]);
  U4DPPG_5_3 U5 (P[12], O_R[11], IN1_R[5], U__d1, U__d0, P[11]);
  U4DPPGH_6_3 U6 (O_T, O_R[12], IN1_T, U__d1, U__d0, P[12]);
endmodule

module TUBWCON_11_4 (O, I_T, I_R, S);
  output [11:4] O;
  input [10:4] I_R;
  input I_T;
  input S;
  BWCPP_4 U0 (O[4], I_R[4], S);
  BWCPP_5 U1 (O[5], I_R[5], S);
  BWCPP_6 U2 (O[6], I_R[6], S);
  BWCPP_7 U3 (O[7], I_R[7], S);
  BWCPP_8 U4 (O[8], I_R[8], S);
  BWCPP_9 U5 (O[9], I_R[9], S);
  BWCPP_10 U6 (O[10], I_R[10], S);
  BWCNP_11 U7 (O[11], I_T, S);
endmodule

module TUBWCON_13_6 (O, I_T, I_R, S);
  output [13:6] O;
  input [12:6] I_R;
  input I_T;
  input S;
  BWCPP_6 U0 (O[6], I_R[6], S);
  BWCPP_7 U1 (O[7], I_R[7], S);
  BWCPP_8 U2 (O[8], I_R[8], S);
  BWCPP_9 U3 (O[9], I_R[9], S);
  BWCPP_10 U4 (O[10], I_R[10], S);
  BWCPP_11 U5 (O[11], I_R[11], S);
  BWCPP_12 U6 (O[12], I_R[12], S);
  BWCNP_13 U7 (O[13], I_T, S);
endmodule

module TUBWCON_7_0 (O, I_T, I_R, S);
  output [7:0] O;
  input [6:0] I_R;
  input I_T;
  input S;
  BWCPP_0 U0 (O[0], I_R[0], S);
  BWCPP_1 U1 (O[1], I_R[1], S);
  BWCPP_2 U2 (O[2], I_R[2], S);
  BWCPP_3 U3 (O[3], I_R[3], S);
  BWCPP_4 U4 (O[4], I_R[4], S);
  BWCPP_5 U5 (O[5], I_R[5], S);
  BWCPP_6 U6 (O[6], I_R[6], S);
  BWCNP_7 U7 (O[7], I_T, S);
endmodule

module TUBWCON_9_2 (O, I_T, I_R, S);
  output [9:2] O;
  input [8:2] I_R;
  input I_T;
  input S;
  BWCPP_2 U0 (O[2], I_R[2], S);
  BWCPP_3 U1 (O[3], I_R[3], S);
  BWCPP_4 U2 (O[4], I_R[4], S);
  BWCPP_5 U3 (O[5], I_R[5], S);
  BWCPP_6 U4 (O[6], I_R[6], S);
  BWCPP_7 U5 (O[7], I_R[7], S);
  BWCPP_8 U6 (O[8], I_R[8], S);
  BWCNP_9 U7 (O[9], I_T, S);
endmodule

module UBCMBIN_10_10_9_2000 (O, IN0, IN1, IN2);
  output [10:0] O;
  input IN0;
  input [9:2] IN1;
  input IN2;
  UB1DCON_10 U0 (O[10], IN0);
  UBCON_9_2 U1 (O[9:2], IN1);
  UBZero_1_1 U2 (O[1]);
  UB1DCON_0 U3 (O[0], IN2);
endmodule

module UBCMBIN_12_12_11_000 (O, IN0, IN1, IN2);
  output [12:2] O;
  input IN0;
  input [11:4] IN1;
  input IN2;
  UB1DCON_12 U0 (O[12], IN0);
  UBCON_11_4 U1 (O[11:4], IN1);
  UBZero_3_3 U2 (O[3]);
  UB1DCON_2 U3 (O[2], IN2);
endmodule

module UBCMBIN_13_6_4_4 (O, IN0, IN1);
  output [13:4] O;
  input [13:6] IN0;
  input IN1;
  UBCON_13_6 U0 (O[13:6], IN0);
  UBZero_5_5 U1 (O[5]);
  UB1DCON_4 U2 (O[4], IN1);
endmodule

module UBCMBIN_7_7_6_6 (O, IN0, IN1);
  output [7:6] O;
  input IN0;
  input IN1;
  UB1DCON_7 U0 (O[7], IN0);
  UB1DCON_6 U1 (O[6], IN1);
endmodule

module UBCMBIN_8_8_7_0 (O, IN0, IN1);
  output [8:0] O;
  input IN0;
  input [7:0] IN1;
  UB1DCON_8 U0 (O[8], IN0);
  UBCON_7_0 U1 (O[7:0], IN1);
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

module UBCON_12_11 (O, I);
  output [12:11] O;
  input [12:11] I;
  UB1DCON_11 U0 (O[11], I[11]);
  UB1DCON_12 U1 (O[12], I[12]);
endmodule

module UBCON_13_0 (O, I);
  output [13:0] O;
  input [13:0] I;
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

module UBCON_1_0 (O, I);
  output [1:0] O;
  input [1:0] I;
  UB1DCON_0 U0 (O[0], I[0]);
  UB1DCON_1 U1 (O[1], I[1]);
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

module UBCON_7_6 (O, I);
  output [7:6] O;
  input [7:6] I;
  UB1DCON_6 U0 (O[6], I[6]);
  UB1DCON_7 U1 (O[7], I[7]);
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

module UBPureRCL_13_0 (S, X, Y);
  output [14:0] S;
  input [13:0] X;
  input [13:0] Y;
  wire C;
  PriMRCLA_13_0 U0 (S, X, Y, C);
  UBZero_0_0 U1 (C);
endmodule

module UBR4BE_5_0 (O__ds, O__d1, O__d0, I);
  output [3:0] O__ds, O__d1, O__d0;
  input [5:0] I;
  wire T;
  NUBZero_6_6 U0 (T);
  R4BEEL_0_2 U1 (O__ds[0], O__d1[0], O__d0[0], I[1], I[0]);
  R4BEE_1 U2 (O__ds[1], O__d1[1], O__d0[1], I[3], I[2], I[1]);
  R4BEE_2 U3 (O__ds[2], O__d1[2], O__d0[2], I[5], I[4], I[3]);
  R4BEEH_3_2 U4 (O__ds[3], O__d1[3], O__d0[3], T, I[5]);
endmodule

module UBR4BPPG_5_0_5_0 (PP0, PP1, PP2, PP3, PP4, IN1, IN2);
  output [8:0] PP0;
  output [10:0] PP1;
  output [12:2] PP2;
  output [13:4] PP3;
  output [7:6] PP4;
  input [5:0] IN1;
  input [5:0] IN2;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire [3:0] IN2SD__ds, IN2SD__d1, IN2SD__d0;
  wire [7:0] PPT0;
  wire [9:2] PPT1;
  wire [11:4] PPT2;
  wire [13:6] PPT3;
  wire S0;
  wire S1;
  wire S2;
  wire S3;
  UBR4BE_5_0 U0 (IN2SD__ds, IN2SD__d1, IN2SD__d0, IN2);
  UBSD4VPPG_5_0_0 U1 (PPT0, S0, IN1, IN2SD__ds[0], IN2SD__d1[0], IN2SD__d0[0]);
  UBSD4VPPG_5_0_1 U2 (PPT1, S1, IN1, IN2SD__ds[1], IN2SD__d1[1], IN2SD__d0[1]);
  UBSD4VPPG_5_0_2 U3 (PPT2, S2, IN1, IN2SD__ds[2], IN2SD__d1[2], IN2SD__d0[2]);
  UBSD4VPPG_5_0_3 U4 (PPT3, S3, IN1, IN2SD__ds[3], IN2SD__d1[3], IN2SD__d0[3]);
  UBOne_8 U5 (B0);
  UBCMBIN_8_8_7_0 U6 (PP0, B0, PPT0);
  UBOne_10 U7 (B1);
  UBCMBIN_10_10_9_2000 U8 (PP1, B1, PPT1, S0);
  UBOne_12 U9 (B2);
  UBCMBIN_12_12_11_000 U10 (PP2, B2, PPT2, S1);
  UBCMBIN_13_6_4_4 U11 (PP3, PPT3, S2);
  UBOne_7 U12 (B3);
  UBCMBIN_7_7_6_6 U13 (PP4, B3, S3);
endmodule

module UBRCL_13_0_13_0 (S, X, Y);
  output [14:0] S;
  input [13:0] X;
  input [13:0] Y;
  UBPureRCL_13_0 U0 (S[14:0], X[13:0], Y[13:0]);
endmodule

module UBSD4VPPG_5_0_0 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [7:0] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [6:0] W_R;
  wire W_T;
  SD41DDECON_0 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_0 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_7_0 U3 (PP, W_T, W_R, S);
  UBBBG_0 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_1 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [9:2] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [8:2] W_R;
  wire W_T;
  SD41DDECON_1 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_1 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_9_2 U3 (PP, W_T, W_R, S);
  UBBBG_2 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_2 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [11:4] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [10:4] W_R;
  wire W_T;
  SD41DDECON_2 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_2 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_11_4 U3 (PP, W_T, W_R, S);
  UBBBG_4 U4 (C, S);
endmodule

module UBSD4VPPG_5_0_3 (PP, C, IN1, IN2__ds, IN2__d1, IN2__d0);
  output C;
  output [13:6] PP;
  input [5:0] IN1;
  input IN2__ds, IN2__d1, IN2__d0;
  wire NZ;
  wire S;
  wire U__d1, U__d0;
  wire [12:6] W_R;
  wire W_T;
  SD41DDECON_3 U0 (S, U__d1, U__d0, IN2__ds, IN2__d1, IN2__d0);
  NUBZero_6_6 U1 (NZ);
  TCU4VPPG_6_0_3 U2 (W_T, W_R, NZ, IN1, U__d1, U__d0);
  TUBWCON_13_6 U3 (PP, W_T, W_R, S);
  UBBBG_6 U4 (C, S);
endmodule

module UBTCCONV14_14_0 (O, I);
  output [14:0] O;
  input [14:0] I;
  UBTC1CON14_0 U0 (O[0], I[0]);
  UBTC1CON14_1 U1 (O[1], I[1]);
  UBTC1CON14_2 U2 (O[2], I[2]);
  UBTC1CON14_3 U3 (O[3], I[3]);
  UBTC1CON14_4 U4 (O[4], I[4]);
  UBTC1CON14_5 U5 (O[5], I[5]);
  UBTC1CON14_6 U6 (O[6], I[6]);
  UBTC1CON14_7 U7 (O[7], I[7]);
  UBTC1CON14_8 U8 (O[8], I[8]);
  UBTC1CON14_9 U9 (O[9], I[9]);
  UBTC1CON14_10 U10 (O[10], I[10]);
  UBTC1CON14_11 U11 (O[11], I[11]);
  UBTC1CON14_12 U12 (O[12], I[12]);
  UBTC1CON14_13 U13 (O[13], I[13]);
  UBTCTCONV_14_14 U14 (O[14], I[14]);
endmodule
