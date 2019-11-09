`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:17:39 09/11/2019 
// Design Name: 
// Module Name:    buf89 
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
module buf89(
    input [31:0] a,
    input clk,
    output reg [31:0] a1
    );
reg [31:0] a2 [0:1];
always @(negedge clk) begin
a2[0]<=a;
a2[1]<=a2[0];
a1<=a2[1];
end
endmodule
