`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:36 07/17/2019 
// Design Name: 
// Module Name:    buf_1 
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
module buf_1(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img
    );

always @(posedge clk) begin
a1_re<=a_re;
a1_img<=a_img;
end

endmodule
