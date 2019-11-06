`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:09 06/13/2019 
// Design Name: 
// Module Name:    mul 
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
module mul(
    input [31:0] a,
    output [31:0] a_out
    );
assign a_out[31]=~a[31];
assign a_out[30:23]=a[30:23]-8'b00000001;
assign a_out[22:0]=a[22:0];

endmodule
