`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:15 01/14/2019 
// Design Name: 
// Module Name:    buf1 
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
module buf1(
    input [23:0] AA,
    input [23:0] BA,
    input [7:0] AEA,
    input [7:0] BEA,
    input ASA,
    input BSA,
	 input CLK,
    output reg [23:0] A1,
    output reg [23:0] B1,
    output reg [7:0] AE1,
    output reg [7:0] BE1,
    output reg AS1,
    output reg BS1
    );
always @(posedge CLK) begin
A1<=AA;
B1<=BA;
AE1<=AEA;
BE1<=BEA;
AS1<=ASA;
BS1<=BSA;
end
endmodule
