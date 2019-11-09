`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:56 09/12/2018 
// Design Name: 
// Module Name:    buf90 
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
module buf90(
    input [31:0] a,
    input clk,
    output reg [31:0] a1
    );

always @(negedge clk) begin
a1<=a;
end
endmodule
