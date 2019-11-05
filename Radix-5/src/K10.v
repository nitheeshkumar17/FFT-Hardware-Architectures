`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:27 07/17/2019 
// Design Name: 
// Module Name:    K10 
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
module K10(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output [31:0] a1_re,
    output [31:0] a1_img
    );
	 
	 
wire [31:0] h_a_re,h_a_img,s_a_re,s_a_img,o_a_re,o_a_img,sf_a_re,sf_a_img,tfs_a_re,tfs_a_img;
wire [31:0] hs_a_re,hs_a_img,osf_a_re,osf_a_img,hst_a_re,hst_a_img,k_a_re,k_a_img;
wire [31:0] a2_re,a2_img,k1_a_re,k1_a_img,h1_a_re,h1_a_img,s1_a_re,s1_a_img,o1_a_re,o1_a_img,sf1_a_re,sf1_a_img,tfs1_a_re,tfs1_a_img;
wire [31:0] hs1_a_re,hs1_a_img,osf1_a_re,osf1_a_img,tfs2_a_re,tfs2_a_img;

assign a1_re[31]=~k1_a_re[31],a1_re[30:0]=k1_a_re[30:0];
assign a1_img[31]=~k1_a_img[31],a1_img[30:0]=k1_a_img[30:0];

buf_1 M0 (.a_re(a_re),.a_img(a_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
half M1 (.a_re(a2_re),.a_img(a2_img),.a1_re(h_a_re),.a1_img(h_a_img));
sixteenth M2 (.a_re(a2_re),.a_img(a2_img),.a1_re(s_a_re),.a1_img(s_a_img));
onetwentyeighth M3 (.a_re(a2_re),.a_img(a2_img),.a1_re(o_a_re),.a1_img(o_a_img));
sixtyfourth M4 (.a_re(a2_re),.a_img(a2_img),.a1_re(sf_a_re),.a1_img(sf_a_img));
twofiftysixth M5 (.a_re(a2_re),.a_img(a2_img),.a1_re(tfs_a_re),.a1_img(tfs_a_img));
buf_inout M6 (.a_re(h_a_re),.a_img(h_a_img),.b_re(s_a_re),.b_img(s_a_img),.c_re(o_a_re),.c_img(o_a_img),.d_re(sf_a_re),.d_img(sf_a_img),.e_re(tfs_a_re),.e_img(tfs_a_img),.clk(clk),.a1_re(h1_a_re),.a1_img(h1_a_img),.b1_re(s1_a_re),.b1_img(s1_a_img),.c1_re(o1_a_re),.c1_img(o1_a_img),.d1_re(sf1_a_re),.d1_img(sf1_a_img),.e1_re(tfs1_a_re),.e1_img(tfs1_a_img));
Complex_adder M7 (.a_re(h1_a_re),.a_img(h1_a_img),.b_re(s1_a_re),.b_img(s1_a_img),.clk(clk),.c_re(hs_a_re),.c_img(hs_a_img));
Complex_adder M8 (.a_re(o1_a_re),.a_img(o1_a_img),.b_re(sf1_a_re),.b_img(sf1_a_img),.clk(clk),.c_re(osf_a_re),.c_img(osf_a_img));
buf_1 M9 (.a_re(hs_a_re),.a_img(hs_a_img),.clk(clk),.a1_re(hs1_a_re),.a1_img(hs1_a_img));
buf_1 M10 (.a_re(osf_a_re),.a_img(osf_a_img),.clk(clk),.a1_re(osf1_a_re),.a1_img(osf1_a_img));
Complex_adder M11 (.a_re(hs1_a_re),.a_img(hs1_a_img),.b_re(osf1_a_re),.b_img(osf1_a_img),.clk(clk),.c_re(hst_a_re),.c_img(hst_a_img));
buf_17 M12 (.a_re(tfs1_a_re),.a_img(tfs1_a_img),.clk(clk),.a1_re(tfs2_a_re),.a1_img(tfs2_a_img));
Complex_adder M13 (.a_re(hst_a_re),.a_img(hst_a_img),.b_re(tfs2_a_re),.b_img(tfs2_a_img),.clk(clk),.c_re(k_a_re),.c_img(k_a_img));
buf_1 M14 (.a_re(k_a_re),.a_img(k_a_img),.clk(clk),.a1_re(k1_a_re),.a1_img(k1_a_img));

endmodule
