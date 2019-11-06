`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:47 08/09/2019 
// Design Name: 
// Module Name:    exponent 
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
module exponent(
    input [7:0] a,
    input [7:0] b,
	 input a_s,b_s,
    output reg [7:0] c,
	 output reg c_s
    );

always @(a,b,a_s,b_s) begin
c<=a+b-8'b01111110;
c_s<=(~a_s&b_s)|(a_s&~b_s);

end

endmodule
