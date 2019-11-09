`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:39 07/14/2019 
// Design Name: 
// Module Name:    buf23 
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
module buf23(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img,
    output reg [31:0] b1_re,
    output reg [31:0] b1_img
    );

reg [31:0] n [0:6];
reg [31:0] n1 [0:6];	 
reg [31:0] n2 [0:6];
reg [31:0] n3 [0:6];
always @(posedge clk) begin
n[0]<=a_re;
n[1]<=n[0];
n[2]<=n[1];
n[3]<=n[2];
n[4]<=n[3];
n[5]<=n[4];
n[6]<=n[5];
a1_re<=n[6];
n1[0]<=a_img;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
n1[4]<=n1[3];
n1[5]<=n1[4];
n1[6]<=n1[5];
a1_img<=n1[6];
n2[0]<=b_img;
n2[1]<=n2[0];
n2[2]<=n2[1];
n2[3]<=n2[2];
n2[4]<=n2[3];
n2[5]<=n2[4];
n2[6]<=n2[5];
b1_img<=n2[6];
n3[0]<=b_re;
n3[1]<=n3[0];
n3[2]<=n3[1];
n3[3]<=n3[2];
n3[4]<=n3[3];
n3[5]<=n3[4];
n3[6]<=n3[5];
b1_re<=n3[6];
end

endmodule
