`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:31:18 08/09/2019 
// Design Name: 
// Module Name:    normalise 
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
module normalise(
	  input [23:0] c_m,
	  input [7:0] c_e,
	  input c_s,
	  output reg [23:0] c1_m,
	  output reg [7:0] c1_e,
	  output reg c1_s
    );
	 
	 
always @(c_m,c_e,c_s) begin

c1_s=c_s;
if (c_m[23]==0) begin
c1_m=c_m<<1;
c1_e=c_e-8'b00000001;
end
else begin
c1_m=c_m;
c1_e=c_e;
end
end

endmodule
