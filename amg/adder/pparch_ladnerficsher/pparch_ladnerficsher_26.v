// Ladner-Fischer Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [25:0] a, b;
	 input cin;
	 output [25:0] sum;
	 output cout;

	 wire [26:0] p,g;
	 wire [25:0] c;

// pre-computation
	 assign p={a^b,1'b0};
	 assign g={a&b, cin};

// prefix tree
	 ladner_fischer prefix_tree(c, p[25:0], g[25:0]);

// post-computation
	 assign sum=p[26:1]^c;
	 assign cout=g[26]|(p[26]&c[25]);

endmodule

module ladner_fischer (c, p, g);
	
	input [25:0] p;
	input [25:0] g;
	output [26:1] c;


	// parallel-prefix, Ladner-Fischer

	// Stage 1: Generates G/P pairs that span 1 bits
	grey b_1_0 (G_1_0, {g[1],g[0]}, p[1]);
	black b_3_2 (G_3_2, P_3_2, {g[3],g[2]}, {p[3],p[2]});
	black b_5_4 (G_5_4, P_5_4, {g[5],g[4]}, {p[5],p[4]});
	black b_7_6 (G_7_6, P_7_6, {g[7],g[6]}, {p[7],p[6]});
	black b_9_8 (G_9_8, P_9_8, {g[9],g[8]}, {p[9],p[8]});
	black b_11_10 (G_11_10, P_11_10, {g[11],g[10]}, {p[11],p[10]});
	black b_13_12 (G_13_12, P_13_12, {g[13],g[12]}, {p[13],p[12]});
	black b_15_14 (G_15_14, P_15_14, {g[15],g[14]}, {p[15],p[14]});

	black b_17_16 (G_17_16, P_17_16, {g[17],g[16]}, {p[17],p[16]});
	black b_19_18 (G_19_18, P_19_18, {g[19],g[18]}, {p[19],p[18]});
	black b_21_20 (G_21_20, P_21_20, {g[21],g[20]}, {p[21],p[20]});
	black b_23_22 (G_23_22, P_23_22, {g[23],g[22]}, {p[23],p[22]});
	black b_25_24 (G_25_24, P_25_24, {g[25],g[24]}, {p[25],p[24]});

	// Stage 2: Generates G/P pairs that span 2 bits
	grey g_3_0 (G_3_0, {G_3_2,G_1_0}, P_3_2);
	black b_7_4 (G_7_4, P_7_4, {G_7_6,G_5_4}, {P_7_6,P_5_4});
	black b_11_8 (G_11_8, P_11_8, {G_11_10,G_9_8}, {P_11_10,P_9_8});
	black b_15_12 (G_15_12, P_15_12, {G_15_14,G_13_12}, {P_15_14,P_13_12});
	black b_19_16 (G_19_16, P_19_16, {G_19_18,G_17_16}, {P_19_18,P_17_16});
	black b_23_20 (G_23_20, P_23_20, {G_23_22,G_21_20}, {P_23_22,P_21_20});
	black b_27_24 (G_27_24, P_27_24, {G_27_26,G_25_24}, {P_27_26,P_25_24});

	// Stage 3: Generates G/P pairs that span 4 bits
	grey g_5_0 (G_5_0, {G_5_4,G_3_0}, P_5_4);
	grey g_7_0 (G_7_0, {G_7_4,G_3_0}, P_7_4);
	black b_13_8 (G_13_8, P_13_8, {G_13_12,G_11_8}, {P_13_12,P_11_8});
	black b_15_8 (G_15_8, P_15_8, {G_15_12,G_11_8}, {P_15_12,P_11_8});
	black b_21_16 (G_21_16, P_21_16, {G_21_20,G_19_16}, {P_21_20,P_19_16});
	black b_23_16 (G_23_16, P_23_16, {G_23_20,G_19_16}, {P_23_20,P_19_16});
	black b_29_24 (G_29_24, P_29_24, {G_29_28,G_27_24}, {P_29_28,P_27_24});
	black b_31_24 (G_31_24, P_31_24, {G_31_28,G_27_24}, {P_31_28,P_27_24});


	// Stage 4: Generates G/P pairs that span 8 bits
	grey g_9_0 (G_9_0, {G_9_8,G_7_0}, P_9_8);
	grey g_11_0 (G_11_0, {G_11_8,G_7_0}, P_11_8);
	grey g_13_0 (G_13_0, {G_13_8,G_7_0}, P_13_8);
	grey g_15_0 (G_15_0, {G_15_8,G_7_0}, P_15_8);
	black b_25_16 (G_25_16, P_25_16, {G_25_24,G_23_16}, {P_25_24,P_23_16});
	black b_27_16 (G_27_16, P_27_16, {G_27_24,G_23_16}, {P_27_24,P_23_16});
	black b_29_16 (G_29_16, P_29_16, {G_29_24,G_23_16}, {P_29_24,P_23_16});
	black b_31_16 (G_31_16, P_31_16, {G_31_24,G_23_16}, {P_31_24,P_23_16});


	// Stage 5: Generates G/P pairs that span 16 bits
	grey g_17_0 (G_17_0, {G_17_16,G_15_0}, P_17_16);
	grey g_19_0 (G_19_0, {G_19_16,G_15_0}, P_19_16);
	grey g_21_0 (G_21_0, {G_21_16,G_15_0}, P_21_16);
	grey g_23_0 (G_23_0, {G_23_16,G_15_0}, P_23_16);
	grey g_25_0 (G_25_0, {G_25_16,G_15_0}, P_25_16);
	grey g_27_0 (G_27_0, {G_27_16,G_15_0}, P_27_16);
	grey g_29_0 (G_29_0, {G_29_16,G_15_0}, P_29_16);
	grey g_31_0 (G_31_0, {G_31_16,G_15_0}, P_31_16);


	// Extra grey cell stage 
	grey g_2_0 (G_2_0, {g[2],G_1_0}, p[2]);
	grey g_4_0 (G_4_0, {g[4],G_3_0}, p[4]);
	grey g_6_0 (G_6_0, {g[6],G_5_0}, p[6]);
	grey g_8_0 (G_8_0, {g[8],G_7_0}, p[8]);
	grey g_10_0 (G_10_0, {g[10],G_9_0}, p[10]);
	grey g_12_0 (G_12_0, {g[12],G_11_0}, p[12]);
	grey g_14_0 (G_14_0, {g[14],G_13_0}, p[14]);
	grey g_16_0 (G_16_0, {g[16],G_15_0}, p[16]);
	grey g_18_0 (G_18_0, {g[18],G_17_0}, p[18]);
	grey g_20_0 (G_20_0, {g[20],G_19_0}, p[20]);
	grey g_22_0 (G_22_0, {g[22],G_21_0}, p[22]);
	grey g_24_0 (G_24_0, {g[24],G_23_0}, p[24]);

	// Final Stage: Apply c_k+1=G_k_0
	assign c[1]=g[0];
	assign c[2]=G_1_0;
	assign c[3]=G_2_0;
	assign c[4]=G_3_0;
	assign c[5]=G_4_0;
	assign c[6]=G_5_0;
	assign c[7]=G_6_0;
	assign c[8]=G_7_0;
	assign c[9]=G_8_0;

	assign c[10]=G_9_0;
	assign c[11]=G_10_0;
	assign c[12]=G_11_0;
	assign c[13]=G_12_0;
	assign c[14]=G_13_0;
	assign c[15]=G_14_0;
	assign c[16]=G_15_0;
	assign c[17]=G_16_0;

	assign c[18]=G_17_0;
	assign c[19]=G_18_0;
	assign c[20]=G_19_0;
	assign c[21]=G_20_0;
	assign c[22]=G_21_0;
	assign c[23]=G_22_0;
	assign c[24]=G_23_0;
	assign c[25]=G_24_0;

	assign c[26]=G_25_0;

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
