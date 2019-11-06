`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:00 08/09/2019 
// Design Name: 
// Module Name:    buf34 
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
module buf34(
    input [23:0] c_m,
    input [7:0] c_e,
    input c_s,
    input clk,
    output reg [23:0] c1_m,
    output reg [7:0] c1_e,
    output reg c1_s
    );

always @(posedge clk) begin
c1_m<=c_m;
c1_e<=c_e;
c1_s<=c_s;
end

endmodule
