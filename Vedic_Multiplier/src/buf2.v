`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:58:22 08/08/2019 
// Design Name: 
// Module Name:    buf2 
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
module buf2(
    input [23:0] a,
    input clk,
    output reg [23:0] a1
    );

always @(posedge clk) begin
a1<=a;
end
endmodule
