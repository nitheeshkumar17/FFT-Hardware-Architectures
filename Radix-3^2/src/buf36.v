`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:32 08/08/2019 
// Design Name: 
// Module Name:    buf36 
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
module buf36(
    input [35:0] a,
    input [35:0] b,
    input clk,
    output reg [35:0] a1,
    output reg [35:0] b1
    );

always @(posedge clk) begin
a1<=a;
b1<=b;
end

endmodule
