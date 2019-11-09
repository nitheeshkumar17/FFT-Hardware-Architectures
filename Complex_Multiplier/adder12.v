`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:28:32 08/08/2019 
// Design Name: 
// Module Name:    adder1 
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
module adder12(
    input [11:0] a,
    input [11:0] b,
    output [11:0] s
    );

assign s=a+b;
endmodule
