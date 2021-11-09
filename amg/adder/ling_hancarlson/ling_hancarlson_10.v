// Han-Carlson Prefix Adder

module adder (cout, sum, a, b, cin);
	 input [9:0] a, b;
	 input cin;
	 output [9:0] sum;
	 output cout;

	 wire [10:0] p,g;
	 wire [10:1] h,c;

// pre-computation
	 assign p={a|b,1'b1};
	 assign g={a&b, cin};

// prefix tree
	 han_carlson prefix_tree(h, c, p, g, sum, cout);

endmodule

module han_carlson (h, c, p, g, sum, cout);
	
	input [10:0] p;
	input [10:0] g;
	output [10:1] h;
	output [10:1] c;
	output [9:0] sum;
	output cout;


	// parallel-prefix, Han-Carlson

	// Stage 1: Generates H/I pairs that span 1 bits
	rgry g_1_0 (H_1_0, {g[1],g[0]});
	rblk b_3_2 (H_3_2, I_3_2, {g[3],g[2]}, {p[2],p[1]});
	rblk b_5_4 (H_5_4, I_5_4, {g[5],g[4]}, {p[4],p[3]});
	rblk b_7_6 (H_7_6, I_7_6, {g[7],g[6]}, {p[6],p[5]});
	rblk b_9_8 (H_9_8, I_9_8, {g[9],g[8]}, {p[8],p[7]});

	// Stage 2: Generates H/I pairs that span 2 bits
	grey g_3_0 (H_3_0, {H_3_2,H_1_0}, I_3_2);
	black b_5_2 (H_5_2, I_5_2, {H_5_4,H_3_2}, {I_5_4,I_3_2});
	black b_7_4 (H_7_4, I_7_4, {H_7_6,H_5_4}, {I_7_6,I_5_4});
	black b_9_6 (H_9_6, I_9_6, {H_9_8,H_7_6}, {I_9_8,I_7_6});

	// Stage 3: Generates H/I pairs that span 4 bits
	grey g_5_0 (H_5_0, {H_5_2,H_1_0}, I_5_2);
	grey g_7_0 (H_7_0, {H_7_4,H_3_0}, I_7_4);
	black b_9_2 (H_9_2, I_9_2, {H_9_6,H_5_2}, {I_9_6,I_5_2});

	// Stage 4: Generates H/I pairs that span 8 bits
	grey g_9_0 (H_9_0, {H_9_2,H_1_0}, I_9_2);

	// Extra grey cell stage 
	grey g_2_0 (H_2_0, {g[2],H_1_0}, p[1]);
	grey g_4_0 (H_4_0, {g[4],H_3_0}, p[3]);
	grey g_6_0 (H_6_0, {g[6],H_5_0}, p[5]);
	grey g_8_0 (H_8_0, {g[8],H_7_0}, p[7]);

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
// post-computation
	 assign h[10]=g[10]|c[10];
	 assign sum=p[10:1]^h|g[10:1]&c;
	 assign cout=p[10]&h[10];


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
