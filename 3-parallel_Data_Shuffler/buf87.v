`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:43:02 09/11/2019 
// Design Name: 
// Module Name:    buf87 
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
module buf87(
    input [31:0] a,
    input clk,
    output reg [31:0] a1
    );

always @(negedge clk) begin
a1<=a;
end
endmodule
