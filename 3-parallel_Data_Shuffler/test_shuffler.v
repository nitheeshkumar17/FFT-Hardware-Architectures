`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:40:54 09/11/2019
// Design Name:   basic_shuffler
// Module Name:   N:/My Work/Xilinx models/Project/Data_Shuffler/test_shuffler.v
// Project Name:  Data_Shuffler
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: basic_shuffler
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shuffler;
parameter n=5;
	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg sel,clk;

	// Outputs
	wire [31:0] a1;
	wire [31:0] b1;

	// Instantiate the Unit Under Test (UUT)
	basic_shuffler uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.clk(clk),
		.a1(a1), 
		.b1(b1)
	);
initial begin
      sel=0;
#10000000 $stop;
end
always begin
#(2*n) sel=~sel;
end
initial begin
      clk=0;
#10000000 $stop;
end
always begin
#n clk=~clk;
end
	initial begin
		a=32'h00000001;
b=32'h00000002;		
#(2*n)
a=32'h00000003;
b=32'h00000004;
#(2*n)
a=32'h00000005;
b=32'h00000006;
end
      
endmodule

