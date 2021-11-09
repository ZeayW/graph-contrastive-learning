// David-Harris Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [19:0] a, b;
	 input cin;
	 output [19:0] sum;
	 output cout;

	 wire [20:0] p,g;
	 wire [20:1] h,c;

// pre-computation
	 assign p={a|b,1'b1};
	 assign g={a&b, cin};

// prefix tree
	 david_harris prefix_tree(h, c, p, g, sum, cout);

endmodule

module david_harris (h, c, p, g, sum, cout);
	
	input [20:0] p;
	input [20:0] g;
	output [20:1] h;
	output [20:1] c;
	output [19:0] sum;
	output cout;


	// parallel-prefix, David-Harris

	// Stage 1: Generates H/I pairs that span 1 bits
	rgry g_1_0 (H_1_0, {g[1],g[0]});
	rblk b_3_2 (H_3_2, I_3_2, {g[3],g[2]}, {p[2],p[1]});
	rblk b_5_4 (H_5_4, I_5_4, {g[5],g[4]}, {p[4],p[3]});
	rblk b_7_6 (H_7_6, I_7_6, {g[7],g[6]}, {p[6],p[5]});
	rblk b_9_8 (H_9_8, I_9_8, {g[9],g[8]}, {p[8],p[7]});
	rblk b_11_10 (H_11_10, I_11_10, {g[11],g[10]}, {p[10],p[9]});
	rblk b_13_12 (H_13_12, I_13_12, {g[13],g[12]}, {p[12],p[11]});
	rblk b_15_14 (H_15_14, I_15_14, {g[15],g[14]}, {p[14],p[13]});

	rblk b_17_16 (H_17_16, I_17_16, {g[17],g[16]}, {p[16],p[15]});
	rblk b_19_18 (H_19_18, I_19_18, {g[19],g[18]}, {p[18],p[17]});

	// Stage 2: Generates H/I pairs that span 2 bits
	grey g_3_0 (H_3_0, {H_3_2,H_1_0}, I_3_2);
	black b_5_2 (H_5_2, I_5_2, {H_5_4,H_3_2}, {I_5_4,I_3_2});
	black b_7_4 (H_7_4, I_7_4, {H_7_6,H_5_4}, {I_7_6,I_5_4});
	black b_9_6 (H_9_6, I_9_6, {H_9_8,H_7_6}, {I_9_8,I_7_6});
	black b_11_8 (H_11_8, I_11_8, {H_11_10,H_9_8}, {I_11_10,I_9_8});
	black b_13_10 (H_13_10, I_13_10, {H_13_12,H_11_10}, {I_13_12,I_11_10});
	black b_15_12 (H_15_12, I_15_12, {H_15_14,H_13_12}, {I_15_14,I_13_12});
	black b_17_14 (H_17_14, I_17_14, {H_17_16,H_15_14}, {I_17_16,I_15_14});

	black b_19_16 (H_19_16, I_19_16, {H_19_18,H_17_16}, {I_19_18,I_17_16});

	// Stage 3: Generates H/I pairs that span 4 bits
	grey g_5_0 (H_5_0, {H_5_2,H_1_0}, I_5_2);
	grey g_7_0 (H_7_0, {H_7_4,H_3_0}, I_7_4);
	black b_9_2 (H_9_2, I_9_2, {H_9_6,H_5_2}, {I_9_6,I_5_2});
	black b_11_4 (H_11_4, I_11_4, {H_11_8,H_7_4}, {I_11_8,I_7_4});
	black b_13_6 (H_13_6, I_13_6, {H_13_10,H_9_6}, {I_13_10,I_9_6});
	black b_15_8 (H_15_8, I_15_8, {H_15_12,H_11_8}, {I_15_12,I_11_8});
	black b_17_10 (H_17_10, I_17_10, {H_17_14,H_13_10}, {I_17_14,I_13_10});
	black b_19_12 (H_19_12, I_19_12, {H_19_16,H_15_12}, {I_19_16,I_15_12});


	// Stage 4: Generates H/I pairs that span 8 bits
	grey g_9_0 (H_9_0, {H_9_2,H_1_0}, I_9_2);
	grey g_11_0 (H_11_0, {H_11_4,H_3_0}, I_11_4);
	grey g_13_0 (H_13_0, {H_13_6,H_5_0}, I_13_6);
	grey g_15_0 (H_15_0, {H_15_8,H_7_0}, I_15_8);
	black b_17_2 (H_17_2, I_17_2, {H_17_10,H_9_2}, {I_17_10,I_9_2});
	black b_19_4 (H_19_4, I_19_4, {H_19_12,H_11_4}, {I_19_12,I_11_4});

	// Stage 5: Generates H/I pairs that span 16 bits
	grey g_17_0 (H_17_0, {H_17_2,H_3_0}, I_17_2);
	grey g_19_0 (H_19_0, {H_19_4,H_3_0}, I_19_4);

	// Extra grey cell stage 
	grey g_2_0 (H_2_0, {g[2],H_1_0}, p[1]);
	grey g_4_0 (H_4_0, {g[4],H_3_0}, p[3]);
	grey g_6_0 (H_6_0, {g[6],H_5_0}, p[5]);
	grey g_8_0 (H_8_0, {g[8],H_7_0}, p[7]);
	grey g_10_0 (H_10_0, {g[10],H_9_0}, p[9]);
	grey g_12_0 (H_12_0, {g[12],H_11_0}, p[11]);
	grey g_14_0 (H_14_0, {g[14],H_13_0}, p[13]);
	grey g_16_0 (H_16_0, {g[16],H_15_0}, p[15]);
	grey g_18_0 (H_18_0, {g[18],H_17_0}, p[17]);

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
// post-computation
	 assign h[20]=g[20]|c[20];
	 assign sum=p[20:1]^h|g[20:1]&c;
	 assign cout=p[20]&h[20];


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
