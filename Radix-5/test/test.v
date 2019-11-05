`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:45 02/03/2019
// Design Name:   fft
// Module Name:   N:/My Work/Xilinx models/Radix2FFT-2/test.v
// Project Name:  Radix2FFT-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;
parameter n=5;
	// Inputs
	reg [31:0] a_re;
	reg [31:0] a_img;
	reg [31:0] b_re;
	reg [31:0] b_img;
	reg clk;

	// Outputs
	wire [31:0] x0_re;
	wire [31:0] x0_img;
	wire [31:0] x1_re;
	wire [31:0] x1_img;

	// Instantiate the Unit Under Test (UUT)
	fft2 uut (
		.a_re(a_re), 
		.a_img(a_img), 
		.b_re(b_re), 
		.b_img(b_img), 
		.clk(clk), 
		.x0_re(x0_re), 
		.x0_img(x0_img), 
		.x1_re(x1_re), 
		.x1_img(x1_img)
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
#(2*n)
a_re=32'h3f491a30;
b_re=32'h3f15c290;
a_img=32'h4246570a;
b_img=32'hc14c0000;
#(2*n)
a_re=32'h3fcae148;
b_re=32'hc2960000;
a_img=32'h42f90000;
b_img=32'h414c0000;
#(2*n)
a_re=32'h414c0000;
b_re=32'h42460000;
a_img=32'h42960000;
b_img=32'h415891a3;		
#(2*n)
a_re=32'h4246570a;
b_re=32'h3fcae148;
a_img=32'h4243a8f6;
b_img=32'hc13f6e5d;
#(2*n)
a_re=32'h4248570a;
b_re=32'h4243a8f6;
a_img=32'h3f15c290;
b_img=32'h3f491a30;

	end
      
endmodule

