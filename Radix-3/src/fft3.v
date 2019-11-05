`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:37 07/03/2019 
// Design Name: 
// Module Name:    fft3 
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
module fft3(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input clk,
    output [31:0] x0_re,
    output [31:0] x0_img,
    output [31:0] x1_re,
    output [31:0] x1_img
	 );
wire [31:0] b1_re,b1_img,b2_re,b2_img,a1_re,a1_img,b3_re,b3_img,b4_re,b4_img;
mulc M0 (.b(b_re),.b1(b_img),.b2(b1_re),.b3(b1_img),.b4(b2_re),.b5(b2_img));
buf20 M1 (.a1_re(a_re),.a1_img(a_img),.b1_re(b1_re),.b1_img(b1_img),.b2_re(b2_re),.b2_img(b2_img),.clk(clk),.a2_re(a1_re),.a2_img(a1_img),.b3_re(b3_re),.b3_img(b3_img),.b4_re(b4_re),.b4_img(b4_img));
Complex_adder M2 (.a_re(a1_re),.b_re(b4_img),.a_img(a1_img),.b_img(b3_re),.clk(clk),.c_re(x0_re),.c_img(x0_img));
Complex_adder M3 (.a_re(a1_re),.b_re(b3_img),.a_img(a1_img),.b_img(b4_re),.clk(clk),.c_re(x1_re),.c_img(x1_img));
endmodule
