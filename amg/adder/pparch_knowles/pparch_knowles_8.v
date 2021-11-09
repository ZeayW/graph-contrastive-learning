// Knowles Prefix Adder

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
	 knowles prefix_tree(c, p[7:0], g[7:0]);

// post-computation
	 assign sum=p[8:1]^c;
	 assign cout=g[8]|(p[8]&c[7]);

endmodule

module knowles (c, p, g);
	
	input [7:0] p;
	input [7:0] g;
	output [8:1] c;


	// parallel-prefix, Knowles

	// Stage 1: Generates G/P pairs that span 1 bits
	grey g_1_0 (G_1_0, {g[1],g[0]}, p[1]);
	black b_1_0 (G_1_0, P_1_0, {g[1],g[0]}, {p[1],p[0]});
	black b_2_1 (G_2_1, P_2_1, {g[2],g[1]}, {p[2],p[1]});
	black b_3_2 (G_3_2, P_3_2, {g[3],g[2]}, {p[3],p[2]});
	black b_4_3 (G_4_3, P_4_3, {g[4],g[3]}, {p[4],p[3]});
	black b_5_4 (G_5_4, P_5_4, {g[5],g[4]}, {p[5],p[4]});
	black b_6_5 (G_6_5, P_6_5, {g[6],g[5]}, {p[6],p[5]});
	black b_7_6 (G_7_6, P_7_6, {g[7],g[6]}, {p[7],p[6]});


	// Stage 2: Generates G/P pairs that span 2 bits
	grey g_2_0 (G_2_0, {G_2_1,g[0]}, P_2_1);
	grey g_3_0 (G_3_0, {G_3_2,G_1_0}, P_3_2);
	black b_4_1 (G_4_1, P_4_1, {G_4_3,G_2_1}, {P_4_3,P_2_1});
	black b_5_2 (G_5_2, P_5_2, {G_5_4,G_3_2}, {P_5_4,P_3_2});
	black b_6_3 (G_6_3, P_6_3, {G_6_5,G_4_3}, {P_6_5,P_4_3});
	black b_7_4 (G_7_4, P_7_4, {G_7_6,G_5_4}, {P_7_6,P_5_4});

	// Stage 3: Generates G/P pairs that span 4 bits
	grey g_4_0 (G_4_0, {G_4_1,G_1_0}, P_4_1);
	grey g_5_0 (G_5_0, {G_5_2,G_1_0}, P_5_2);
	grey g_6_0 (G_6_0, {G_6_3,G_3_0}, P_6_3);
	grey g_7_0 (G_7_0, {G_7_4,G_3_0}, P_7_4);

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
