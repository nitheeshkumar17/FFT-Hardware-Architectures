`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:09 07/18/2019 
// Design Name: 
// Module Name:    buf_5 
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
module buf_5(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img
    );

reg [31:0] n0 [0:3];
reg [31:0] n1 [0:3];

always @(posedge clk) begin
n0[0]<=a_re;
n0[1]<=n0[0];
n0[2]<=n0[1];
n0[3]<=n0[2];
a1_re<=n0[3];
n1[0]<=a_img;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
a1_img<=n1[3];
end

endmodule
