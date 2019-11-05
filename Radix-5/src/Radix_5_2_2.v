`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:44 07/17/2019 
// Design Name: 
// Module Name:    Radix_5_2_2 
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
module Radix_5_2_2(
    input [31:0] d_re,
    input [31:0] d_img,
    input [31:0] e_re,
    input [31:0] e_img,
    input clk,
    output [31:0] d_2_re,
    output [31:0] d_2_img,
    output [31:0] e_2_re,
    output [31:0] e_2_img
    );
wire [31:0] d1_re,d1_img,e1_re,e1_img,de_re,de_img;
wire [31:0] d2_re,d2_img,e2_re,e2_img,d3_re,d3_img,e3_re,e3_img,de1_re,de1_img;
wire [31:0] de2_re,de2_img,d4_re,d4_img,e4_re,e4_img,e5_re,e5_img;
wire [31:0] d5_re,d5_img,e6_re,e6_img;
buf_1 M0 (.a_re(d_re),.a_img(d_img),.clk(clk),.a1_re(d1_re),.a1_img(d1_img));
buf_1 M1 (.a_re(e_re),.a_img(e_img),.clk(clk),.a1_re(e1_re),.a1_img(e1_img));
half_fft_1 M2 (.a_re(d1_re),.a_img(d1_img),.b_re(e1_re),.b_img(e1_img),.clk(clk),.x_re(de_re),.x_img(de_img));
buf_6 M3 (.a_re(d1_re),.a_img(d1_img),.clk(clk),.a1_re(d2_re),.a1_img(d2_img));
buf_6 M4 (.a_re(e1_re),.a_img(e1_img),.clk(clk),.a1_re(e2_re),.a1_img(e2_img));
buf_1 M5 (.a_re(de_re),.a_img(de_img),.clk(clk),.a1_re(de1_re),.a1_img(de1_img));
buf_1 M6 (.a_re(e2_re),.a_img(e2_img),.clk(clk),.a1_re(e3_re),.a1_img(e3_img));
buf_1 M7 (.a_re(d2_re),.a_img(d2_img),.clk(clk),.a1_re(d3_re),.a1_img(d3_img));
K10 M8 (.a_re(de1_re),.a_img(de1_img),.clk(clk),.a1_re(de2_re),.a1_img(de2_img));
k11 M9 (.a_re(d3_re),.a_img(d3_img),.clk(clk),.a1_re(d4_re),.a1_img(d4_img));
K12 M10 (.a_re(e3_re),.a_img(e3_img),.clk(clk),.a1_re(e4_re),.a1_img(e4_img));
buf_4 M11 (.a_re(e4_re),.a_img(e4_img),.clk(clk),.a1_re(e5_re),.a1_img(e5_img));
half_fft_1 M12 (.a_re(de2_re),.a_img(de2_img),.b_re(d4_re),.b_img(d4_img),.clk(clk),.x_re(d5_re),.x_img(d5_img));
half_fft_1 M13 (.a_re(de2_re),.a_img(de2_img),.b_re(e5_re),.b_img(e5_img),.clk(clk),.x_re(e6_re),.x_img(e6_img));
buf_1 M14 (.a_re(d5_re),.a_img(d5_img),.clk(clk),.a1_re(d_2_re),.a1_img(d_2_img));
buf_1 M15 (.a_re(e6_re),.a_img(e6_img),.clk(clk),.a1_re(e_2_re),.a1_img(e_2_img));
endmodule
