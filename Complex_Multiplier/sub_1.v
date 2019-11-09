`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:44 01/05/2019 
// Design Name: 
// Module Name:    Sub 
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
module Sub_1(
    input [23:0] Z,
	 input AS,BS,
    output reg [23:0] Z1,
    input E
    );
always@(Z,E,AS,BS) begin
if ((AS==0 && BS==0) || (AS==1 && BS==1)) begin
if (E==1) begin
Z1<=Z;
end
else
Z1<=Z;
end
else begin
if (E==1) begin
Z1<=(~Z)+24'b1;
end
else
Z1<=Z;
end
end
endmodule
