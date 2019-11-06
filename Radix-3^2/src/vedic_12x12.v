`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:24:10 08/08/2019 
// Design Name: 
// Module Name:    vedic_12x12 
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
module vedic_12x12(
    input [11:0] a,
    input [11:0] b,
	 input clk,
    output [23:0] c
    );


wire [11:0] q0,q1,q2,q3,p0,p1,p2,p3;
wire [11:0] t1,t5;
wire [17:0] t2,t3,t4,t6,t7,t8,t9;

vedic_6x6 M0 (.a(a[5:0]),.b(b[5:0]),.clk(clk),.c(q0));
vedic_6x6 M1 (.a(a[11:6]),.b(b[5:0]),.clk(clk),.c(q1));
vedic_6x6 M2 (.a(a[5:0]),.b(b[11:6]),.clk(clk),.c(q2));
vedic_6x6 M3 (.a(a[11:6]),.b(b[11:6]),.clk(clk),.c(q3));

buf120 M7 (.a(q0),.b(q1),.c(q2),.d(q3),.clk(clk),.a1(p0),.b1(p1),.c1(p2),.d1(p3));

assign t1={6'b0,p0[11:6]};
assign t2={6'b0,p2};
assign t3={p3,6'b0};

adder12 M4 (.a(t1),.b(p1),.s(t5));
adder18 M5 (.a(t2),.b(t3),.s(t4));
assign t6={6'b0,t5};
buf18 M9 (.a(t6),.b(t4),.clk(clk),.a1(t8),.b1(t9));

adder18 M6 (.a(t8),.b(t9),.s(t7));

assign c[5:0]=p0[5:0];
assign c[23:6]=t7;
endmodule
