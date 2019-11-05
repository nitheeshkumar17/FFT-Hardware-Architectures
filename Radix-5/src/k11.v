`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:02 07/16/2019 
// Design Name: 
// Module Name:    k11 
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
module k11(
    input [31:0] a_re,
    input [31:0] a_img,
	 input clk,
    output [31:0] a1_re,
    output [31:0] a1_img
    );
wire [31:0] f_a_re,f_a_img,s_a_re,s_a_img,th_a_re,th_a_img,sf_a_re,sf_a_img,tfs_a_re,tfs_a_img;
wire [31:0] fs_a_re,fs_a_img,tsf_a_re,tsf_a_img,fst_a_re,fst_a_img,k_a_re,k_a_img;
wire [31:0] a2_re,a2_img,k1_a_re,k1_a_img,f1_a_re,f1_a_img,s1_a_re,s1_a_img,th1_a_re,th1_a_img,sf1_a_re,sf1_a_img,tfs1_a_re,tfs1_a_img;
wire [31:0] fs1_a_re,fs1_a_img,tsf1_a_re,tsf1_a_img,tfs2_a_re,tfs2_a_img;

assign a1_re[31]=~k1_a_re[31],a1_re[30:0]=k1_a_re[30:0];
assign a1_img[31]=~k1_a_img[31],a1_img[30:0]=k1_a_img[30:0];

buf_1 M0 (.a_re(a_re),.a_img(a_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
fourth M1 (.a_re(a2_re),.a_img(a2_img),.a1_re(f_a_re),.a1_img(f_a_img));
sixteenth M2 (.a_re(a2_re),.a_img(a2_img),.a1_re(s_a_re),.a1_img(s_a_img));
thirtyhalf M3 (.a_re(a2_re),.a_img(a2_img),.a1_re(th_a_re),.a1_img(th_a_img));
sixtyfourth M4 (.a_re(a2_re),.a_img(a2_img),.a1_re(sf_a_re),.a1_img(sf_a_img));
twofiftysixth M5 (.a_re(a2_re),.a_img(a2_img),.a1_re(tfs_a_re),.a1_img(tfs_a_img));
buf_inout M6 (.a_re(f_a_re),.a_img(f_a_img),.b_re(s_a_re),.b_img(s_a_img),.c_re(th_a_re),.c_img(th_a_img),.d_re(sf_a_re),.d_img(sf_a_img),.e_re(tfs_a_re),.e_img(tfs_a_img),.clk(clk),.a1_re(f1_a_re),.a1_img(f1_a_img),.b1_re(s1_a_re),.b1_img(s1_a_img),.c1_re(th1_a_re),.c1_img(th1_a_img),.d1_re(sf1_a_re),.d1_img(sf1_a_img),.e1_re(tfs1_a_re),.e1_img(tfs1_a_img));
Complex_adder M7 (.a_re(f1_a_re),.a_img(f1_a_img),.b_re(s1_a_re),.b_img(s1_a_img),.clk(clk),.c_re(fs_a_re),.c_img(fs_a_img));
Complex_adder M8 (.a_re(th1_a_re),.a_img(th1_a_img),.b_re(sf1_a_re),.b_img(sf1_a_img),.clk(clk),.c_re(tsf_a_re),.c_img(tsf_a_img));
buf_1 M9 (.a_re(fs_a_re),.a_img(fs_a_img),.clk(clk),.a1_re(fs1_a_re),.a1_img(fs1_a_img));
buf_1 M10 (.a_re(tsf_a_re),.a_img(tsf_a_img),.clk(clk),.a1_re(tsf1_a_re),.a1_img(tsf1_a_img));
Complex_adder M11 (.a_re(fs1_a_re),.a_img(fs1_a_img),.b_re(tsf1_a_re),.b_img(tsf1_a_img),.clk(clk),.c_re(fst_a_re),.c_img(fst_a_img));
buf_17 M12 (.a_re(tfs1_a_re),.a_img(tfs1_a_img),.clk(clk),.a1_re(tfs2_a_re),.a1_img(tfs2_a_img));
Complex_adder M13 (.a_re(fst_a_re),.a_img(fst_a_img),.b_re(tfs2_a_re),.b_img(tfs2_a_img),.clk(clk),.c_re(k_a_re),.c_img(k_a_img));
buf_1 M14 (.a_re(k_a_re),.a_img(k_a_img),.clk(clk),.a1_re(k1_a_re),.a1_img(k1_a_img));

endmodule
