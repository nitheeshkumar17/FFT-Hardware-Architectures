module three_shuffler (
	input [31:0] a,b,c,
	input clk,sel,sel1,sel2,sel4,sel5,sel6,sel7,
	output [31:0] ao,bo,co
	);
wire [31:0] a1,a2,a3,a4,b1,b2,b3,c1,c2,c3,b4,b5;
buf90 M0 (.a(a),.clk(clk),.a1(a1));
buf90 M1 (.a(a1),.clk(clk),.a1(a2));
two M10 (.a(a),.b(b),.c(c),.clk(clk),.sel(sel5),.sel1(sel6),.b1(b5));
basic_shuffler M2 (.a(b),.b(c),.clk(clk),.sel(sel1),.a1(b1),.b1(c1));
buf88 M3 (.a(a2),.clk(clk),.a1(a3));
buf88 M4 (.a(b1),.clk(clk),.a1(b2));
buf88 M5 (.a(c1),.clk(clk),.a1(c2));
shuffler M6 (.a(a3),.b(b2),.c(c2),.clk2(clk),.sel(sel),.sel1(sel1),.sel4(sel4),.sel2(sel2),.sel7(sel7),.a1(a4),.c1(c3));
buf89 M7 (.a(a4),.clk(clk),.a1(ao));
buf91 M8 (.a(b5),.clk(clk),.a1(bo));
buf88 M9 (.a(c3),.clk(clk),.a1(co));
endmodule
