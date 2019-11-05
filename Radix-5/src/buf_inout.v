`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:12 07/15/2019 
// Design Name: 
// Module Name:    buf_inout 
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
module buf_inout(
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
    output reg [31:0] a1_re,
    output reg [31:0] a1_img,
    output reg [31:0] b1_re,
    output reg [31:0] b1_img,
    output reg [31:0] c1_re,
    output reg [31:0] c1_img,
    output reg [31:0] d1_re,
    output reg [31:0] d1_img,
    output reg [31:0] e1_re,
    output reg [31:0] e1_img
    );
always @(posedge clk) begin
a1_re<=a_re;
a1_img<=a_img;
b1_re<=b_re;
b1_img<=b_img;
c1_re<=c_re;
c1_img<=c_img;
d1_re<=d_re;
d1_img<=d_img;
e1_re<=e_re;
e1_img<=e_img;
end
endmodule
