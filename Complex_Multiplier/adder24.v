`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:41:16 08/08/2019 
// Design Name: 
// Module Name:    adder24 
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
module adder24(
    input [23:0] a,
    input [23:0] b,
    output [23:0] s
    );

assign s=a+b;

endmodule
