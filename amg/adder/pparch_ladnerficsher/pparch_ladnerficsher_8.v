// Ladner-Fischer Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [7:0] a, b;
	 input cin;
	 output [7:0] sum;
	 output cout;

	 wire [8:0] p,g;
	 wire [7:0] c;

// pre-computation
	 assign p={a^b,1'b0};
	 assign g={a&b, cin};

// prefix tree
	 ladner_fischer prefix_tree(c, p[7:0], g[7:0]);

// post-computation
	 assign sum=p[8:1]^c;
	 assign cout=g[8]|(p[8]&c[7]);

endmodule

module ladner_fischer (c, p, g);
	
	input [7:0] p;
	input [7:0] g;
	output [8:1] c;


	// parallel-prefix, Ladner-Fischer

	// Stage 1: Generates G/P pairs that span 1 bits
	grey b_1_0 (G_1_0, {g[1],g[0]}, p[1]);
	black b_3_2 (G_3_2, P_3_2, {g[3],g[2]}, {p[3],p[2]});
	black b_5_4 (G_5_4, P_5_4, {g[5],g[4]}, {p[5],p[4]});
	black b_7_6 (G_7_6, P_7_6, {g[7],g[6]}, {p[7],p[6]});

	// Stage 2: Generates G/P pairs that span 2 bits
	grey g_3_0 (G_3_0, {G_3_2,G_1_0}, P_3_2);
	black b_7_4 (G_7_4, P_7_4, {G_7_6,G_5_4}, {P_7_6,P_5_4});

	// Stage 3: Generates G/P pairs that span 4 bits
	grey g_5_0 (G_5_0, {G_5_4,G_3_0}, P_5_4);
	grey g_7_0 (G_7_0, {G_7_4,G_3_0}, P_7_4);

	// Extra grey cell stage 
	grey g_2_0 (G_2_0, {g[2],G_1_0}, p[2]);
	grey g_4_0 (G_4_0, {g[4],G_3_0}, p[4]);
	grey g_6_0 (G_6_0, {g[6],G_5_0}, p[6]);

	// Final Stage: Apply c_k+1=G_k_0
	assign c[1]=g[0];
	assign c[2]=G_1_0;
	assign c[3]=G_2_0;
	assign c[4]=G_3_0;
	assign c[5]=G_4_0;
	assign c[6]=G_5_0;
	assign c[7]=G_6_0;
	assign c[8]=G_7_0;

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
