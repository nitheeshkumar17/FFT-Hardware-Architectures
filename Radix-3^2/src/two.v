module two (
	input [31:0] a,b,c,
	input clk,sel,sel1,
	output [31:0] b1
	);
wire [31:0] b2,b3,c2;
buf90 M0 (.a(b),.clk(clk),.a1(b2));
mux_2x1 M1 (.data0(a),.data1(b2),.sel(sel),.data_out(b3));
buf88 M2 (.a(c),.clk(clk),.a1(c2));
mux_2x1 M3 (.data0(b3),.data1(c2),.sel(sel1),.data_out(b1));
endmodule
