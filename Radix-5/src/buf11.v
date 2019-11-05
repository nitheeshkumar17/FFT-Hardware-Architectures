`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:07:03 06/27/2019 
// Design Name: 
// Module Name:    buf1 
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
module buf11(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re_1,
    input [31:0] b_img_1,
    input [31:0] b_re_2,
    input [31:0] b_img_2,
    input clk,
    output reg [31:0] a0_re,
    output reg [31:0] a0_img,
    output reg [31:0] b0_re_1,
    output reg [31:0] b0_img_1,
    output reg [31:0] b0_re_2,
    output reg [31:0] b0_img_2
    );

always @(posedge clk) begin
a0_re<=a_re;
a0_img<=a_img;
b0_re_1<=b_re_1;
b0_img_1<=b_img_1;
b0_re_2<=b_re_2;
b0_img_2<=b_img_2;
end
endmodule
