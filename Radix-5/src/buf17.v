`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:30 03/02/2019 
// Design Name: 
// Module Name:    buf17 
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
module buf17(
    input [31:0] a1_re,
    input [31:0] b1_re,
    input [31:0] a1_img,
    input [31:0] b1_img,
	 input [31:0] b2_re,
	 input [31:0] b2_img,
    output reg [31:0] a3_re,
    output reg [31:0] b3_re,
    output reg [31:0] a3_img,
    output reg [31:0] b3_img,
	 output reg [31:0] b4_re,
	 output reg [31:0] b4_img,
    input clk
    );
always @(posedge clk) begin
a3_re<=a1_re;
a3_img<=a1_img;
b3_re<=b1_re;
b3_img<=b1_img;
b4_re<=b2_re;
b4_img<=b2_img;
end
endmodule
