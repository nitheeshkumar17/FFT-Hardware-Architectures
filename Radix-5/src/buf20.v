`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:17 07/03/2019 
// Design Name: 
// Module Name:    buf20 
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
module buf20(
    input [31:0] a1_re,
    input [31:0] pc,
	 input [31:0] pd,
    input [31:0] a1_img,
    input [31:0] nc,
	 input [31:0] nd,
    output reg [31:0] a2_re,
    output reg [31:0] pbc,
	 output reg [31:0] pbd,
    output reg [31:0] a2_img,
    output reg [31:0] nbc,
	 output reg [31:0] nbd,
    input clk
    );
always @(posedge clk) begin
a2_re<=a1_re;
a2_img<=a1_img;
pbc<=pc;
nbc<=nc;
pbd<=pd;
nbd<=nd;
end

endmodule
