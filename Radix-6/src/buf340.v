`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:50 11/06/2019 
// Design Name: 
// Module Name:    buf340 
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
module buf340(
    input [7:0] a,
    input b,
    input clk,
    output reg [7:0] a1,
    output reg b1
    );
reg [7:0] n [0:6];
reg n1 [0:6];

always @(posedge clk) begin
n[0]<=a;
n[1]<=n[0];
n[2]<=n[1];
n[3]<=n[2];
n[4]<=n[3];
n[5]<=n[4];
n[6]<=n[5];
a1<=n[6];

n1[0]<=b;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
n1[4]<=n1[3];
n1[5]<=n1[4];
n1[6]<=n1[5];
b1<=n1[6];
end
endmodule
