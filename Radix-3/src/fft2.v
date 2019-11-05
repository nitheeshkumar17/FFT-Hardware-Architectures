`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:02 06/27/2019 
// Design Name: 
// Module Name:    fft2 
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
module fft2(
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
wire [31:0] b_re_1,b_re_2,b_img_1,b_img_2;
wire [31:0] a0_re,a0_img,b0_re_1,b0_img_1,b0_re_2,b0_img_2;
assign b_re_1=b_re,b_img_1=b_img;
mul M0 (.a(b_re),.a_out(b_re_2));
mul M1 (.a(b_img),.a_out(b_img_2));
buf11 M2 (.a_re(a_re),.a_img(a_img),.b_re_1(b_re_1),.b_img_1(b_img_1),.b_re_2(b_re_2),.b_img_2(b_img_2),.clk(clk),.a0_re(a0_re),.a0_img(a0_img),.b0_re_1(b0_re_1),.b0_img_1(b0_img_1),.b0_re_2(b0_re_2),.b0_img_2(b0_img_2));
Complex_adder M3 (.a_re(a0_re),.b_re(b0_re_1),.a_img(a0_img),.b_img(b0_img_1),.clk(clk),.c_re(x0_re),.c_img(x0_img));
Complex_adder M4 (.a_re(a0_re),.b_re(b0_re_2),.a_img(a0_img),.b_img(b0_img_2),.clk(clk),.c_re(x1_re),.c_img(x1_img));
endmodule
