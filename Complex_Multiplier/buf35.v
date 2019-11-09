`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:05 08/09/2019 
// Design Name: 
// Module Name:    buf35 
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
module buf35(
    input [23:0] c_m,
    input [7:0] c_e,
    input c_s,
    input clk,
    output reg [31:0] c
    );
always @(posedge clk) begin

c<={c_s,c_e,c_m[22:0]};

end

endmodule
