`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:00:11 07/26/2018
// Design Name:   K0
// Module Name:   N:/My Work/Xilinx models/Project/Radix_5/test_k0.v
// Project Name:  Radix_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: K0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_k0;
parameter n=5;
	// Inputs
	reg [31:0] a_re;
	reg [31:0] a_img;
	reg clk;

	// Outputs
	wire [31:0] a1_re;
	wire [31:0] a1_img;

	// Instantiate the Unit Under Test (UUT)
	k11 uut (
		.a_re(a_re), 
		.a_img(a_img), 
		.clk(clk), 
		.a1_re(a1_re), 
		.a1_img(a1_img)
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
a_img=32'h4246570a;

#(2*n) a_re=32'hc142a3d7;
a_img=32'h4213570a;

#(2*n) a_re=32'hbf491a30;
a_img=32'hc1361234;

#(2*n) a_re=32'hc23cc097;
a_img=32'h4246570a;
end

      
endmodule

