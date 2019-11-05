`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:32 07/16/2019 
// Design Name: 
// Module Name:    fourth 
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
module fourth(
    input [31:0] a_re,
    input [31:0] a_img,
    output [31:0] a1_re,
    output [31:0] a1_img
    );

assign a1_re[31]=a_re[31],a1_img[31]=a_img[31];
assign a1_re[30:23]=a_re[30:23]-8'b00000010,a1_img[30:23]=a_img[30:23]-8'b00000010;
assign a1_re[22:0]=a_re[22:0],a1_img[22:0]=a_img[22:0];
endmodule
