`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:30:56 08/07/2019 
// Design Name: 
// Module Name:    adder_4bit 
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
module adder_4bit(
    input a,
    input b,
    input c,
    input d,
    output s,
    output c0,
    output c1
    );

wire s1,s2;

xor M1 (s1,a,b);
xor M2 (s2,c,d);
xor M3 (s,s1,s2);
assign c0=(~a&c&d)|(a&~c&d)|(a&b&~d)|(a&~b&c)|(~a&b&c&~d)|(~a&b&~c&d);
assign c1=a&b&c&d;

endmodule
