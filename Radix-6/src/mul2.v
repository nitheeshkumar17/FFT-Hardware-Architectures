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
wire [31:0] a_out,c_out,d_out,e_out,f_out,t_out,g_out,h_out,i_out,u_out;
wire [31:0] j_out,k_out,l_out,m_out,n_out,o_out,p_out,q_out,r_out,s_out;
assign a_out[31]=b[31];
assign a_out[30:23]=b[30:23]-8'b00000001;
assign a_out[22:0]=b[22:0];
assign c_out[31]=b[31];
assign c_out[30:23]=b[30:23]-8'b00000010;
assign c_out[22:0]=b[22:0];
assign d_out[31]=b[31];
assign d_out[30:23]=b[30:23]-8'b00000100;
assign d_out[22:0]=b[22:0];
assign f_out[31]=b[31];
assign f_out[30:23]=b[30:23]-8'b00000101;
assign f_out[22:0]=b[22:0];
assign e_out[31]=b[31];
assign e_out[30:23]=b[30:23]-8'b00000110;
assign e_out[22:0]=b[22:0];
assign g_out[31]=b[31];
assign g_out[30:23]=b[30:23]-8'b00001000;
assign g_out[22:0]=b[22:0];
assign h_out[31]=b[31];
assign h_out[30:23]=b[30:23]-8'b00001001;
assign h_out[22:0]=b[22:0];
assign i_out[31]=b[31];
assign i_out[30:23]=b[30:23]-8'b00001011;
assign i_out[22:0]=b[22:0];
assign j_out[31]=b[31];
assign j_out[30:23]=b[30:23]-8'b00001100;
assign j_out[22:0]=b[22:0];
assign k_out[31]=b[31];
assign k_out[30:23]=b[30:23]-8'b00001110;
assign k_out[22:0]=b[22:0];

floating_1 M0 (.a(a_out),.b(c_out),.clk(clk),.c(l_out));
floating_1 M1 (.a(d_out),.b(e_out),.clk(clk),.c(m_out));
floating_1 M2 (.a(f_out),.b(g_out),.clk(clk),.c(n_out));
floating_1 M3 (.a(h_out),.b(i_out),.clk(clk),.c(o_out));
floating_1 M4 (.a(j_out),.b(k_out),.clk(clk),.c(p_out));
floating_1 M5 (.a(l_out),.b(m_out),.clk(clk),.c(q_out));
floating_1 M6 (.a(n_out),.b(o_out),.clk(clk),.c(r_out));
floating_1 M7 (.a(q_out),.b(r_out),.clk(clk),.c(s_out));
buf220 M8 (.a(p_out),.clk(clk),.a1(t_out));
floating_1 M9 (.a(s_out),.b(t_out),.clk(clk),.c(u_out));
assign b_out[31]=~u_out[31];
assign b_out[30:0]=u_out[30:0];

endmodule
