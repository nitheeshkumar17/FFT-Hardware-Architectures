`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:33 08/08/2019 
// Design Name: 
// Module Name:    buf3 
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
module buf39(
    input [5:0] a,
    input [5:0] b,
    input [5:0] c,
    input [5:0] d,
    input clk,
    output reg [5:0] a1,
    output reg [5:0] b1,
    output reg [5:0] c1,
    output reg [5:0] d1
    );

always @(posedge clk) begin
a1<=a;
b1<=b;
c1<=c;
d1<=d;
end


endmodule
