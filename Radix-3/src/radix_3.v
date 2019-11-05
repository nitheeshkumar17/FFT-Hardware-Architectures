`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:35 06/24/2019 
// Design Name: 
// Module Name:    radix_3 
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
module radix_3_1(
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
reg [31:0] n [0:7];
reg [31:0] n1 [0:7];
wire [31:0] a1_re,b1_re,c1_re,a1_img,b1_img,c1_img,a2_re,a2_img;
assign ao_re=a2_re;
assign ao_img=a2_img;
bufin_out M0 (.a_re(a_re),.b_re(b_re),.c_re(c_re),.a_img(a_img),.b_img(b_img),.c_img(c_img),.clk(clk),.a1_re(a1_re),.b1_re(b1_re),.c1_re(c1_re),.a1_img(a1_img),.b1_img(b1_img),.c1_img(c1_img));
buf22 M1 (.a_re(a1_re),.a_img(a1_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
fft M2 (.a_re(b1_re),.a_img(b1_img),.b_re(c1_re),.b_img(c1_img),.clk(clk),.x0_re(bo_re),.x0_img(bo_img),.x1_re(co_re),.x1_img(co_img));

endmodule
