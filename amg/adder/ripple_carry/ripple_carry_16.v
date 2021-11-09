// Ripple-carry adder

module adder (cout, sum, a, b, cin);
	 input [15:0] a, b;
	 input cin;
	 output [15:0] sum;
	 output cout;

	 wire [16:1] c;


// prefix tree
	 ripple prefix_tree(a, b, cin, c, sum);

// post-computation
	 assign cout=c[16];

endmodule

module ripple (a, b, cin, cout, sum);
	
	input [15:0] a;
	input [15:0] b;
	input cin;
	output [16:1] cout;
	output [15:0] sum;

	wire [16:0] c;
	assign c[0]=cin;

	assign cout=c[16:1];

	fa fa_0 (a[0], b[0], c[0], sum[0], c[1]);
	fa fa_1 (a[1], b[1], c[1], sum[1], c[2]);
	fa fa_2 (a[2], b[2], c[2], sum[2], c[3]);
	fa fa_3 (a[3], b[3], c[3], sum[3], c[4]);
	fa fa_4 (a[4], b[4], c[4], sum[4], c[5]);
	fa fa_5 (a[5], b[5], c[5], sum[5], c[6]);
	fa fa_6 (a[6], b[6], c[6], sum[6], c[7]);
	fa fa_7 (a[7], b[7], c[7], sum[7], c[8]);
	fa fa_8 (a[8], b[8], c[8], sum[8], c[9]);
	fa fa_9 (a[9], b[9], c[9], sum[9], c[10]);
	fa fa_10 (a[10], b[10], c[10], sum[10], c[11]);
	fa fa_11 (a[11], b[11], c[11], sum[11], c[12]);
	fa fa_12 (a[12], b[12], c[12], sum[12], c[13]);
	fa fa_13 (a[13], b[13], c[13], sum[13], c[14]);
	fa fa_14 (a[14], b[14], c[14], sum[14], c[15]);
	fa fa_15 (a[15], b[15], c[15], sum[15], c[16]);

endmodule


// fa
module fa(a, b, c, sum, cout);

 input a, b, c;
 output sum, cout;
 assign {cout,sum}=a+b+c;

endmodule