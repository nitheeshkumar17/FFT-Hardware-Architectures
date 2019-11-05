`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:02 07/17/2019 
// Design Name: 
// Module Name:    Radix_5_2 
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
//////////////////////////////////////////////////////////////////////////////////
module Radix_5_2_1(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input [31:0] c_re,
    input [31:0] c_img,
    input clk,
    output [31:0] a_2_re,
    output [31:0] a_2_img,
    output [31:0] b_2_re,
    output [31:0] b_2_img,
    output [31:0] c_2_re,
    output [31:0] c_2_img
    );

wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img,b2_re,b2_img,c2_re,c2_img;
wire [31:0] apb_re,apb_img,asb_re,asb_img;
wire [31:0] apbpc_re,apbpc_img,asc_re,asc_img;
wire [31:0] bsc_re,bsc_img,bsc1_re,bsc1_img,asb1_re,asb1_img,asc1_re,asc1_img;
wire [31:0] b3_re,b3_img,c3_re,c3_img,a2_re,a2_img,c4_re,c4_img;


buf_1 M0 (.a_re(a_re),.a_img(a_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img));
buf_1 M1 (.a_re(b_re),.a_img(b_img),.clk(clk),.a1_re(b1_re),.a1_img(b1_img));
buf_1 M2 (.a_re(c_re),.a_img(c_img),.clk(clk),.a1_re(c1_re),.a1_img(c1_img));
buf_6 M3 (.a_re(c1_re),.a_img(c1_img),.clk(clk),.a1_re(c2_re),.a1_img(c2_img));
fft2 M4 (.a_re(a1_re),.a_img(a1_img),.b_re(b1_re),.b_img(b1_img),.clk(clk),.x0_re(apb_re),.x0_img(apb_img),.x1_re(asb_re),.x1_img(asb_img));
half_fft_1 M5 (.a_re(apb_re),.a_img(apb_img),.b_re(c2_re),.b_img(c2_img),.clk(clk),.x_re(apbpc_re),.x_img(apbpc_img));
half_fft_2 M6 (.a_re(a1_re),.a_img(a1_img),.b_re(c1_re),.b_img(c1_img),.clk(clk),.x_re(asc_re),.x_img(asc_img));
half_fft M7 (.a_re(b1_re),.a_img(b1_img),.b_re(c1_re),.b_img(c1_img),.clk(clk),.x_re(bsc_re),.x_img(bsc_img));
K0 M8 (.a_re(bsc_re),.a_img(bsc_img),.clk(clk),.a1_re(bsc1_re),.a1_img(bsc1_img));
buf_25 M9 (.a_re(asb_re),.a_img(asb_img),.b_re(asc_re),.b_img(asc_img),.clk(clk),.a1_re(asb1_re),.a1_img(asb1_img),.b1_re(asc1_re),.b1_img(asc1_img));
half_fft M10 (.a_re(asb1_re),.a_img(asb1_img),.b_re(bsc1_re),.b_img(bsc1_img),.clk(clk),.x_re(b2_re),.x_img(b2_img));
half_fft_1 M11 (.a_re(bsc1_re),.a_img(bsc1_img),.b_re(asc1_re),.b_img(asc1_img),.clk(clk),.x_re(c3_re),.x_img(c3_img));
buf_30 M16 (.a_re(apbpc_re),.a_img(apbpc_img),.clk(clk),.a1_re(a_2_re),.a1_img(a_2_img));
buf_1 M12 (.a_re(b2_re),.a_img(b2_img),.clk(clk),.a1_re(b3_re),.a1_img(b3_img));
buf_1 M13 (.a_re(b3_re),.a_img(b3_img),.clk(clk),.a1_re(b_2_re),.a1_img(b_2_img));
buf_1 M14 (.a_re(c3_re),.a_img(c3_img),.clk(clk),.a1_re(c4_re),.a1_img(c4_img));
buf_1 M15 (.a_re(c4_re),.a_img(c4_img),.clk(clk),.a1_re(c_2_re),.a1_img(c_2_img));
endmodule
