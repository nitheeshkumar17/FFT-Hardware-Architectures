`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:42 07/15/2019 
// Design Name: 
// Module Name:    Radix_5_1 
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
module Radix_5_1(
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
    output [31:0] a_1_re,
    output [31:0] a_1_img,
    output [31:0] b_1_re,
    output [31:0] b_1_img,
    output [31:0] c_1_re,
    output [31:0] c_1_img,
    output [31:0] d_1_re,
    output [31:0] d_1_img,
    output [31:0] e_1_re,
    output [31:0] e_1_img
    );
wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img,d1_re,d1_img,e1_re,e1_img;
wire [31:0] a2_re,a2_img,b2_re,b2_img,c2_re,c2_img,d2_re,d2_img,e2_re,e2_img;
wire [31:0] b3_re,b3_img,c3_re,c3_img,d3_re,d3_img,e3_re,e3_img;

assign a_1_re=a2_re,a_1_img=a2_img,b_1_re=b3_re,b_1_img=b3_img,c_1_re=c3_re,c_1_img=c3_img;
assign d_1_re=d3_re,d_1_img=d3_img,e_1_re=e3_re,e_1_img=e3_img;

buf_inout M0 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.c_re(c_re),.c_img(c_img),.d_re(d_re),.d_img(d_img),.e_re(e_re),.e_img(e_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img),.b1_re(b1_re),.b1_img(b1_img),.c1_re(c1_re),.c1_img(c1_img),.d1_re(d1_re),.d1_img(d1_img),.e1_re(e1_re),.e1_img(e1_img));
fft		 M1 (.a_re(b1_re),.a_img(b1_img),.b_re(e1_re),.b_img(e1_img),.clk(clk),.x0_re(b2_re),.x0_img(b2_img),.x1_re(e2_re),.x1_img(e2_img));
fft		 M2 (.a_re(c1_re),.a_img(c1_img),.b_re(d1_re),.b_img(d1_img),.clk(clk),.x0_re(c2_re),.x0_img(c2_img),.x1_re(d2_re),.x1_img(d2_img));
buf12 M3 (.a_re(b2_re),.a_img(b2_img),.b_re(e2_re),.b_img(e2_img),.clk(clk),.a1_re(b3_re),.a1_img(b3_img),.b1_re(e3_re),.b1_img(e3_img));
buf12 M4 (.a_re(c2_re),.a_img(c2_img),.b_re(d2_re),.b_img(d2_img),.clk(clk),.a1_re(c3_re),.a1_img(c3_img),.b1_re(d3_re),.b1_img(d3_img));
buf_10 M9 (.a_re(a1_re),.a_img(a1_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
endmodule
