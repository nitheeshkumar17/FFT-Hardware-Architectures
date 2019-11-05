`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:37 07/03/2019 
// Design Name: 
// Module Name:    fft3 
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
module fft3(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input clk,
    output [31:0] x0_re,
    output [31:0] x0_img,
    output [31:0] x1_re,
    output [31:0] x1_img
	 );
wire [31:0] pc,pd,nc,nd,pbd,pbc,nbd,nbc;
wire [31:0] a1_re,a1_img;
mulc M0 (.c(b_re),.d(b_img),.pc(pc),.pd(pd),.nc(nc),.nd(nd));
buf20 M1 (.a1_re(a_re),.a1_img(a_img),.pc(pc),.pd(pd),.nc(nc),.nd(nd),.clk(clk),.a2_re(a1_re),.a2_img(a1_img),.pbc(pbc),.pbd(pbd),.nbc(nbc),.nbd(nbd));
Complex_adder M2 (.a_re(a1_re),.b_re(nbd),.a_img(a1_img),.b_img(pbc),.clk(clk),.c_re(x0_re),.c_img(x0_img));
Complex_adder M3 (.a_re(a1_re),.b_re(pbd),.a_img(a1_img),.b_img(nbc),.clk(clk),.c_re(x1_re),.c_img(x1_img));
endmodule
