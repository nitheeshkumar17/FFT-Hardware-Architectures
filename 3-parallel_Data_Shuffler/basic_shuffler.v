`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:39:23 09/11/2019 
// Design Name: 
// Module Name:    basic_shuffler 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module basic_shuffler(
    input [31:0] a,
    input [31:0] b,
	 input sel,clk,
    output [31:0] a1,
    output [31:0] b1
    );
wire [31:0] a2,a3,b2,b3,b4;
buf88 M2 (.a(b),.clk(clk),.a1(b3));
mux_2x1 M3 (.data0(a),.data1(b3),.sel(sel),.data_out(a3));
buf88 M4 (.a(a3),.clk(clk),.a1(a1));
mux_2x1 M5 (.data0(b3),.data1(a),.sel(sel),.data_out(b4));
buf87 M6 (.a(b4),.clk(clk),.a1(b1));
endmodule
