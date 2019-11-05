`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:12 02/03/2019 
// Design Name: 
// Module Name:    Complex_adder 
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
module Complex_adder(
    input [31:0] a_re,
    input [31:0] b_re,
    input [31:0] a_img,
    input [31:0] b_img,
    input clk,
    output [31:0] c_re,
    output [31:0] c_img
    );

floating_1 M1 (.a(a_re),.b(b_re),.clk(clk),.c(c_re));
floating_1	M2 (.a(a_img),.b(b_img),.clk(clk),.c(c_img));
endmodule
