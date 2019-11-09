`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:17 07/03/2019 
// Design Name: 
// Module Name:    buf20 
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
module buf20(
    input [31:0] a1_re,
    input [31:0] b1_re,
	 input [31:0] b2_re,
    input [31:0] a1_img,
    input [31:0] b1_img,
	 input [31:0] b2_img,
    output reg [31:0] a2_re,
    output reg [31:0] b3_re,
	 output reg [31:0] b4_re,
    output reg [31:0] a2_img,
    output reg [31:0] b3_img,
	 output reg [31:0] b4_img,
    input clk
    );
always @(posedge clk) begin
a2_re<=a1_re;
a2_img<=a1_img;
b3_re<=b1_re;
b3_img<=b1_img;
b4_re<=b2_re;
b4_img<=b2_img;
end

endmodule
