`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:54:46 08/08/2019 
// Design Name: 
// Module Name:    vedic 
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
module vedic(
    input [23:0] a,
    input [23:0] b,
    input clk,
    output [23:0] c
    );
wire [23:0] a1,b1;
wire [47:0] c1;
buf99 M0 (.a(a),.b(b),.clk(clk),.a1(a1),.b1(b1));
vedic_24x24 M1 (.a(a1),.b(b1),.clk(clk),.c(c1));
buf29   M2 (.a(c1),.clk(clk),.a1(c));

endmodule
