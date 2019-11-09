`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:48 08/07/2019 
// Design Name: 
// Module Name:    vedic_3x3 
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
module vedic_3x3(
    input [2:0] a,
    input [2:0] b,
    output [5:0] c
    );
wire [7:0] w;
wire [3:0] co;

assign c[0]=a[0]&b[0];
assign w[0]=a[0]&b[1];
assign w[1]=a[1]&b[0];
assign w[2]=a[2]&b[0];
assign w[3]=a[0]&b[2];
assign w[4]=a[1]&b[1];
assign w[5]=a[2]&b[1];
assign w[6]=a[1]&b[2];
assign w[7]=a[2]&b[2];

half_adder M0 (.a(w[0]),.b(w[1]),.s(c[1]),.c(co[0]));
adder_4bit M1 (.a(w[3]),.b(w[2]),.c(co[0]),.d(w[4]),.s(c[2]),.c0(co[1]),.c1(co[2]));
CSA_3 M2 (.a(w[5]),.b(w[6]),.c(co[1]),.s(c[3]),.co(co[3]));
CSA_3 M3 (.a(w[7]),.b(co[2]),.c(co[3]),.s(c[4]),.co(c[5]));

endmodule
