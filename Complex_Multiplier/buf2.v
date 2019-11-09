`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:25 01/14/2019 
// Design Name: 
// Module Name:    buf2 
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
module buf2(
    input [23:0] Z,
    input [7:0] ZE,
    input ZS,AS,BS,
    input E,
	 input CLK,
    output reg [23:0] Z1,
    output reg [7:0] ZE1,
    output reg ZS1,AS1,BS1,
    output reg E1
    );
always @(posedge CLK) begin
Z1<=Z;
ZE1<=ZE;
ZS1<=ZS;
E1<=E;
AS1<=AS;
BS1<=BS;
end
endmodule
