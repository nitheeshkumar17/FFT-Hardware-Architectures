`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:00 08/08/2019 
// Design Name: 
// Module Name:    buf12 
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
module buf120(
    input [11:0] a,
    input [11:0] b,
    input [11:0] c,
    input [11:0] d,
    input clk,
    output reg [11:0] a1,
    output reg [11:0] b1,
    output reg [11:0] c1,
    output reg [11:0] d1
    );

always @(posedge clk) begin
a1<=a;
b1<=b;
c1<=c;
d1<=d;
end

endmodule
