`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:31 08/07/2019 
// Design Name: 
// Module Name:    vedic_6x6 
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
module vedic_6x6(
    input [5:0] a,
    input [5:0] b,
	 input clk,
    output [11:0] c
    );

wire [5:0] q0,q1,q2,q3,p0,p1,p2,p3;
wire [5:0] t1,t5;
wire [8:0] t2,t3,t4,t6,t7,t8,t9;

vedic_3x3 M0 (.a(a[2:0]),.b(b[2:0]),.c(q0));
vedic_3x3 M1 (.a(a[5:3]),.b(b[2:0]),.c(q1));
vedic_3x3 M2 (.a(a[2:0]),.b(b[5:3]),.c(q2));
vedic_3x3 M3 (.a(a[5:3]),.b(b[5:3]),.c(q3));

buf39 M7 (.a(q0),.b(q1),.c(q2),.d(q3),.clk(clk),.a1(p0),.b1(p1),.c1(p2),.d1(p3));

assign t1={3'b0,p0[5:3]};
assign t2={3'b0,p2};
assign t3={p3,3'b0};

adder6 M4 (.a(t1),.b(p1),.s(t5));
adder9 M5 (.a(t2),.b(t3),.s(t4));
assign t6={3'b0,t5};
buf49 M8 (.a(t6),.b(t4),.clk(clk),.a1(t8),.b1(t9));


adder9 M6 (.a(t8),.b(t9),.s(t7));

assign c[2:0]=p0[2:0];
assign c[11:3]=t7;

endmodule
