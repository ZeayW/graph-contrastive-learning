// Ripple-carry adder

module adder (cout, sum, a, b, cin);
	 input [27:0] a, b;
	 input cin;
	 output [27:0] sum;
	 output cout;

	 wire [28:1] c;


// prefix tree
	 ripple prefix_tree(a, b, cin, c, sum);

// post-computation
	 assign cout=c[28];

endmodule

module ripple (a, b, cin, cout, sum);
	
	input [27:0] a;
	input [27:0] b;
	input cin;
	output [28:1] cout;
	output [27:0] sum;

	wire [28:0] c;
	assign c[0]=cin;

	assign cout=c[28:1];

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
	fa fa_16 (a[16], b[16], c[16], sum[16], c[17]);
	fa fa_17 (a[17], b[17], c[17], sum[17], c[18]);
	fa fa_18 (a[18], b[18], c[18], sum[18], c[19]);
	fa fa_19 (a[19], b[19], c[19], sum[19], c[20]);
	fa fa_20 (a[20], b[20], c[20], sum[20], c[21]);
	fa fa_21 (a[21], b[21], c[21], sum[21], c[22]);
	fa fa_22 (a[22], b[22], c[22], sum[22], c[23]);
	fa fa_23 (a[23], b[23], c[23], sum[23], c[24]);
	fa fa_24 (a[24], b[24], c[24], sum[24], c[25]);
	fa fa_25 (a[25], b[25], c[25], sum[25], c[26]);
	fa fa_26 (a[26], b[26], c[26], sum[26], c[27]);
	fa fa_27 (a[27], b[27], c[27], sum[27], c[28]);

endmodule


// fa
module fa(a, b, c, sum, cout);

 input a, b, c;
 output sum, cout;
 assign {cout,sum}=a+b+c;

endmodule