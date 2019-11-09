`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:36:56 08/08/2019 
// Design Name: 
// Module Name:    vedic_24x24 
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
module vedic_24x24(
    input [23:0] a,
    input [23:0] b,
	 input clk,
    output [23:0] c
    );


wire [23:0] q0,q1,q2,q3,p0,p1,p2,p3;
wire [23:0] t1,t5;
wire [35:0] t2,t3,t4,t6,t7,t8,t9;
wire [47:0] c1;
vedic_12x12 M0 (.a(a[11:0]),.b(b[11:0]),.clk(clk),.c(q0));
vedic_12x12 M1 (.a(a[23:12]),.b(b[11:0]),.clk(clk),.c(q1));
vedic_12x12 M2 (.a(a[11:0]),.b(b[23:12]),.clk(clk),.c(q2));
vedic_12x12 M3 (.a(a[23:12]),.b(b[23:12]),.clk(clk),.c(q3));

buf24 M7 (.a(q0),.b(q1),.c(q2),.d(q3),.clk(clk),.a1(p0),.b1(p1),.c1(p2),.d1(p3));

assign t1={12'b0,p0[23:12]};
assign t2={12'b0,p2};
assign t3={p3,12'b0};

adder24 M4 (.a(t1),.b(p1),.s(t5));
adder36 M5 (.a(t2),.b(t3),.s(t4));
assign t6={12'b0,t5};

buf36 M8 (.a(t6),.b(t4),.clk(clk),.a1(t8),.b1(t9));

adder36 M6 (.a(t8),.b(t9),.s(t7));

assign c1[11:0]=p0[11:0];
assign c1[47:12]=t7;
assign c=c1[46:24];
endmodule
