`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:02:08 08/09/2019 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [31:0] a,
    input [31:0] b,
    input clk,
    output [31:0] c
    );

wire [31:0] a1,b1;
wire [23:0] a1_m,b1_m,a2_m,b2_m,c_m;
wire [23:0] c1_m,c2_m;
wire [7:0] a1_e,b1_e,a2_e,b2_e,c_e,c1_e,c2_e;
wire a1_s,b1_s,a2_s,b2_s,c_s,c1_s,c2_s;

buf32 M0 (.a(a),.b(b),.clk(clk),.a1(a1),.b1(b1));
regdiv M1 (.a(a1),.b(b1),.a_m(a1_m),.a_e(a1_e),.a_s(a1_s),.b_m(b1_m),.b_e(b1_e),.b_s(b1_s));
buf33 M2 (.a_m(a1_m),.b_m(b1_m),.a_e(a1_e),.b_e(b1_e),.a_s(a1_s),.b_s(b1_s),.clk(clk),.a1_m(a2_m),.b1_m(b2_m),.a1_e(a2_e),.b1_e(b2_e),.a1_s(a2_s),.b1_s(b2_s));
exponent M3(.a(a2_e),.b(b2_e),.a_s(a2_s),.b_s(b2_s),.c(c_e),.c_s(c_s));
vedic	M4 (.a(a2_m),.b(b2_m),.clk(clk),.c(c_m));
buf34 M5 (.c_m(c_m),.c_e(c_e),.c_s(c_s),.clk(clk),.c1_m(c1_m),.c1_e(c1_e),.c1_s(c1_s));
normalise M6 (.c_m(c1_m),.c_e(c1_e),.c_s(c1_s),.c1_m(c2_m),.c1_e(c2_e),.c1_s(c2_s));
buf35 M7 (.c_m(c2_m),.c_e(c2_e),.c_s(c2_s),.clk(clk),.c(c));

endmodule
