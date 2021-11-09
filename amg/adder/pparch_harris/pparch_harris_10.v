// David-Harris Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [9:0] a, b;
	 input cin;
	 output [9:0] sum;
	 output cout;

	 wire [10:0] p,g;
	 wire [9:0] c;

// pre-computation
	 assign p={a^b,1'b0};
	 assign g={a&b, cin};

// prefix tree
	 david_harris prefix_tree(c, p[9:0], g[9:0]);

// post-computation
	 assign sum=p[10:1]^c;
	 assign cout=g[10]|(p[10]&c[9]);

endmodule

module david_harris (c, p, g);
	
	input [9:0] p;
	input [9:0] g;
	output [10:1] c;


	// parallel-prefix, David-Harris

	// Stage 1: Generates G/P pairs that span 1 bits
	grey g_1_0 (G_1_0, {g[1],g[0]}, p[1]);
	black b_3_2 (G_3_2, P_3_2, {g[3],g[2]}, {p[3],p[2]});
	black b_5_4 (G_5_4, P_5_4, {g[5],g[4]}, {p[5],p[4]});
	black b_7_6 (G_7_6, P_7_6, {g[7],g[6]}, {p[7],p[6]});
	black b_9_8 (G_9_8, P_9_8, {g[9],g[8]}, {p[9],p[8]});

	// Stage 2: Generates G/P pairs that span 2 bits
	grey g_3_0 (G_3_0, {G_3_2,G_1_0}, P_3_2);
	black b_5_2 (G_5_2, P_5_2, {G_5_4,G_3_2}, {P_5_4,P_3_2});
	black b_7_4 (G_7_4, P_7_4, {G_7_6,G_5_4}, {P_7_6,P_5_4});
	black b_9_6 (G_9_6, P_9_6, {G_9_8,G_7_6}, {P_9_8,P_7_6});

	// Stage 3: Generates G/P pairs that span 4 bits
	grey g_5_0 (G_5_0, {G_5_2,G_1_0}, P_5_2);
	grey g_7_0 (G_7_0, {G_7_4,G_3_0}, P_7_4);
	black b_9_2 (G_9_2, P_9_2, {G_9_6,G_5_2}, {P_9_6,P_5_2});

	// Stage 4: Generates G/P pairs that span 8 bits

	// Extra grey cell stage 
	grey g_2_0 (G_2_0, {g[2],G_1_0}, p[2]);
	grey g_4_0 (G_4_0, {g[4],G_3_0}, p[4]);
	grey g_6_0 (G_6_0, {g[6],G_5_0}, p[6]);
	grey g_8_0 (G_8_0, {g[8],G_7_0}, p[8]);

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
