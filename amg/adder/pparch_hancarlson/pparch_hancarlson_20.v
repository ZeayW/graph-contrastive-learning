// Han-Carlson Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [19:0] a, b;
	 input cin;
	 output [19:0] sum;
	 output cout;

	 wire [20:0] p,g;
	 wire [19:0] c;

// pre-computation
	 assign p={a^b,1'b0};
	 assign g={a&b, cin};

// prefix tree
	 han_carlson prefix_tree(c, p[19:0], g[19:0]);

// post-computation
	 assign sum=p[20:1]^c;
	 assign cout=g[20]|(p[20]&c[19]);

endmodule

module han_carlson (c, p, g);
	
	input [19:0] p;
	input [19:0] g;
	output [20:1] c;


	// parallel-prefix, Han-Carlson

	// Stage 1: Generates G/P pairs that span 1 bits
	grey g_1_0 (G_1_0, {g[1],g[0]}, p[1]);
	black b_3_2 (G_3_2, P_3_2, {g[3],g[2]}, {p[3],p[2]});
	black b_5_4 (G_5_4, P_5_4, {g[5],g[4]}, {p[5],p[4]});
	black b_7_6 (G_7_6, P_7_6, {g[7],g[6]}, {p[7],p[6]});
	black b_9_8 (G_9_8, P_9_8, {g[9],g[8]}, {p[9],p[8]});
	black b_11_10 (G_11_10, P_11_10, {g[11],g[10]}, {p[11],p[10]});
	black b_13_12 (G_13_12, P_13_12, {g[13],g[12]}, {p[13],p[12]});
	black b_15_14 (G_15_14, P_15_14, {g[15],g[14]}, {p[15],p[14]});

	black b_17_16 (G_17_16, P_17_16, {g[17],g[16]}, {p[17],p[16]});
	black b_19_18 (G_19_18, P_19_18, {g[19],g[18]}, {p[19],p[18]});

	// Stage 2: Generates G/P pairs that span 2 bits
	grey g_3_0 (G_3_0, {G_3_2,G_1_0}, P_3_2);
	black b_5_2 (G_5_2, P_5_2, {G_5_4,G_3_2}, {P_5_4,P_3_2});
	black b_7_4 (G_7_4, P_7_4, {G_7_6,G_5_4}, {P_7_6,P_5_4});
	black b_9_6 (G_9_6, P_9_6, {G_9_8,G_7_6}, {P_9_8,P_7_6});
	black b_11_8 (G_11_8, P_11_8, {G_11_10,G_9_8}, {P_11_10,P_9_8});
	black b_13_10 (G_13_10, P_13_10, {G_13_12,G_11_10}, {P_13_12,P_11_10});
	black b_15_12 (G_15_12, P_15_12, {G_15_14,G_13_12}, {P_15_14,P_13_12});
	black b_17_14 (G_17_14, P_17_14, {G_17_16,G_15_14}, {P_17_16,P_15_14});

	black b_19_16 (G_19_16, P_19_16, {G_19_18,G_17_16}, {P_19_18,P_17_16});

	// Stage 3: Generates G/P pairs that span 4 bits
	grey g_5_0 (G_5_0, {G_5_2,G_1_0}, P_5_2);
	grey g_7_0 (G_7_0, {G_7_4,G_3_0}, P_7_4);
	black b_9_2 (G_9_2, P_9_2, {G_9_6,G_5_2}, {P_9_6,P_5_2});
	black b_11_4 (G_11_4, P_11_4, {G_11_8,G_7_4}, {P_11_8,P_7_4});
	black b_13_6 (G_13_6, P_13_6, {G_13_10,G_9_6}, {P_13_10,P_9_6});
	black b_15_8 (G_15_8, P_15_8, {G_15_12,G_11_8}, {P_15_12,P_11_8});
	black b_17_10 (G_17_10, P_17_10, {G_17_14,G_13_10}, {P_17_14,P_13_10});
	black b_19_12 (G_19_12, P_19_12, {G_19_16,G_15_12}, {P_19_16,P_15_12});


	// Stage 4: Generates G/P pairs that span 8 bits
	grey g_9_0 (G_9_0, {G_9_2,G_1_0}, P_9_2);
	grey g_11_0 (G_11_0, {G_11_4,G_3_0}, P_11_4);
	grey g_13_0 (G_13_0, {G_13_6,G_5_0}, P_13_6);
	grey g_15_0 (G_15_0, {G_15_8,G_7_0}, P_15_8);
	black b_17_2 (G_17_2, P_17_2, {G_17_10,G_9_2}, {P_17_10,P_9_2});
	black b_19_4 (G_19_4, P_19_4, {G_19_12,G_11_4}, {P_19_12,P_11_4});

	// Stage 5: Generates G/P pairs that span 16 bits
	grey g_17_0 (G_17_0, {G_17_2,G_1_0}, P_17_2);
	grey g_19_0 (G_19_0, {G_19_4,G_3_0}, P_19_4);

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
