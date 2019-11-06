`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:46 08/09/2018 
// Design Name: 
// Module Name:    buf104 
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
module buf104(
    input [7:0] a,
    input b,
    input clk,
    output reg [7:0] a1,
    output reg b1
    );
reg [7:0] n0 [0:6];
reg n1 [0:6];
always @(posedge clk) begin
n0[0]<=a;
n0[1]<=n0[0];
n0[2]<=n0[1];
n0[3]<=n0[2];
n0[4]<=n0[3];
n0[5]<=n0[4];
n0[6]<=n0[5];
a1<=n0[6];
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
