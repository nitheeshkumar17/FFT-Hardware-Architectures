`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:25 08/08/2019 
// Design Name: 
// Module Name:    buf18 
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
module buf18(
    input [17:0] a,
    input [17:0] b,
    input clk,
    output reg [17:0] a1,
    output reg [17:0] b1
    );


always @(posedge clk) begin
a1<=a;
b1<=b;
end

endmodule
