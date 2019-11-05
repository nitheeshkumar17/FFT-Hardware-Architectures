`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:47:05 07/18/2019 
// Design Name: 
// Module Name:    buf_26 
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
module buf_26(
    input [31:0] a_re,
    input [31:0] a_img,
	 input [31:0] b_re,b_img,c_re,c_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img,b1_re,b1_img,c1_re,c1_img
    );

always @(posedge clk) begin
a1_re<=a_re;
a1_img<=a_img;
b1_re<=b_re;
b1_img<=b_img;
c1_re<=c_re;
c1_img<=c_img;
end
endmodule
