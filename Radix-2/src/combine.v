`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:12:02 02/01/2019 
// Design Name: 
// Module Name:    combine 
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
module combine(
    input [23:0] ZN,
    input [7:0] ZEN,
    input ZS,
    output reg [31:0] C
    );

always @(ZN,ZEN,ZS) begin
C<={ZS,ZEN,ZN[22:0]};
end
endmodule
