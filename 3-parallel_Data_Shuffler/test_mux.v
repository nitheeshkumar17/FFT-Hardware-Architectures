`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:13:00 09/11/2019
// Design Name:   mux_2x1
// Module Name:   N:/My Work/Xilinx models/Project/Data_Shuffler/test_mux.v
// Project Name:  Data_Shuffler
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux;
parameter n=5;
	// Inputs
	reg [31:0] data0;
	reg [31:0] data1;
	reg sel;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	mux_2x1 uut (
		.data0(data0), 
		.data1(data1), 
		.sel(sel), 
		.data_out(data_out)
	);
initial begin
      sel=0;
#10000000 $stop;
end
always begin
#n sel=~sel;
end
	initial begin
			data0=32'h00000001;
data1=32'h00000002;		
#(2*n)
data0=32'h00000003;
data1=32'h00000004;
#(2*n)
data0=32'h00000005;
data1=32'h00000006;
#(2*n)
data0=32'h00000007;
data1=32'h00000008;

	end
      
endmodule

