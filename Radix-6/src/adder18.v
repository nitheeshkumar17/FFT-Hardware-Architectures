`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:29:27 08/08/2019 
// Design Name: 
// Module Name:    adder18 
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
module adder18(
    input [17:0] a,
    input [17:0] b,
    output [17:0] s
    );

assign s=a+b;
endmodule
