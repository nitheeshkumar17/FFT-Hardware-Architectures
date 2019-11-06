`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:41:59 08/08/2019 
// Design Name: 
// Module Name:    adder36 
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
module adder36(
    input [35:0] a,
    input [35:0] b,
    output [35:0] s
    );

assign s=a+b;

endmodule
