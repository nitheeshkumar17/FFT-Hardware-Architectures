`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:00 08/09/2019 
// Design Name: 
// Module Name:    buf33 
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
module buf33(
    input [23:0] a_m,
    input [23:0] b_m,
    input [7:0] a_e,
    input [7:0] b_e,
    input a_s,
    input b_s,
    input clk,
    output reg [23:0] a1_m,
    output reg [23:0] b1_m,
    output reg [7:0] a1_e,
    output reg [7:0] b1_e,
    output reg a1_s,
    output reg b1_s
    );

always @(posedge clk) begin
a1_m<=a_m;
b1_m<=b_m;
a1_e<=a_e;
b1_e<=b_e;
a1_s<=a_s;
b1_s<=b_s;
end

endmodule
