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
	reg [31:0] d_re;
	reg [31:0] e_re;
	reg [31:0] a_img;
	reg [31:0] b_img;
	reg [31:0] c_img;
	reg [31:0] d_img;
	reg [31:0] e_img;
	reg clk;

	// Outputs
	wire [31:0] a_1_re;
	wire [31:0] b_1_re;
	wire [31:0] c_1_re;
	wire [31:0] d_1_re;
	wire [31:0] e_1_re;
	wire [31:0] a_1_img;
	wire [31:0] b_1_img;
	wire [31:0] c_1_img;
	wire [31:0] d_1_img;
	wire [31:0] e_1_img;
	// Instantiate the Unit Under Test (UUT)
	Radix_5 uut (
		.a_re(a_re), 
		.b_re(b_re), 
		.c_re(c_re),
		.d_re(d_re),
		.e_re(e_re),
		.a_img(a_img), 
		.b_img(b_img), 
		.c_img(c_img),
		.d_img(d_img),
		.e_img(e_img),
		.ao_re(a_1_re), 
		.bo_re(b_1_re), 
		.co_re(c_1_re),
		.do_re(d_1_re),
		.eo_re(e_1_re),
		.ao_img(a_1_img), 
		.bo_img(b_1_img), 
		.co_img(c_1_img), 
		.do_img(d_1_img),
		.eo_img(e_1_img),
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

a_re=32'h3f491a30;
b_re=32'h3f15c290;
c_re=32'hc14c0000;
d_re=32'hc1361234;
e_re=32'hc0341a18;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
d_img=32'h42acd70a;
e_img=32'h42a5ed71;

#(2*n) a_re=32'hc142a3d7;
b_re=32'h41555c29;
c_re=32'hc1361234;
d_re=32'h40dbc71d;
e_re=32'hc13905ea;
a_img=32'h4213570a;
b_img=32'hc279570a;
c_img=32'h42acd70a;
d_img=32'h41f9570a;
e_img=32'h4258397a;

#(2*n) a_re=32'hbf491a30;
b_re=32'h3f15c290;
c_re=32'h414c0000;
d_re=32'hc1361234;
e_re=32'h40341a18;
a_img=32'hc1361234;
b_img=32'h414c0000;
c_img=32'hc246570a;
d_img=32'hc2acd70a;
e_img=32'h419dd415;

#(2*n) a_re=32'hc23cc097;
b_re=32'hbf15c290;
c_re=32'h422b6cff;
d_re=32'h41361234;
e_re=32'hc0341a18;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
d_img=32'h42acd70a;
e_img=32'h42a5ed71;
end
endmodule

