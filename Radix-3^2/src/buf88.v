`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:34:08 09/11/2019 
// Design Name: 
// Module Name:    buf88 
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
module buf88(
    input [31:0] a,
    input clk,
    output reg [31:0] a1
    );
reg [31:0] a2;
always @(negedge clk) begin
a2<=a;
a1<=a2;
end
endmodule
