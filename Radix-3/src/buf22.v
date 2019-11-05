`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:30 07/14/2019 
// Design Name: 
// Module Name:    buf22 
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
module buf22(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img
    );

reg [31:0] n [0:7];
reg [31:0] n1 [0:7];
always @(posedge clk) begin
n[0]<=a_re;
n[1]<=n[0];
n[2]<=n[1];
n[3]<=n[2];
n[4]<=n[3];
n[5]<=n[4];
n[6]<=n[5];
n[7]<=n[6];
a1_re<=n[7];
n1[0]<=a_img;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
n1[4]<=n1[3];
n1[5]<=n1[4];
n1[6]<=n1[5];
n1[7]<=n1[6];
a1_img<=n1[7];
end

endmodule
