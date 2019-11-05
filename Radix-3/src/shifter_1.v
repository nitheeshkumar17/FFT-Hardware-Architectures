`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:53 12/26/2018 
// Design Name: 
// Module Name:    barrelshifter 
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
module barrelshifter_1(
    input [23:0] Z,
	 input [7:0] ZE,
	 input [4:0] c,
	 input E,AS,BS,
    output reg [23:0] ZN,
	 output reg [7:0] ZEN
    );
	 parameter N=3'b0;
always @(Z,AS,BS,ZE,c,E) begin
if ((AS==0 && BS==1) || (AS==1 && BS==0)) begin
if (E==0) begin
ZN<=Z<<c;
ZEN<=ZE-{N,c};
end
else begin
ZN<=Z<<c;
ZEN<=ZE-{N,c};
end
end
else begin
if (E==1) begin
ZN<=Z>>1;
ZN[23]<=E;
ZEN<=ZE+8'b1;
end
else begin
ZN<=Z;
ZEN<=ZE;
end
end
end
endmodule
