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
    input [31:0] c,
    input [31:0] d,
    output [31:0] pc,
    output [31:0] pd,
    output [31:0] nc,
    output [31:0] nd
    );

assign pc=c,pd=d;
assign nc[31]=~c[31],nc[30:0]=c[30:0],nd[31]=~d[31],nd[30:0]=d[30:0];
endmodule
