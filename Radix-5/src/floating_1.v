`timescale 1ns / 1ps

 

module floating_1(
    input [31:0] a,
    input [31:0] b,
    input clk,
    output [31:0] c
    );



wire [31:0] c2;
wire [23:0] a_m,b_m,z,z_n,z_b,z_n_e,z_n_e_e,z_n_f;
wire [23:0] a_m_a_a,b_m_a_a,a_m_a,b_m_a,a_m_b,b_m_b,a_m_c,b_m_c,z_n_e_e_e;
wire [7:0] a_e,b_e,z_e,a_e_b,b_e_b,z_e_b,a_e_c,b_e_c,z_e_e;
wire [7:0] a_e_a,b_e_a,z_e_n,z_e_n_e,z_e_n_e_e,z_e_b_f,d_b,d_b_a,a_e_a_a,b_e_a_a;
wire [4:0] c1,c_e;
wire a_s_d_f,b_s_d_f,e_b_f,a_s,b_s,z_s,e,a_s_b,b_s_b,z_s_b,e_b,e_e,a_s_e,b_s_e,z_s_b_f;
wire a_s_a,b_s_a,a_s_c,b_s_c,a_s_d,b_s_d,z_s_s,z_s_s_s;
assign a_m={1'b1,a[22:0]},b_m={1'b1,b[22:0]},a_e=a[30:23],b_e=b[30:23],a_s=a[31],b_s=b[31];
buf0	M1		(.A(a_m),.B(b_m),.AE(a_e),.BE(b_e),.AS(a_s),.BS(b_s),.CLK(clk),.A1(a_m_c),.B1(b_m_c),.AE1(a_e_c),.BE1(b_e_c),.AS1(a_s_c),.BS1(b_s_c));
align_1	M2	(.AE(a_e_c),.BE(b_e_c),.d(d_b));
buf7	M3 (.A(a_m_c),.B(b_m_c),.AE(a_e_c),.BE(b_e_c),.AS(a_s_c),.BS(b_s_c),.D(d_b),.CLK(clk),.A1(a_m_a_a),.B1(b_m_a_a),.AE1(a_e_a_a),.BE1(b_e_a_a),.AS1(a_s_a_a),.BS1(b_s_a_a),.D1(d_b_a));
align_2 M4 (.A(a_m_a_a),.B(b_m_a_a),.AE(a_e_a_a),.BE(b_e_a_a),.D(d_b_a),.A1(a_m_a),.B1(b_m_a),.AE1(a_e_a),.BE1(b_e_a));
buf1 	M5	(.AA(a_m_a),.BA(b_m_a),.AEA(a_e_a),.BEA(b_e_a),.ASA(a_s_a_a),.BSA(b_s_a_a),.CLK(clk),.A1(a_m_b),.B1(b_m_b),.AE1(a_e_b),.BE1(b_e_b),.AS1(a_s_b),.BS1(b_s_b));
add_1	 M6  (.AA(a_m_b),.BA(b_m_b),.ASA(a_s_b),.BSA(b_s_b),.AEA(a_e_b),.BEA(b_e_b),.Z(z),.ZE(z_e),.ZS(z_s),.E(e));
buf2	M7		(.Z(z),.ZE(z_e),.ZS(z_s),.E(e),.AS(a_s_b),.BS(b_s_b),.CLK(clk),.Z1(z_b),.ZE1(z_e_b),.ZS1(z_s_b),.E1(e_b),.AS1(a_s_d),.BS1(b_s_d));
Sub_1	M8 (.Z(z_b),.AS(a_s_d),.BS(b_s_d),.E(e_b),.Z1(z_n));
buf6	M9 (.CLK(clk),.AS(a_s_d),.BS(b_s_d),.E(e_b),.Z(z_n),.ZE(z_e_b),.ZS(z_s_b),.AS1(a_s_d_f),.BS1(b_s_d_f),.E1(e_b_f),.Z1(z_n_f),.ZE1(z_e_b_f),.ZS1(z_s_b_f));
decoder_1	M10 (.Z(z_n_f),.count(c1));
buf3	M11 (.Z(z_n_f),.C(c1),.CLK(clk),.ZE(z_e_b_f),.E(e_b_f),.AS(a_s_d_f),.BS(b_s_d_f),.ZS(z_s_b_f),.Z1(z_n_e),.ZS1(z_s_s),.C1(c_e),.AS1(a_s_e),.BS1(b_s_e),.E1(e_e),.ZE1(z_e_e));
barrelshifter_1	M12  (.Z(z_n_e),.ZE(z_e_e),.c(c_e),.AS(a_s_e),.BS(b_s_e),.E(e_e),.ZN(z_n_e_e),.ZEN(z_e_n_e));
buf4	M13 (.ZN(z_n_e_e),.ZEN(z_e_n_e),.ZS(z_s_s),.CLK(clk),.ZS1(z_s_s_s),.ZEN1(z_e_n_e_e),.ZN1(z_n_e_e_e));
combine	M14 (.ZN(z_n_e_e_e),.ZEN(z_e_n_e_e),.ZS(z_s_s_s),.C(c2));
buf5	M15 (.C(c2),.CLK(clk),.C1(c));
endmodule
