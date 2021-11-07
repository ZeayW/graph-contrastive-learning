module cass_16bit(pout,a,pin,cin);
	output [15:0] pout;
	input [15:0] a;
	input [14:0] pin;
	input cin;
	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
	cass ca1(.pout(pout[0]),.cout(c1),.a(a[0]),.pin(1'b0),.cin(cin));
	cass ca2(.pout(pout[1]),.cout(c2),.a(a[1]),.pin(pin[0]),.cin(c1));
	cass ca3(.pout(pout[2]),.cout(c3),.a(a[2]),.pin(pin[1]),.cin(c2));
	cass ca4(.pout(pout[3]),.cout(c4),.a(a[3]),.pin(pin[2]),.cin(c3));
	cass ca5(.pout(pout[4]),.cout(c5),.a(a[4]),.pin(pin[3]),.cin(c4));
	cass ca6(.pout(pout[5]),.cout(c6),.a(a[5]),.pin(pin[4]),.cin(c5));
	cass ca7(.pout(pout[6]),.cout(c7),.a(a[6]),.pin(pin[5]),.cin(c6));
	cass ca8(.pout(pout[7]),.cout(c8),.a(a[7]),.pin(pin[6]),.cin(c7));
	cass ca9(.pout(pout[8]),.cout(c9),.a(a[8]),.pin(pin[7]),.cin(c8));
	cass ca10(.pout(pout[9]),.cout(c10),.a(a[9]),.pin(pin[8]),.cin(c9));
	cass ca11(.pout(pout[10]),.cout(c11),.a(a[10]),.pin(pin[9]),.cin(c10));
	cass ca12(.pout(pout[11]),.cout(c12),.a(a[11]),.pin(pin[10]),.cin(c11));
	cass ca13(.pout(pout[12]),.cout(c13),.a(a[12]),.pin(pin[11]),.cin(c12));
	cass ca14(.pout(pout[13]),.cout(c14),.a(a[13]),.pin(pin[12]),.cin(c13));
	cass ca15(.pout(pout[14]),.cout(c15),.a(a[14]),.pin(pin[13]),.cin(c14));
	cass ca16(.pout(pout[15]),.cout(x),.a(a[15]),.pin(pin[14]),.cin(c15));
endmodule

module cass_17bit(pout,a,pin,cin);
	output [16:0] pout;
	input [15:0] a;
	input [15:0] pin;
	input cin;
	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
	cass ca1(.pout(pout[0]),.cout(c1),.a(a[0]),.pin(1'b0),.cin(cin));
	cass ca2(.pout(pout[1]),.cout(c2),.a(a[1]),.pin(pin[0]),.cin(c1));
	cass ca3(.pout(pout[2]),.cout(c3),.a(a[2]),.pin(pin[1]),.cin(c2));
	cass ca4(.pout(pout[3]),.cout(c4),.a(a[3]),.pin(pin[2]),.cin(c3));
	cass ca5(.pout(pout[4]),.cout(c5),.a(a[4]),.pin(pin[3]),.cin(c4));
	cass ca6(.pout(pout[5]),.cout(c6),.a(a[5]),.pin(pin[4]),.cin(c5));
	cass ca7(.pout(pout[6]),.cout(c7),.a(a[6]),.pin(pin[5]),.cin(c6));
	cass ca8(.pout(pout[7]),.cout(c8),.a(a[7]),.pin(pin[6]),.cin(c7));
	cass ca9(.pout(pout[8]),.cout(c9),.a(a[8]),.pin(pin[7]),.cin(c8));
	cass ca10(.pout(pout[9]),.cout(c10),.a(a[9]),.pin(pin[8]),.cin(c9));
	cass ca11(.pout(pout[10]),.cout(c11),.a(a[10]),.pin(pin[9]),.cin(c10));
	cass ca12(.pout(pout[11]),.cout(c12),.a(a[11]),.pin(pin[10]),.cin(c11));
	cass ca13(.pout(pout[12]),.cout(c13),.a(a[12]),.pin(pin[11]),.cin(c12));
	cass ca14(.pout(pout[13]),.cout(c14),.a(a[13]),.pin(pin[12]),.cin(c13));
	cass ca15(.pout(pout[14]),.cout(c15),.a(a[14]),.pin(pin[13]),.cin(c14));
	cass ca16(.pout(pout[15]),.cout(c16),.a(a[15]),.pin(pin[14]),.cin(c15));
	cass ca17(.pout(pout[16]),.cout(x),.a(a[15]),.pin(pin[15]),.cin(c16));
endmodule

module booth_array_16bit(prod,a,b);
	output [31:0] prod;
	input [15:0] a,b;
	
	wire cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cr10,cr11,cr12,cr13,cr14,cr15,cr16;
	wire [15:0] mdr1,mdr2,mdr3,mdr4,mdr5,mdr6,mdr7,mdr8,mdr9,mdr10,mdr11,mdr12,mdr13,mdr14,mdr15,mdr16;
	
	wire [15:0] poutr1;
	wire [16:0] poutr2;
	wire [17:0] poutr3;
	wire [18:0] poutr4;
	wire [19:0] poutr5;
	wire [20:0] poutr6;
	wire [21:0] poutr7;
	wire [22:0] poutr8;
	wire [23:0] poutr9;
	wire [24:0] poutr10;
	wire [25:0] poutr11;
	wire [26:0] poutr12;
	wire [27:0] poutr13;
	wire [28:0] poutr14;
	wire [29:0] poutr15;
	wire [30:0] poutr16;
	
	ctrl c1(.md(mdr1),.cin(cr1),.a(a),.xi({b[15],b[14]}));
	cass_16bit c16b1(.pout(poutr1),.a(mdr1),.pin(15'd0),.cin(cr1));
	
	ctrl c2(.md(mdr2),.cin(cr2),.a(a),.xi({b[14],b[13]}));
	cass_17bit c17b1(.pout(poutr2),.a(mdr2),.pin(poutr1),.cin(cr2));

	ctrl c3(.md(mdr3),.cin(cr3),.a(a),.xi({b[13],b[12]}));
	cass_18bit c18b1(.pout(poutr3),.a(mdr3),.pin(poutr2),.cin(cr3));

	ctrl c4(.md(mdr4),.cin(cr4),.a(a),.xi({b[12],b[11]}));
	cass_19bit c19b1(.pout(poutr4),.a(mdr4),.pin(poutr3),.cin(cr4));

	ctrl c5(.md(mdr5),.cin(cr5),.a(a),.xi({b[11],b[10]}));
	cass_20bit c20b1(.pout(poutr5),.a(mdr5),.pin(poutr4),.cin(cr5));

	ctrl c6(.md(mdr6),.cin(cr6),.a(a),.xi({b[10],b[9]}));
	cass_21bit c21b1(.pout(poutr6),.a(mdr6),.pin(poutr5),.cin(cr6));

	ctrl c7(.md(mdr7),.cin(cr7),.a(a),.xi({b[9],b[8]}));
	cass_22bit c22b1(.pout(poutr7),.a(mdr7),.pin(poutr6),.cin(cr7));

	ctrl c8(.md(mdr8),.cin(cr8),.a(a),.xi({b[8],b[7]}));
	cass_23bit c23b1(.pout(poutr8),.a(mdr8),.pin(poutr7),.cin(cr8));

	ctrl c9(.md(mdr9),.cin(cr9),.a(a),.xi({b[7],b[6]}));
	cass_24bit c24b1(.pout(poutr9),.a(mdr9),.pin(poutr8),.cin(cr9));

	ctrl c10(.md(mdr10),.cin(cr10),.a(a),.xi({b[6],b[5]}));
	cass_25bit c25b1(.pout(poutr10),.a(mdr10),.pin(poutr9),.cin(cr10));

	ctrl c11(.md(mdr11),.cin(cr11),.a(a),.xi({b[5],b[4]}));
	cass_26bit c26b1(.pout(poutr11),.a(mdr11),.pin(poutr10),.cin(cr11));

	ctrl c12(.md(mdr12),.cin(cr12),.a(a),.xi({b[4],b[3]}));
	cass_27bit c27b1(.pout(poutr12),.a(mdr12),.pin(poutr11),.cin(cr12));

	ctrl c13(.md(mdr13),.cin(cr13),.a(a),.xi({b[3],b[2]}));
	cass_28bit c28b1(.pout(poutr13),.a(mdr13),.pin(poutr12),.cin(cr13));

	ctrl c14(.md(mdr14),.cin(cr14),.a(a),.xi({b[2],b[1]}));
	cass_29bit c29b1(.pout(poutr14),.a(mdr14),.pin(poutr13),.cin(cr14));

	ctrl c15(.md(mdr15),.cin(cr15),.a(a),.xi({b[1],b[0]}));
	cass_30bit c30b1(.pout(poutr15),.a(mdr15),.pin(poutr14),.cin(cr15));

	ctrl c16(.md(mdr16),.cin(cr16),.a(a),.xi({b[0],1'b0}));
	cass_31bit c31b1(.pout(poutr16),.a(mdr16),.pin(poutr15),.cin(cr16));


	
	
	
	
	
	
	
	/*
	
	ctrl c2(.md(mdr2),.cin(cr2),.a(a),.xi({b[2],b[1]}));
	cass_5bit c5b1(.pout(poutr2),.a(mdr2),.pin(poutr1),.cin(cr2));
	
	ctrl c3(.md(mdr3),.cin(cr3),.a(a),.xi({b[1],b[0]}));
	cass_6bit c6b1(.pout(poutr3),.a(mdr3),.pin(poutr2),.cin(cr3));
	
	ctrl c4(.md(mdr4),.cin(cr4),.a(a),.xi({b[0],1'b0}));
	cass_7bit c7b1(.pout(poutr4),.a(mdr4),.pin(poutr3),.cin(cr4));
	*/
	
	assign prod = {poutr16[30],poutr16};
endmodule