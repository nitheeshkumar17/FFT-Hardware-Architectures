`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:40 06/28/2019 
// Design Name: 
// Module Name:    buf12 
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
module buf12(
    input [31:0] a_re,
    input [31:0] b_re,
    input [31:0] a_img,
    input [31:0] b_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] b1_re,
    output reg [31:0] a1_img,
    output reg [31:0] b1_img
    );
always @(posedge clk) begin
a1_re<=a_re;
b1_re<=b_re;
a1_img<=a_img;
b1_img<=b_img;
end
endmodule
