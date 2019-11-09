`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:05 02/01/2019 
// Design Name: 
// Module Name:    buf5 
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
module buf5(
    input [31:0] C,
    output reg [31:0] C1,
    input CLK
    );

always @(posedge CLK) begin
C1<=C;
end
endmodule
