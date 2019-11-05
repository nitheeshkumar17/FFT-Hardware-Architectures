`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:34 07/19/2019 
// Design Name: 
// Module Name:    Radix_5_3 
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
module Radix_5_3(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input [31:0] c_re,
    input [31:0] c_img,
    input [31:0] d_re,
    input [31:0] d_img,
    input [31:0] e_re,
    input [31:0] e_img,
    input clk,
    output [31:0] a_3_re,
    output [31:0] a_3_img,
    output [31:0] b_3_re,
    output [31:0] b_3_img,
    output [31:0] c_3_re,
    output [31:0] c_3_img,
    output [31:0] d_3_re,
    output [31:0] d_3_img,
    output [31:0] e_3_re,
    output [31:0] e_3_img
    );

wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img,d1_re,d1_img,e1_re,e1_img;
wire [31:0] b2_re,b2_img,c2_re,c2_img,d2_re,d2_img;

buf_inout M0 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.c_re(c_re),.c_img(c_img),.d_re(d_re),.d_img(d_img),.e_re(e_re),.e_img(e_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img),.b1_re(b1_re),.b1_img(b1_img),.c1_re(c1_re),.c1_img(c1_img),.d1_re(d1_re),.d1_img(d1_img),.e1_re(e1_re),.e1_img(e1_img));
mulb M1 (.b(d1_re),.b_out(d2_re));
mulb M2 (.b(d1_img),.b_out(d2_img));
fft3 M3 (.a_re(b1_re),.a_img(b1_img),.b_re(e1_re),.b_img(e1_img),.clk(clk),.x0_re(b_3_re),.x0_img(b_3_img),.x1_re(e_3_re),.x1_img(e_3_img));
fft3 M4 (.a_re(c1_re),.a_img(c1_img),.b_re(d2_re),.b_img(d2_img),.clk(clk),.x0_re(c_3_re),.x0_img(c_3_img),.x1_re(d_3_re),.x1_img(d_3_img));
buf_9 M5 (.a_re(a1_re),.a_img(a1_img),.clk(clk),.a1_re(a_3_re),.a1_img(a_3_img));
endmodule
