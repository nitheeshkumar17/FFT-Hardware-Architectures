`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:58 01/14/2019 
// Design Name: 
// Module Name:    buf0 
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
module buf0(
    input [23:0] A,
    input [23:0] B,
    input [7:0] AE,
    input [7:0] BE,
    input AS,
    input BS,
	 input CLK,
    output reg [23:0] A1,
    output reg [23:0] B1,
    output reg [7:0] AE1,
    output reg [7:0] BE1,
    output reg AS1,
    output reg BS1
    );
always @(posedge CLK) begin
A1<=A;
B1<=B;
AE1<=AE;
BE1<=BE;
AS1<=AS;
BS1<=BS;
end
endmodule
