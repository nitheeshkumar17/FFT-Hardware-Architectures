`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:28:34 06/28/2019
// Design Name:   radix_3_2
// Module Name:   N:/My Work/Xilinx models/Project/Radix-3/test3.v
// Project Name:  Radix-3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix_3_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test3;
parameter n=5;
	// Inputs
	reg [31:0] a_re;
	reg [31:0] b_re;
	reg [31:0] c_re;
	reg [31:0] a_img;
	reg [31:0] b_img;
	reg [31:0] c_img;
	reg clk;

	// Outputs
	wire [31:0] ao_re;
	wire [31:0] bo_re;
	wire [31:0] co_re;
	wire [31:0] ao_img;
	wire [31:0] bo_img;
	wire [31:0] co_img;

	// Instantiate the Unit Under Test (UUT)
	radix_3_top uut (
		.a_re(a_re), 
		.b_re(b_re), 
		.c_re(c_re), 
		.a_img(a_img), 
		.b_img(b_img), 
		.c_img(c_img), 
		.ao_re(ao_re), 
		.bo_re(bo_re), 
		.co_re(co_re), 
		.ao_img(ao_img), 
		.bo_img(bo_img), 
		.co_img(co_img), 
		.clk(clk)
	);
initial begin
      clk=1;
#1000 $stop;
end
always begin
#n clk=~clk;
end

	initial begin
		// Initialize Inputs
   	a_re = 0;
		a_img = 0;
		b_re = 0;
		b_img = 0;
		c_re = 0;
		c_img = 0;
#(2*n)
a_re=32'h3f491a30;
b_re=32'h3f15c290;
c_re=32'hc14c0000;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
#(2*n)
a_re=32'h3fcae148;
b_re=32'hc2960000;
c_re=32'h414c0000;
a_img=32'h42f90000;
b_img=32'h414c0000;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h414c0000;
b_re=32'h42460000;
c_re=32'h415891a3;
a_img=32'h42960000;
b_img=32'h415891a3;
c_img=32'h42460000;		
#(2*n)
a_re=32'h4246570a;
b_re=32'h3fcae148;
c_re=32'hc13f6e5d;
a_img=32'h4243a8f6;
b_img=32'hc13f6e5d;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h4248570a;
b_re=32'h4243a8f6;
c_re=32'h3f491a30;
a_img=32'h3f15c290;
b_img=32'h3f491a30;
c_img=32'h4243a8f6;
#(2*n)
a_re=32'h3f491a30;
b_re=32'h3f15c290;
c_re=32'hc14c0000;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
#(2*n)
a_re=32'h3fcae148;
b_re=32'hc2960000;
c_re=32'h414c0000;
a_img=32'h42f90000;
b_img=32'h414c0000;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h414c0000;
b_re=32'h42460000;
c_re=32'h415891a3;
a_img=32'h42960000;
b_img=32'h415891a3;
c_img=32'h42460000;		
#(2*n)
a_re=32'h4246570a;
b_re=32'h3fcae148;
c_re=32'hc13f6e5d;
a_img=32'h4243a8f6;
b_img=32'hc13f6e5d;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h4248570a;
b_re=32'h4243a8f6;
c_re=32'h3f491a30;
a_img=32'h3f15c290;
b_img=32'h3f491a30;
c_img=32'h4243a8f6;

end
      
endmodule

