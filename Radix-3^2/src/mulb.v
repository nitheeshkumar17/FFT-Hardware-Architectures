`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:00:46 06/28/2019 
// Design Name: 
// Module Name:    mulb 
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
module mulb(
    input [31:0] b,
    output [31:0] b_out
    );
assign b_out[31]=~b[31];
assign b_out[30:0]=b[30:0];

endmodule
