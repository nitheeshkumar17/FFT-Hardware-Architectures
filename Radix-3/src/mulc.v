`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:51 07/03/2019 
// Design Name: 
// Module Name:    mulc 
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
module mulc(
    input [31:0] b,
    input [31:0] b1,
    output [31:0] b2,
    output [31:0] b3,
    output [31:0] b4,
    output [31:0] b5
    );

assign b2=b,b3=b1;
assign b4[31]=~b[31],b4[30:0]=b[30:0],b5[31]=~b1[31],b5[30:0]=b1[30:0];
endmodule
