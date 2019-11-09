`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:56 06/24/2019 
// Design Name: 
// Module Name:    radix_3_2 
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
module radix_3_2(
    input [31:0] a_re,
    input [31:0] b_re,
    input [31:0] c_re,
	 input [31:0] a_img,
	 input [31:0] b_img,
	 input [31:0] c_img,
    output [31:0] ao_re,
    output  [31:0] bo_re,
    output [31:0] co_re,
	 output  [31:0] ao_img,
	 output  [31:0] bo_img,
	 output  [31:0] co_img,
    input clk
    );

wire [31:0] a1_re,b1_re,a1_img,b1_img,aoo_re,aoo_img,boo_re,boo_img,c1_re,c1_img,coo_re,coo_img;
wire [31:0] a2_re,a2_img,b2_re,b2_img;
buf12 M1 (.a_re(a_re),.b_re(b_re),.a_img(a_img),.b_img(b_img),.clk(clk),.a1_re(a1_re),.b1_re(b1_re),.a1_img(a1_img),.b1_img(b1_img));
buf19 M2 (.c_re(c_re),.c_img(c_img),.clk(clk),.c1_re(c1_re),.c1_img(c1_img));
fft2 M3 (.a_re(a1_re),.b_re(b1_re),.a_img(a1_img),.b_img(b1_img),.clk(clk),.x0_re(aoo_re),.x0_img(aoo_img),.x1_re(boo_re),.x1_img(boo_img));
mul2 M4 (.b(c1_re),.clk(clk),.b_out(coo_img));
mul2 M5 (.b(c1_img),.clk(clk),.b_out(coo_re));
buf21 M6 (.a(coo_re),.b(coo_img),.clk(clk),.a1(co_re),.b1(co_img));
buf220 M7 (.a(aoo_re),.clk(clk),.a1(a2_re));
buf220 M8 (.a(aoo_img),.clk(clk),.a1(a2_img));
buf220 M9 (.a(boo_re),.clk(clk),.a1(b2_re));
buf220 M10 (.a(boo_img),.clk(clk),.a1(b2_img));
buf23 M11 (.a_re(a2_re),.a_img(a2_img),.b_re(b2_re),.b_img(b2_img),.clk(clk),.a1_re(ao_re),.a1_img(ao_img),.b1_re(bo_re),.b1_img(bo_img));
endmodule
