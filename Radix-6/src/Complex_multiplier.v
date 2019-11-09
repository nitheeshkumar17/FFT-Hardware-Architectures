`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:20 08/09/2019 
// Design Name: 
// Module Name:    Complex_multiplier 
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
module Complex_multiplier(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input clk,
    output [31:0] c_re,
    output [31:0] c_img
    );

wire [31:0] a1_re,a1_img,b1_re,b1_img,ab_re,ab1_re,ab2_re,ab_img,ab1_img,ab2_img,ab3_img,ab5_re,ab3_re,c1_re,c1_img;

buf100 M0 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img),.b1_re(b1_re),.b1_img(b1_img));
multiplier M1 (.a(a1_re),.b(b1_re),.clk(clk),.c(ab_re));
multiplier M2 (.a(a1_img),.b(b1_img),.clk(clk),.c(ab1_re));
multiplier M3 (.a(a1_re),.b(b1_img),.clk(clk),.c(ab_img));
multiplier M4 (.a(a1_img),.b(b1_re),.clk(clk),.c(ab1_img));
assign ab2_re={~ab1_re[31],ab1_re[30:0]};
buf100 M5 (.a_re(ab_re),.a_img(ab2_re),.b_re(ab_img),.b_img(ab1_img),.clk(clk),.a1_re(ab5_re),.a1_img(ab3_re),.b1_re(ab2_img),.b1_img(ab3_img));
Complex_adder M6 (.a_re(ab5_re),.a_img(ab2_img),.b_re(ab3_re),.b_img(ab3_img),.clk(clk),.c_re(c1_re),.c_img(c1_img));
buf5 M7 (.C(c1_re),.CLK(clk),.C1(c_re));
buf5 M8 (.C(c1_img),.CLK(clk),.C1(c_img));

endmodule
