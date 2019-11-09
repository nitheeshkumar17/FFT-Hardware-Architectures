`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:50 07/04/2019 
// Design Name: 
// Module Name:    buf19 
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
module buf19(
    input [31:0] c_re,
    input [31:0] c_img,
    input clk,
    output reg [31:0] c1_re,
    output reg [31:0] c1_img
    );
always @(posedge clk) begin
c1_re<=c_re;
c1_img<=c_img;
end
endmodule
