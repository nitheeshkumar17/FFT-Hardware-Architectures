`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:25 07/03/2019 
// Design Name: 
// Module Name:    radix_3_top 
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
module radix_3_top(
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
wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img,a2_re,a2_img,b2_re,b2_img,c2_re,c2_img;
wire [31:0] a3_re,a3_img,b3_re,b3_img,c3_re,c3_img,a4_re,a4_img,b4_re,b4_img,c4_re,c4_img;
wire [31:0] a6_re,a6_img,b6_re,b6_img,c6_re,c6_img,a5_re,a5_img,b5_re,b5_img,c5_re,c5_img;
bufin_out M0 (.a_re(a_re),.b_re(b_re),.c_re(c_re),.a_img(a_img),.b_img(b_img),.c_img(c_img),.clk(clk),.a1_re(a1_re),.b1_re(b1_re),.c1_re(c1_re),.a1_img(a1_img),.b1_img(b1_img),.c1_img(c1_img));
radix_3_1 M1 (.a_re(a1_re),.b_re(b1_re),.c_re(c1_re),.a_img(a1_img),.b_img(b1_img),.c_img(c1_img),.clk(clk),.ao_re(a2_re),.bo_re(b2_re),.co_re(c2_re),.ao_img(a2_img),.bo_img(b2_img),.co_img(c2_img));
bufin_out M2 (.a_re(a2_re),.b_re(b2_re),.c_re(c2_re),.a_img(a2_img),.b_img(b2_img),.c_img(c2_img),.clk(clk),.a1_re(a3_re),.b1_re(b3_re),.c1_re(c3_re),.a1_img(a3_img),.b1_img(b3_img),.c1_img(c3_img));
radix_3_2 M3 (.a_re(a3_re),.b_re(b3_re),.c_re(c3_re),.a_img(a3_img),.b_img(b3_img),.c_img(c3_img),.clk(clk),.ao_re(a4_re),.bo_re(b4_re),.co_re(c4_re),.ao_img(a4_img),.bo_img(b4_img),.co_img(c4_img));
bufin_out M4 (.a_re(a4_re),.b_re(b4_re),.c_re(c4_re),.a_img(a4_img),.b_img(b4_img),.c_img(c4_img),.clk(clk),.a1_re(a5_re),.b1_re(b5_re),.c1_re(c5_re),.a1_img(a5_img),.b1_img(b5_img),.c1_img(c5_img));
radix_3_1 M5 (.a_re(a5_re),.b_re(b5_re),.c_re(c5_re),.a_img(a5_img),.b_img(b5_img),.c_img(c5_img),.clk(clk),.ao_re(a6_re),.bo_re(b6_re),.co_re(c6_re),.ao_img(a6_img),.bo_img(b6_img),.co_img(c6_img));
bufin_out M6 (.a_re(a6_re),.b_re(b6_re),.c_re(c6_re),.a_img(a6_img),.b_img(b6_img),.c_img(c6_img),.clk(clk),.a1_re(ao_re),.b1_re(bo_re),.c1_re(co_re),.a1_img(ao_img),.b1_img(bo_img),.c1_img(co_img));

endmodule
