// Ripple-carry adder

module adder (cout, sum, a, b, cin);
	 input [7:0] a, b;
	 input cin;
	 output [7:0] sum;
	 output cout;

	 wire [8:1] c;


// prefix tree
	 ripple prefix_tree(a, b, cin, c, sum);

// post-computation
	 assign cout=c[8];

endmodule

module ripple (a, b, cin, cout, sum);
	
	input [7:0] a;
	input [7:0] b;
	input cin;
	output [8:1] cout;
	output [7:0] sum;

	wire [8:0] c;
	assign c[0]=cin;

	assign cout=c[8:1];

	fa fa_0 (a[0], b[0], c[0], sum[0], c[1]);
	fa fa_1 (a[1], b[1], c[1], sum[1], c[2]);
	fa fa_2 (a[2], b[2], c[2], sum[2], c[3]);
	fa fa_3 (a[3], b[3], c[3], sum[3], c[4]);
	fa fa_4 (a[4], b[4], c[4], sum[4], c[5]);
	fa fa_5 (a[5], b[5], c[5], sum[5], c[6]);
	fa fa_6 (a[6], b[6], c[6], sum[6], c[7]);
	fa fa_7 (a[7], b[7], c[7], sum[7], c[8]);

endmodule


// fa
module fa(a, b, c, sum, cout);

 input a, b, c;
 output sum, cout;
 assign {cout,sum}=a+b+c;

endmodule