`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:12 07/04/2019 
// Design Name: 
// Module Name:    buf21 
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
module buf21(
    input [31:0] a,
    input [31:0] b,
    input clk,
    output reg [31:0] a1,
    output reg [31:0] b1
    );
always @(posedge clk) begin
a1[31]<=~a[31];
a1[30:0]<=a[30:0];
b1<=b;
end

endmodule
