`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:15:05 09/11/2019 
// Design Name: 
// Module Name:    shuffler 
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
module shuffler(
    input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    input clk2,
    input sel,sel1,sel4,sel2,sel7,
    output [31:0] a1,
    output [31:0] c1
    );
wire [31:0] b3,c3,b2,c2,a2,a4,b4,b5,a5,a6;
wire [31:0] b6,a7,b7,c4,c5,a8,a9,b9,a10,b10,c11,c12,c13;
buf90 M7 (.a(a),.clk(clk2),.a1(a2));
mux_2x1 M8 (.data0(a),.data1(a2),.sel(sel1),.data_out(a4));
mux_2x1 M9 (.data0(a2),.data1(a),.sel(sel1),.data_out(b2));
buf90 M0 (.a(b),.clk(clk2),.a1(b3));
mux_2x1 M10 (.data0(b3),.data1(b),.sel(~sel4),.data_out(b4));
buf88 M11 (.a(b4),.clk(clk2),.a1(b5));
buf90 M20 (.a(a4),.clk(clk2),.a1(a8));
buf90 M1 (.a(c),.clk(clk2),.a1(c3));
buf88 M27 (.a(c3),.clk(clk2),.a1(c11));
mux_2x1 M18 (.data0(c3),.data1(c),.sel(~sel4),.data_out(c4));
buf88 M19 (.a(c4),.clk(clk2),.a1(c5));
mux_2x1 M2 (.data0(a8),.data1(b5),.sel(sel),.data_out(a9));
mux_2x1 M3 (.data0(b2),.data1(c5),.sel(sel),.data_out(b9));
buf88 M21 (.a(a9),.clk(clk2),.a1(a10));
buf88 M22 (.a(b9),.clk(clk2),.a1(b10));
mux_2x1 M23 (.data0(b10),.data1(a10),.sel(sel4),.data_out(a1));
mux_2x1 M25 (.data0(a2),.data1(c11),.sel(sel2),.data_out(c12));
buf90 M28 (.a(c12),.clk(clk2),.a1(c13));
mux_2x1 M29 (.data0(a9),.data1(c13),.sel(sel7),.data_out(c1));
endmodule
