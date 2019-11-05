`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:09 07/19/2019 
// Design Name: 
// Module Name:    Radix_5 
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
module Radix_5(
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
    output [31:0] ao_re,
    output [31:0] ao_img,
    output [31:0] bo_re,
    output [31:0] bo_img,
    output [31:0] co_re,
    output [31:0] co_img,
    output [31:0] do_re,
    output [31:0] do_img,
    output [31:0] eo_re,
    output [31:0] eo_img                                                   
    );

wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img,d1_re,d1_img,e1_re,e1_img;
wire [31:0] a2_re,a2_img,b2_re,b2_img,c2_re,c2_img,d2_re,d2_img,e2_re,e2_img;
wire [31:0] a5_re,a5_img,b5_re,b5_img,c5_re,c5_img,d5_re,d5_img,e5_re,e5_img;
wire [31:0] a6_re,a6_img,b6_re,b6_img,c6_re,c6_img,d6_re,d6_img,e6_re,e6_img;
wire [31:0] a3_re,a3_img,b3_re,b3_img,c3_re,c3_img,d3_re,d3_img,e3_re,e3_img;
wire [31:0] a4_re,a4_img,b4_re,b4_img,c4_re,c4_img,d4_re,d4_img,e4_re,e4_img;

buf_inout M0 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.c_re(c_re),.c_img(c_img),.d_re(d_re),.d_img(d_img),.e_re(e_re),.e_img(e_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img),.b1_re(b1_re),.b1_img(b1_img),.c1_re(c1_re),.c1_img(c1_img),.d1_re(d1_re),.d1_img(d1_img),.e1_re(e1_re),.e1_img(e1_img));
Radix_5_1 M1 (.a_re(a1_re),.a_img(a1_img),.b_re(b1_re),.b_img(b1_img),.c_re(c1_re),.c_img(c1_img),.d_re(d1_re),.d_img(d1_img),.e_re(e1_re),.e_img(e1_img),.clk(clk),.a_1_re(a2_re),.a_1_img(a2_img),.b_1_re(b2_re),.b_1_img(b2_img),.c_1_re(c2_re),.c_1_img(c2_img),.d_1_re(d2_re),.d_1_img(d2_img),.e_1_re(e2_re),.e_1_img(e2_img));
buf_inout M2 (.a_re(a2_re),.a_img(a2_img),.b_re(b2_re),.b_img(b2_img),.c_re(c2_re),.c_img(c2_img),.d_re(d2_re),.d_img(d2_img),.e_re(e2_re),.e_img(e2_img),.clk(clk),.a1_re(a5_re),.a1_img(a5_img),.b1_re(b5_re),.b1_img(b5_img),.c1_re(c5_re),.c1_img(c5_img),.d1_re(d5_re),.d1_img(d5_img),.e1_re(e5_re),.e1_img(e5_img));
Radix_5_2_1 M3 (.a_re(a5_re),.a_img(a5_img),.b_re(b5_re),.b_img(b5_img),.c_re(c5_re),.c_img(c5_img),.clk(clk),.a_2_re(a6_re),.a_2_img(a6_img),.b_2_re(b6_re),.b_2_img(b6_img),.c_2_re(c6_re),.c_2_img(c6_img));
Radix_5_2_2 M4 (.d_re(d5_re),.d_img(d5_img),.e_re(e5_re),.e_img(e5_img),.clk(clk),.d_2_re(d6_re),.d_2_img(d6_img),.e_2_re(e6_re),.e_2_img(e6_img));
buf_inout M5 (.a_re(a6_re),.a_img(a6_img),.b_re(b6_re),.b_img(b6_img),.c_re(c6_re),.c_img(c6_img),.d_re(d6_re),.d_img(d6_img),.e_re(e6_re),.e_img(e6_img),.clk(clk),.a1_re(a3_re),.a1_img(a3_img),.b1_re(b3_re),.b1_img(b3_img),.c1_re(c3_re),.c1_img(c3_img),.d1_re(d3_re),.d1_img(d3_img),.e1_re(e3_re),.e1_img(e3_img));
Radix_5_3 M6 (.a_re(a3_re),.a_img(a3_img),.b_re(b3_re),.b_img(b3_img),.c_re(c3_re),.c_img(c3_img),.d_re(d3_re),.d_img(d3_img),.e_re(e3_re),.e_img(e3_img),.clk(clk),.a_3_re(a4_re),.a_3_img(a4_img),.b_3_re(b4_re),.b_3_img(b4_img),.c_3_re(c4_re),.c_3_img(c4_img),.d_3_re(d4_re),.d_3_img(d4_img),.e_3_re(e4_re),.e_3_img(e4_img));
buf_inout M7 (.a_re(a4_re),.a_img(a4_img),.b_re(b4_re),.b_img(b4_img),.c_re(c4_re),.c_img(c4_img),.d_re(d4_re),.d_img(d4_img),.e_re(e4_re),.e_img(e4_img),.clk(clk),.a1_re(ao_re),.a1_img(ao_img),.b1_re(bo_re),.b1_img(bo_img),.c1_re(co_re),.c1_img(co_img),.d1_re(do_re),.d1_img(do_img),.e1_re(eo_re),.e1_img(eo_img));

endmodule
