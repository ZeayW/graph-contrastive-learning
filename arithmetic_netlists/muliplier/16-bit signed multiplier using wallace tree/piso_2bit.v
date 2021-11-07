//8 bit PISO with synchronous reset and active high load pin. When load is zero, it shifts in serial 2 bits at a time. When load is one, it loads in parallel. 
`timescale 1ns/10ps
module piso_2bit(sout,pin,load,clk,rst);
    output reg [2:0] sout;
    input [7:0] pin;
    input load,clk,rst;
    reg [8:0] dout;
    always @(posedge clk)
        begin
            if(rst)
				begin
                dout = 8'd0;
				sout = 3'b0;
				end
            else if(load)
				begin
                dout = {pin,1'b0};
				sout = dout[2:0];
				end
            else
                begin
                    dout = {2'b0,dout[8:2]};
					sout = dout[2:0];
                end
        end
endmodule