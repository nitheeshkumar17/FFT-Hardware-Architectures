`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:26 02/02/2019 
// Design Name: 
// Module Name:    align_2 
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
module align_2(
    input [23:0] A,
    input [23:0] B,
    input [7:0] AE,
    input [7:0] BE,
    input [7:0] D,
    output reg [23:0] A1,
    output reg [23:0] B1,
    output reg [7:0] AE1,
    output reg [7:0] BE1
    );

always @(A,B,AE,BE,D) begin
if (AE>BE) begin
B1<=B>>D;
BE1<=BE+D;
A1<=A;
AE1<=AE;
end
else if (AE<BE) begin
A1<=A>>D;
AE1<=AE+D;
B1<=B;
BE1<=BE;
end
else begin
A1<=A;
B1<=B;
BE1<=BE;
AE1<=AE;
end
end

endmodule
