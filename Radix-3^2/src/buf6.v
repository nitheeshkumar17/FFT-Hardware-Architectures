`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:36 02/01/2019 
// Design Name: 
// Module Name:    buf6 
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
module buf6(
    input CLK,
    input AS,
    input BS,
    input E,
    input [23:0] Z,
    input [7:0] ZE,
    input ZS,
    output reg AS1,
    output reg BS1,
    output reg E1,
    output reg [23:0] Z1,
    output reg [7:0] ZE1,
    output reg ZS1
    );

always @(posedge CLK) begin
AS1<=AS;
BS1<=BS;
E1<=E;
Z1<=Z;
ZE1<=ZE;
ZS1<=ZS;
end
endmodule
