`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:47:07 06/23/2019 
// Design Name: 
// Module Name:    mul2 
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
module mul2(input [31:0] b,input clk,output [31:0] b_out
    );
wire [31:0] a_out,c_out,d_out,e_out,f_out,g_out,h_out;
assign a_out[31]=b[31];
assign a_out[30:23]=b[30:23];
assign a_out[22:0]=b[22:0];
assign c_out[31]=b[31];
assign c_out[30:23]=b[30:23]-8'b00000001;
assign c_out[22:0]=b[22:0];
assign d_out[31]=b[31];
assign d_out[30:23]=b[30:23]-8'b00000010;
assign d_out[22:0]=b[22:0];
assign f_out[31]=~b[31];
assign f_out[30:23]=b[30:23]-8'b00000110;
assign f_out[22:0]=b[22:0];
floating_1 M0 (.a(a_out),.b(c_out),.clk(clk),.c(e_out));
floating_1 M1 (.a(f_out),.b(d_out),.clk(clk),.c(g_out));
floating_1 M2 (.a(e_out),.b(g_out),.clk(clk),.c(h_out));
assign b_out[31]=~h_out[31];
assign b_out[30:23]=h_out[30:23]-8'b00000001;
assign b_out[22:0]=h_out[22:0];

endmodule
