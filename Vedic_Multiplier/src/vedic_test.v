`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:03:24 08/08/2019
// Design Name:   vedic
// Module Name:   N:/My Work/Xilinx models/Project/Vedic_Multiplier/vedic_test.v
// Project Name:  Vedic_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vedic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vedic_test;
parameter n=5;
	// Inputs
	reg [23:0] a;
	reg [23:0] b;
	reg clk;

	// Outputs
	wire [23:0] c;

	// Instantiate the Unit Under Test (UUT)
	vedic uut (
		.a(a), 
		.b(b), 
		.clk(clk), 
		.c(c)
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
		a = 24'h487468;
		b = 24'h576358;
		#(2*n);
      a = 24'h849834;
		b = 24'h203547;
		#(2*n)
		a = 24'h745348;
		b = 24'h835929;
		#(2*n)
		a = 24'h329753;
		b = 24'h927239;

	end
      
endmodule

