`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:25 08/08/2019 
// Design Name: 
// Module Name:    buf4 
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
module buf49(
    input [8:0] a,
    input [8:0] b,
    input clk,
    output reg [8:0] a1,
    output reg [8:0] b1
    );

always @(posedge clk) begin
a1<=a;
b1<=b;
end

endmodule
