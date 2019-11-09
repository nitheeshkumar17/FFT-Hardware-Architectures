`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:57:09 08/08/2019 
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
module buf1(
    input [23:0] a,
    input [23:0] b,
    input clk,
    output reg [23:0] a1,
    output reg [23:0] b1
    );

always @(posedge clk) begin
a1<=a;
b1<=b;
end

endmodule
