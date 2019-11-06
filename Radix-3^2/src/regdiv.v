`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:17:00 08/09/2019 
// Design Name: 
// Module Name:    regdiv 
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
module regdiv(
    input [31:0] a,
    input [31:0] b,
    output reg [23:0] a_m,
    output reg [7:0] a_e,
    output reg a_s,
    output reg [23:0] b_m,
    output reg [7:0] b_e,
    output reg b_s
    );

always @(a,b) begin
a_m={1'b1,a[22:0]};
a_e=a[30:23];
a_s=a[31];
b_m={1'b1,b[22:0]};
b_e=b[30:23];
b_s=b[31];
end

endmodule
