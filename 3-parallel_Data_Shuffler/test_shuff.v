`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:30:38 09/11/2019
// Design Name:   shuffler
// Module Name:   N:/My Work/Xilinx models/Project/Data_Shuffler/test_shuff.v
// Project Name:  Data_Shuffler
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shuffler
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shuff;
parameter n=5;
	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] c;
	reg clk2;
	reg sel;
	reg sel1,sel2,sel3,sel4,sel5,sel6,sel7;

	// Outputs
	wire [31:0] a1;
	wire [31:0] b1;
	wire [31:0] c1;

	// Instantiate the Unit Under Test (UUT)
	three_shuffler uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.clk(clk2), 
		.sel(sel), 
		.sel1(sel1),
		.sel2(sel2),
		.sel3(sel3),
		.sel4(sel4),
		.sel5(sel5),
		.sel6(sel6),
		.sel7(sel7),
		.ao(a1),
		.bo(b1), 
		.co(c1)
	);
initial begin
#(10*n)
 sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
end
initial begin
#(14*n)
sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
end
initial begin
sel1=0;
#100000 $stop;
end
always begin
#(2*n) sel1=~sel1;
end
initial begin
sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=0;
#(2*n) sel3=1;
#(2*n) sel3=1;
end
initial begin
#(8*n)
sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
end
initial begin
      clk2=0;
#100000 $stop;
end
always begin
#n clk2=~clk2;
end
initial begin
sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
end
initial begin
sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
end
initial begin
#(16*n)
sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
end
	initial begin
			a=32'd0;
b=32'd3;	
c=32'd6;	
#(2*n)
a=32'd1;
b=32'd4;
c=32'd7;
#(2*n)
a=32'd2;
b=32'd5;
c=32'd8;
#(2*n)
a=32'd10;
b=32'd13;	
c=32'd16;	
#(2*n)
a=32'd11;
b=32'd14;
c=32'd17;
#(2*n)
a=32'd12;
b=32'd15;
c=32'd18;
#(2*n)
a=32'd20;
b=32'd23;	
c=32'd26;	
#(2*n)
a=32'd21;
b=32'd24;
c=32'd27;
#(2*n)
a=32'd22;
b=32'd25;
c=32'd28;

	end
      
endmodule

