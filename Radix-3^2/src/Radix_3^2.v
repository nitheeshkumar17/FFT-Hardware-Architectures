`timescale 1ns / 1ps

module Radix_32 (
	input [31:0] a_re,a_img,
	input [31:0] b_re,b_img,
	input [31:0] c_re,c_img,
	input clk,sel,sel1,sel2,sel4,sel5,sel6,sel7,En,rst,
	output [31:0] ao_re,ao_img,
	output [31:0] bo_re,bo_img,
	output [31:0] co_re,co_img
	);

wire  [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img;
wire  [31:0] a2_re,a2_img,b2_re,b2_img,c2_re,c2_img;
wire  [31:0] a3_re,a3_img,b3_re,b3_img,c3_re,c3_img;
wire  [31:0] a4_re,a4_img,b4_re,b4_img,c4_re,c4_img;
wire  [31:0] a5_re,a5_img,b5_re,b5_img,c5_re,c5_img;
wire  [31:0] a6_re,a6_img,b6_re,b6_img,c6_re,c6_img;
wire  [31:0] a7_re,a7_img,b7_re,b7_img,c7_re,c7_img;
wire  [31:0] a8_re,a8_img,b8_re,b8_img,c8_re,c8_img;
wire  [31:0] a9_re,a9_img,b9_re,b9_img,c9_re,c9_img;
wire  [31:0] w_re,w_img,w1_re,w1_img;
bufin_out M3 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.c_re(c_re),.c_img(c_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img),.b1_re(b2_re),.b1_img(b2_img),.c1_re(c2_re),.c1_img(c2_img));
radix_3_top M0 (.a_re(a2_re),.a_img(a2_img),.b_re(b2_re),.b_img(b2_img),.c_re(c2_re),.c_img(c2_img),.clk(clk),.ao_re(a1_re),.ao_img(a1_img),.bo_re(b1_re),.bo_img(b1_img),.co_re(c1_re),.co_img(c1_img));
bufin_out M4 (.a_re(a1_re),.a_img(a1_img),.b_re(b1_re),.b_img(b1_img),.c_re(c1_re),.c_img(c1_img),.clk(clk),.a1_re(a3_re),.b1_re(b3_re),.c1_re(c3_re),.a1_img(a3_img),.b1_img(b3_img),.c1_img(c3_img));
buf_neg M5 (.a_re(a3_re),.a_img(a3_img),.b_re(b3_re),.b_img(b3_img),.c_re(c3_re),.c_img(c3_img),.clk(clk),.a1_re(a4_re),.a1_img(a4_img),.b1_re(b4_re),.b1_img(b4_img),.c1_re(c4_re),.c1_img(c4_img));
three_shuffler M1 (.a(a4_re),.b(b4_re),.c(c4_re),.clk(clk),.sel(sel),.sel1(sel1),.sel2(sel2),.sel4(sel4),.sel5(sel5),.sel6(sel6),.sel7(sel7),.ao(a5_re),.bo(b5_re),.co(c5_re));
three_shuffler M2 (.a(a4_img),.b(b4_img),.c(c4_img),.clk(clk),.sel(sel),.sel1(sel1),.sel2(sel2),.sel4(sel4),.sel5(sel5),.sel6(sel6),.sel7(sel7),.ao(a5_img),.bo(b5_img),.co(c5_img));
bufin_out M6 (.a_re(a5_re),.a_img(a5_img),.b_re(b5_re),.b_img(b5_img),.c_re(c5_re),.c_img(c5_img),.clk(clk),.a1_re(a6_re),.a1_img(a6_img),.b1_re(b6_re),.b1_img(b6_img),.c1_re(c6_re),.c1_img(c6_img));
twiddle_rom M8 (.clk(clk),.rst(rst),.En(En),.w_re(w_re),.w_img(w_img),.w1_re(w1_re),.w1_img(w1_img));
Complex_multiplier M7 (.a_re(b6_re),.a_img(b6_img),.b_re(w_re),.b_img(w_img),.clk(clk),.c_re(b7_re),.c_img(b7_img));
Complex_multiplier M9 (.a_re(c6_re),.a_img(c6_img),.b_re(w1_re),.b_img(w1_img),.clk(clk),.c_re(c7_re),.c_img(c7_img));
buf230 M10 (.a_re(a6_re),.a_img(a6_img),.clk(clk),.a1_re(a7_re),.a1_img(a7_img));
bufin_out M11 (.a_re(a7_re),.a_img(a7_img),.b_re(b7_re),.b_img(b7_img),.c_re(c7_re),.c_img(c7_img),.clk(clk),.a1_re(a8_re),.a1_img(a8_img),.b1_re(b8_re),.b1_img(b8_img),.c1_re(c8_re),.c1_img(c8_img));
radix_3_top M12 (.a_re(a8_re),.a_img(a8_img),.b_re(b8_re),.b_img(b8_img),.c_re(c8_re),.c_img(c8_img),.clk(clk),.ao_re(a9_re),.ao_img(a9_img),.bo_re(b9_re),.bo_img(b9_img),.co_re(c9_re),.co_img(c9_img));
bufin_out M13 (.a_re(a9_re),.a_img(a9_img),.b_re(b9_re),.b_img(b9_img),.c_re(c9_re),.c_img(c9_img),.clk(clk),.a1_re(ao_re),.a1_img(ao_img),.b1_re(bo_re),.b1_img(bo_img),.c1_re(co_re),.c1_img(co_img));

endmodule
