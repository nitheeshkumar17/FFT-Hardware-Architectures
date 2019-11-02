`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:04 02/01/2019 
// Design Name: 
// Module Name:    buf4 
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
module buf4(
    input [23:0] ZN,
    input [7:0] ZEN,
    input ZS,
	 input CLK,
    output reg [23:0] ZN1,
    output reg [7:0] ZEN1,
    output reg ZS1
    );

always @(posedge CLK) begin
ZN1<=ZN;
ZEN1<=ZEN;
ZS1<=ZS;
end
endmodule
