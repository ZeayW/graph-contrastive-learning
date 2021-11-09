// Knowles Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [27:0] a, b;
	 input cin;
	 output [27:0] sum;
	 output cout;

	 wire [28:0] p,g;
	 wire [28:1] h,c;

// pre-computation
	 assign p={a|b,1'b1};
	 assign g={a&b, cin};

// prefix tree
	 knowles prefix_tree(h, c, p, g, sum, cout);

endmodule

module knowles (h, c, p, g, sum, cout);
	
	input [28:0] p;
	input [28:0] g;
	output [28:1] h;
	output [28:1] c;
	output [27:0] sum;
	output cout;


	// parallel-prefix, Knowles

	// Stage 1: Generates H/I pairs that span 1 bits
	rgry g_1_0 (H_1_0, {g[1],g[0]});
	rblk b_2_1 (H_2_1, I_2_1, {g[2],g[1]}, {p[1],p[0]});
	rblk b_3_2 (H_3_2, I_3_2, {g[3],g[2]}, {p[2],p[1]});
	rblk b_4_3 (H_4_3, I_4_3, {g[4],g[3]}, {p[3],p[2]});
	rblk b_5_4 (H_5_4, I_5_4, {g[5],g[4]}, {p[4],p[3]});
	rblk b_6_5 (H_6_5, I_6_5, {g[6],g[5]}, {p[5],p[4]});
	rblk b_7_6 (H_7_6, I_7_6, {g[7],g[6]}, {p[6],p[5]});
	rblk b_8_7 (H_8_7, I_8_7, {g[8],g[7]}, {p[7],p[6]});

	rblk b_9_8 (H_9_8, I_9_8, {g[9],g[8]}, {p[8],p[7]});
	rblk b_10_9 (H_10_9, I_10_9, {g[10],g[9]}, {p[9],p[8]});
	rblk b_11_10 (H_11_10, I_11_10, {g[11],g[10]}, {p[10],p[9]});
	rblk b_12_11 (H_12_11, I_12_11, {g[12],g[11]}, {p[11],p[10]});
	rblk b_13_12 (H_13_12, I_13_12, {g[13],g[12]}, {p[12],p[11]});
	rblk b_14_13 (H_14_13, I_14_13, {g[14],g[13]}, {p[13],p[12]});
	rblk b_15_14 (H_15_14, I_15_14, {g[15],g[14]}, {p[14],p[13]});
	rblk b_16_15 (H_16_15, I_16_15, {g[16],g[15]}, {p[15],p[14]});

	rblk b_17_16 (H_17_16, I_17_16, {g[17],g[16]}, {p[16],p[15]});
	rblk b_18_17 (H_18_17, I_18_17, {g[18],g[17]}, {p[17],p[16]});
	rblk b_19_18 (H_19_18, I_19_18, {g[19],g[18]}, {p[18],p[17]});
	rblk b_20_19 (H_20_19, I_20_19, {g[20],g[19]}, {p[19],p[18]});
	rblk b_21_20 (H_21_20, I_21_20, {g[21],g[20]}, {p[20],p[19]});
	rblk b_22_21 (H_22_21, I_22_21, {g[22],g[21]}, {p[21],p[20]});
	rblk b_23_22 (H_23_22, I_23_22, {g[23],g[22]}, {p[22],p[21]});
	rblk b_24_23 (H_24_23, I_24_23, {g[24],g[23]}, {p[23],p[22]});

	rblk b_25_24 (H_25_24, I_25_24, {g[25],g[24]}, {p[24],p[23]});
	rblk b_26_25 (H_26_25, I_26_25, {g[26],g[25]}, {p[25],p[24]});
	rblk b_27_26 (H_27_26, I_27_26, {g[27],g[26]}, {p[26],p[25]});

	// Stage 2: Generates H/I pairs that span 2 bits
	grey g_2_0 (H_2_0, {H_2_1,g[0]}, I_2_1);
	grey g_3_0 (H_3_0, {H_3_2,H_1_0}, I_3_2);
	black b_4_1 (H_4_1, I_4_1, {H_4_3,H_2_1}, {I_4_3,I_2_1});
	black b_5_2 (H_5_2, I_5_2, {H_5_4,H_3_2}, {I_5_4,I_3_2});
	black b_6_3 (H_6_3, I_6_3, {H_6_5,H_4_3}, {I_6_5,I_4_3});
	black b_7_4 (H_7_4, I_7_4, {H_7_6,H_5_4}, {I_7_6,I_5_4});
	black b_8_5 (H_8_5, I_8_5, {H_8_7,H_6_5}, {I_8_7,I_6_5});
	black b_9_6 (H_9_6, I_9_6, {H_9_8,H_7_6}, {I_9_8,I_7_6});

	black b_10_7 (H_10_7, I_10_7, {H_10_9,H_8_7}, {I_10_9,I_8_7});
	black b_11_8 (H_11_8, I_11_8, {H_11_10,H_9_8}, {I_11_10,I_9_8});
	black b_12_9 (H_12_9, I_12_9, {H_12_11,H_10_9}, {I_12_11,I_10_9});
	black b_13_10 (H_13_10, I_13_10, {H_13_12,H_11_10}, {I_13_12,I_11_10});
	black b_14_11 (H_14_11, I_14_11, {H_14_13,H_12_11}, {I_14_13,I_12_11});
	black b_15_12 (H_15_12, I_15_12, {H_15_14,H_13_12}, {I_15_14,I_13_12});
	black b_16_13 (H_16_13, I_16_13, {H_16_15,H_14_13}, {I_16_15,I_14_13});
	black b_17_14 (H_17_14, I_17_14, {H_17_16,H_15_14}, {I_17_16,I_15_14});

	black b_18_15 (H_18_15, I_18_15, {H_18_17,H_16_15}, {I_18_17,I_16_15});
	black b_19_16 (H_19_16, I_19_16, {H_19_18,H_17_16}, {I_19_18,I_17_16});
	black b_20_17 (H_20_17, I_20_17, {H_20_19,H_18_17}, {I_20_19,I_18_17});
	black b_21_18 (H_21_18, I_21_18, {H_21_20,H_19_18}, {I_21_20,I_19_18});
	black b_22_19 (H_22_19, I_22_19, {H_22_21,H_20_19}, {I_22_21,I_20_19});
	black b_23_20 (H_23_20, I_23_20, {H_23_22,H_21_20}, {I_23_22,I_21_20});
	black b_24_21 (H_24_21, I_24_21, {H_24_23,H_22_21}, {I_24_23,I_22_21});
	black b_25_22 (H_25_22, I_25_22, {H_25_24,H_23_22}, {I_25_24,I_23_22});

	black b_26_23 (H_26_23, I_26_23, {H_26_25,H_24_23}, {I_26_25,I_24_23});
	black b_27_24 (H_27_24, I_27_24, {H_27_26,H_25_24}, {I_27_26,I_25_24});

	// Stage 3: Generates H/I pairs that span 4 bits
	grey g_4_0 (H_4_0, {H_4_1,g[0]}, I_4_1);
	grey g_5_0 (H_5_0, {H_5_2,H_1_0}, I_5_2);
	grey g_6_0 (H_6_0, {H_6_3,H_2_0}, I_6_3);
	grey g_7_0 (H_7_0, {H_7_4,H_3_0}, I_7_4);
	black b_8_1 (H_8_1, I_8_1, {H_8_5,H_4_1}, {I_8_5,I_4_1});
	black b_9_2 (H_9_2, I_9_2, {H_9_6,H_5_2}, {I_9_6,I_5_2});
	black b_10_3 (H_10_3, I_10_3, {H_10_7,H_6_3}, {I_10_7,I_6_3});
	black b_11_4 (H_11_4, I_11_4, {H_11_8,H_7_4}, {I_11_8,I_7_4});

	black b_12_5 (H_12_5, I_12_5, {H_12_9,H_8_5}, {I_12_9,I_8_5});
	black b_13_6 (H_13_6, I_13_6, {H_13_10,H_9_6}, {I_13_10,I_9_6});
	black b_14_7 (H_14_7, I_14_7, {H_14_11,H_10_7}, {I_14_11,I_10_7});
	black b_15_8 (H_15_8, I_15_8, {H_15_12,H_11_8}, {I_15_12,I_11_8});
	black b_16_9 (H_16_9, I_16_9, {H_16_13,H_12_9}, {I_16_13,I_12_9});
	black b_17_10 (H_17_10, I_17_10, {H_17_14,H_13_10}, {I_17_14,I_13_10});
	black b_18_11 (H_18_11, I_18_11, {H_18_15,H_14_11}, {I_18_15,I_14_11});
	black b_19_12 (H_19_12, I_19_12, {H_19_16,H_15_12}, {I_19_16,I_15_12});

	black b_20_13 (H_20_13, I_20_13, {H_20_17,H_16_13}, {I_20_17,I_16_13});
	black b_21_14 (H_21_14, I_21_14, {H_21_18,H_17_14}, {I_21_18,I_17_14});
	black b_22_15 (H_22_15, I_22_15, {H_22_19,H_18_15}, {I_22_19,I_18_15});
	black b_23_16 (H_23_16, I_23_16, {H_23_20,H_19_16}, {I_23_20,I_19_16});
	black b_24_17 (H_24_17, I_24_17, {H_24_21,H_20_17}, {I_24_21,I_20_17});
	black b_25_18 (H_25_18, I_25_18, {H_25_22,H_21_18}, {I_25_22,I_21_18});
	black b_26_19 (H_26_19, I_26_19, {H_26_23,H_22_19}, {I_26_23,I_22_19});
	black b_27_20 (H_27_20, I_27_20, {H_27_24,H_23_20}, {I_27_24,I_23_20});


	// Stage 4: Generates H/I pairs that span 8 bits
	grey g_8_0 (H_8_0, {H_8_1,g[0]}, I_8_1);
	grey g_9_0 (H_9_0, {H_9_2,H_1_0}, I_9_2);
	grey g_10_0 (H_10_0, {H_10_3,H_2_0}, I_10_3);
	grey g_11_0 (H_11_0, {H_11_4,H_3_0}, I_11_4);
	grey g_12_0 (H_12_0, {H_12_5,H_4_0}, I_12_5);
	grey g_13_0 (H_13_0, {H_13_6,H_5_0}, I_13_6);
	grey g_14_0 (H_14_0, {H_14_7,H_6_0}, I_14_7);
	grey g_15_0 (H_15_0, {H_15_8,H_7_0}, I_15_8);

	black b_16_1 (H_16_1, I_16_1, {H_16_9,H_8_1}, {I_16_9,I_8_1});
	black b_17_2 (H_17_2, I_17_2, {H_17_10,H_9_2}, {I_17_10,I_9_2});
	black b_18_3 (H_18_3, I_18_3, {H_18_11,H_10_3}, {I_18_11,I_10_3});
	black b_19_4 (H_19_4, I_19_4, {H_19_12,H_11_4}, {I_19_12,I_11_4});
	black b_20_5 (H_20_5, I_20_5, {H_20_13,H_12_5}, {I_20_13,I_12_5});
	black b_21_6 (H_21_6, I_21_6, {H_21_14,H_13_6}, {I_21_14,I_13_6});
	black b_22_7 (H_22_7, I_22_7, {H_22_15,H_14_7}, {I_22_15,I_14_7});
	black b_23_8 (H_23_8, I_23_8, {H_23_16,H_15_8}, {I_23_16,I_15_8});

	black b_24_9 (H_24_9, I_24_9, {H_24_17,H_16_9}, {I_24_17,I_16_9});
	black b_25_10 (H_25_10, I_25_10, {H_25_18,H_17_10}, {I_25_18,I_17_10});
	black b_26_11 (H_26_11, I_26_11, {H_26_19,H_18_11}, {I_26_19,I_18_11});
	black b_27_12 (H_27_12, I_27_12, {H_27_20,H_19_12}, {I_27_20,I_19_12});

	// Stage 5: Generates H/I pairs that span 16 bits
	grey g_16_0 (H_16_0, {H_16_1,H_1_0}, I_16_1);
	grey g_17_0 (H_17_0, {H_17_2,H_1_0}, I_17_2);
	grey g_18_0 (H_18_0, {H_18_3,H_3_0}, I_18_3);
	grey g_19_0 (H_19_0, {H_19_4,H_3_0}, I_19_4);
	grey g_20_0 (H_20_0, {H_20_5,H_5_0}, I_20_5);
	grey g_21_0 (H_21_0, {H_21_6,H_5_0}, I_21_6);
	grey g_22_0 (H_22_0, {H_22_7,H_7_0}, I_22_7);
	grey g_23_0 (H_23_0, {H_23_8,H_7_0}, I_23_8);
	grey g_24_0 (H_24_0, {H_24_9,H_9_0}, I_24_9);
	grey g_25_0 (H_25_0, {H_25_10,H_9_0}, I_25_10);
	grey g_26_0 (H_26_0, {H_26_11,H_11_0}, I_26_11);
	grey g_27_0 (H_27_0, {H_27_12,H_11_0}, I_27_12);

	// Final Stage: Apply c_k+1=p_k&H_k_0
	assign c[1]=g[0];

	assign h[1]=H_1_0;		assign c[2]=p[1]&H_1_0;
	assign h[2]=H_2_0;		assign c[3]=p[2]&H_2_0;
	assign h[3]=H_3_0;		assign c[4]=p[3]&H_3_0;
	assign h[4]=H_4_0;		assign c[5]=p[4]&H_4_0;
	assign h[5]=H_5_0;		assign c[6]=p[5]&H_5_0;
	assign h[6]=H_6_0;		assign c[7]=p[6]&H_6_0;
	assign h[7]=H_7_0;		assign c[8]=p[7]&H_7_0;
	assign h[8]=H_8_0;		assign c[9]=p[8]&H_8_0;

	assign h[9]=H_9_0;		assign c[10]=p[9]&H_9_0;
	assign h[10]=H_10_0;		assign c[11]=p[10]&H_10_0;
	assign h[11]=H_11_0;		assign c[12]=p[11]&H_11_0;
	assign h[12]=H_12_0;		assign c[13]=p[12]&H_12_0;
	assign h[13]=H_13_0;		assign c[14]=p[13]&H_13_0;
	assign h[14]=H_14_0;		assign c[15]=p[14]&H_14_0;
	assign h[15]=H_15_0;		assign c[16]=p[15]&H_15_0;
	assign h[16]=H_16_0;		assign c[17]=p[16]&H_16_0;

	assign h[17]=H_17_0;		assign c[18]=p[17]&H_17_0;
	assign h[18]=H_18_0;		assign c[19]=p[18]&H_18_0;
	assign h[19]=H_19_0;		assign c[20]=p[19]&H_19_0;
	assign h[20]=H_20_0;		assign c[21]=p[20]&H_20_0;
	assign h[21]=H_21_0;		assign c[22]=p[21]&H_21_0;
	assign h[22]=H_22_0;		assign c[23]=p[22]&H_22_0;
	assign h[23]=H_23_0;		assign c[24]=p[23]&H_23_0;
	assign h[24]=H_24_0;		assign c[25]=p[24]&H_24_0;

	assign h[25]=H_25_0;		assign c[26]=p[25]&H_25_0;
	assign h[26]=H_26_0;		assign c[27]=p[26]&H_26_0;
	assign h[27]=H_27_0;		assign c[28]=p[27]&H_27_0;
// post-computation
	 assign h[28]=g[28]|c[28];
	 assign sum=p[28:1]^h|g[28:1]&c;
	 assign cout=p[28]&h[28];


endmodule


// Black cell
module black(gout, pout, gin, pin);

 input [1:0] gin, pin;
 output gout, pout;

 assign pout=pin[1]&pin[0];
 assign gout=gin[1]|(pin[1]&gin[0]);

endmodule

// Grey cell
module grey(gout, gin, pin);

 input[1:0] gin;
 input pin;
 output gout;

 assign gout=gin[1]|(pin&gin[0]);

endmodule


// reduced Black cell
module rblk(hout, iout, gin, pin);

 input [1:0] gin, pin;
 output hout, iout;

 assign iout=pin[1]&pin[0];
 assign hout=gin[1]|gin[0];

endmodule

// reduced Grey cell
module rgry(hout, gin);

 input[1:0] gin;
 output hout;

 assign hout=gin[1]|gin[0];

endmodule
