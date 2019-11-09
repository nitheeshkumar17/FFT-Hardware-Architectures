`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:18 08/07/2019 
// Design Name: 
// Module Name:    CSA_3 
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
module CSA_3(
    input a,
    input b,
    input c,
    output s,
    output co
    );

wire s1;
xor M1 (s1,a,b);
xor M2 (s,s1,c);
assign co=(a&b)|(b&c)|(c&a);

endmodule
