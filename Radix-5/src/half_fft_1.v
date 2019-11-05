`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:50:53 07/15/2019 
// Design Name: 
// Module Name:    half_fft_1 
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
module half_fft_1(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input clk,
    output [31:0] x_re,
    output [31:0] x_img
    );
wire [31:0] a2_re,a2_img,b2_re,b2_img;
buf12 M1 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img),.b1_re(b2_re),.b1_img(b2_img));
Complex_adder M2 (.a_re(a2_re),.a_img(a2_img),.b_re(b2_re),.b_img(b2_img),.clk(clk),.c_re(x_re),.c_img(x_img));

endmodule
