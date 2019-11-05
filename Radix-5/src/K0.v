`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:37:40 07/16/2019 
// Design Name: 
// Module Name:    K0 
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

module K0(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output [31:0] a1_re,
    output [31:0] a1_img
    );
wire [31:0] h_a_re,h_a_img,f_a_re,f_a_img,t_a_re,t_a_img,s_a_re,s_a_img,o_a_re,o_a_img,tf_a_re,tf_a_img;
wire [31:0] fh_a_re,fh_a_img,st_a_re,st_a_img,otf_a_re,otf_a_img,fhst_a_re,fhst_a_img,k_a_re,k_a_img;
wire [31:0] a2_re,a2_img,k1_a_re,k1_a_img;
wire [31:0] h1_a_re,h1_a_img,f1_a_re,f1_a_img,t1_a_re,t1_a_img,s1_a_re,s1_a_img,o1_a_re,o1_a_img,tf1_a_re,tf1_a_img;
wire [31:0] fh1_a_re,fh1_a_img,st1_a_re,st1_a_img,otf1_a_re,otf1_a_img,otf2_a_re,otf2_a_img;

assign a1_re[31]=~k1_a_re[31],a1_img[31]=~k1_a_img[31];
assign a1_re[30:0]=k1_a_re[30:0],a1_img[30:0]=k1_a_img[30:0];
buf_1 M0 (.a_re(a_re),.a_img(a_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
half M1 (.a_re(a2_re),.a_img(a2_img),.a1_re(h_a_re),.a1_img(h_a_img));
fourth M2 (.a_re(a2_re),.a_img(a2_img),.a1_re(f_a_re),.a1_img(f_a_img));
thirtyhalf M3 (.a_re(a2_re),.a_img(a2_img),.a1_re(t_a_re),.a1_img(t_a_img));
sixtyfourth M4 (.a_re(a2_re),.a_img(a2_img),.a1_re(s_a_re),.a1_img(s_a_img));
onetwentyeighth M5 (.a_re(a2_re),.a_img(a2_img),.a1_re(o_a_re),.a1_img(o_a_img));
twofiftysixth M6 (.a_re(a2_re),.a_img(a2_img),.a1_re(tf_a_re),.a1_img(tf_a_img));
buf_26 M7 (.a_re(h_a_re),.a_img(h_a_img),.b_re(f_a_re),.b_img(f_a_img),.c_re(t_a_re),.c_img(t_a_img),.clk(clk),.a1_re(h1_a_re),.a1_img(h1_a_img),.b1_re(f1_a_re),.b1_img(f1_a_img),.c1_re(t1_a_re),.c1_img(t1_a_img));
buf_26 M8 (.a_re(s_a_re),.a_img(s_a_img),.b_re(o_a_re),.b_img(o_a_img),.c_re(tf_a_re),.c_img(tf_a_img),.clk(clk),.a1_re(s1_a_re),.a1_img(s1_a_img),.b1_re(o1_a_re),.b1_img(o1_a_img),.c1_re(tf1_a_re),.c1_img(tf1_a_img));
Complex_adder M9 (.a_re(h1_a_re),.a_img(h1_a_img),.b_re(f1_a_re),.b_img(f1_a_img),.clk(clk),.c_re(fh_a_re),.c_img(fh_a_img));
Complex_adder M10 (.a_re(t1_a_re),.a_img(t1_a_img),.b_re(s1_a_re),.b_img(s1_a_img),.clk(clk),.c_re(st_a_re),.c_img(st_a_img));
Complex_adder M11 (.a_re(o1_a_re),.a_img(o1_a_img),.b_re(tf1_a_re),.b_img(tf1_a_img),.clk(clk),.c_re(otf_a_re),.c_img(otf_a_img));
buf_26 M12 (.a_re(fh_a_re),.a_img(fh_a_img),.b_re(st_a_re),.b_img(st_a_img),.c_re(otf_a_re),.c_img(otf_a_img),.clk(clk),.a1_re(fh1_a_re),.a1_img(fh1_a_img),.b1_re(st1_a_re),.b1_img(st1_a_img),.c1_re(otf1_a_re),.c1_img(otf1_a_img));
Complex_adder M13(.a_re(fh1_a_re),.a_img(fh1_a_img),.b_re(st1_a_re),.b_img(st1_a_img),.clk(clk),.c_re(fhst_a_re),.c_img(fhst_a_img));
buf_8 M14 (.a_re(otf1_a_re),.a_img(otf1_a_img),.clk(clk),.a1_re(otf2_a_re),.a1_img(otf2_a_img));
Complex_adder M15 (.a_re(fhst_a_re),.a_img(fhst_a_img),.b_re(otf2_a_re),.b_img(otf2_a_img),.clk(clk),.c_re(k_a_re),.c_img(k_a_img));
buf_1 M16 (.a_re(k_a_re),.a_img(k_a_img),.clk(clk),.a1_re(k1_a_re),.a1_img(k1_a_img));
endmodule
