`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:27 02/03/2019 
// Design Name: 
// Module Name:    fft 
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
module fft(
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


wire [31:0] a1_re,b1_re,a1_img,b1_img,a3_re,b3_re,a3_img,b3_img,b2_re,b2_img,b4_re,b4_img;
mulb M0 (.b(b_re),.b_out(b2_re));
mulb M1 (.b(b_img),.b_out(b2_img));
buf17			M2 (.a1_re(a_re),.b1_re(b_re),.b2_re(b2_re),.a1_img(a_img),.b1_img(b_img),.b2_img(b2_img),.clk(clk),.a3_re(a3_re),.b3_re(b3_re),.a3_img(a3_img),.b3_img(b3_img),.b4_re(b4_re),.b4_img(b4_img));
Complex_adder M3 (.a_re(a3_re),.b_re(b3_re),.a_img(a3_img),.b_img(b3_img),.clk(clk),.c_re(x0_re),.c_img(x0_img));
Complex_adder M4 (.a_re(a3_re),.b_re(b4_re),.a_img(a3_img),.b_img(b4_img),.clk(clk),.c_re(x1_re),.c_img(x1_img));
endmodule
