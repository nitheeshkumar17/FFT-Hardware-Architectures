`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:30 09/10/2019 
// Design Name: 
// Module Name:    mux_2x1 
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
module mux_2x1(
    input [31:0] data0,
    input [31:0] data1,
    input sel,
    output [31:0] data_out
    );

reg [31:0] out;
assign data_out=out;
always @(data0,data1,sel) begin
if (sel==1) begin
out<=data1;
end
else if (sel==0) begin
out<=data0;
end
else begin
out<=32'bx;
end
end
endmodule
