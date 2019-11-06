`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:49 01/28/2019 
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
module buf3(
    input [23:0] Z,
    input [4:0] C,
    input [7:0] ZE,
    input E,
    input AS,
    input BS,ZS,
	 input CLK,
    output reg [23:0] Z1,
    output reg [4:0] C1,
    output reg [7:0] ZE1,
    output reg E1,
    output reg AS1,
    output reg BS1,ZS1
    );

always @(posedge CLK) begin
Z1<=Z;
C1<=C;
ZE1<=ZE;
E1<=E;
ZS1<=ZS;
AS1<=AS;
BS1<=BS;
end
endmodule
