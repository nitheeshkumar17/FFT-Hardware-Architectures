`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:17:09 07/30/2019 
// Design Name: 
// Module Name:    radix_6_top 
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
module radix_6_top(
    input [31:0] a_re,
    input [31:0] a_img,
    input [31:0] b_re,
    input [31:0] b_img,
    input [31:0] c_re,
    input [31:0] c_img,
    input [31:0] d_re,
    input [31:0] d_img,
    input [31:0] e_re,
    input [31:0] e_img,
    input [31:0] f_re,
    input [31:0] f_img,
    input clk,
    output [31:0] ao_re,
    output [31:0] ao_img,
    output [31:0] bo_re,
    output [31:0] bo_img,
    output [31:0] co_re,
    output [31:0] co_img,
    output [31:0] do_re,
    output [31:0] do_img,
    output [31:0] eo_re,
    output [31:0] eo_img,
    output [31:0] fo_re,
    output [31:0] fo_img
    );

wire [31:0] a1_re,a1_img,b1_re,b1_img,c1_re,c1_img;
wire [31:0] d1_re,d1_img,e1_re,e1_img,f1_re,f1_img;
wire [31:0] a3_re,a3_img,b3_re,b3_img,c3_re,c3_img;
wire [31:0] d3_re,d3_img,e3_re,e3_img,f3_re,f3_img;
wire [31:0] a4_re,a4_img,b4_re,b4_img,c4_re,c4_img;
wire [31:0] d4_re,d4_img,e4_re,e4_img,f4_re,f4_img;
wire [31:0] a2_re,a2_img,b2_re,b2_img,c2_re,c2_img;
wire [31:0] d2_re,d2_img,e2_re,e2_img,f2_re,f2_img;
wire [31:0] a5_re,a5_img,b5_re,b5_img,c5_re,c5_img;
wire [31:0] d5_re,d5_img,e5_re,e5_img,f5_re,f5_img;
wire [31:0] w6_re,w6_img,w26_re;

bufin_out M0 (.a_re(a_re),.a_img(a_img),.b_re(b_re),.b_img(b_img),.c_re(c_re),.c_img(c_img),.clk(clk),.a1_re(a1_re),.a1_img(a1_img),.b1_re(b1_re),.b1_img(b1_img),.c1_re(c1_re),.c1_img(c1_img));
bufin_out M1 (.a_re(d_re),.a_img(d_img),.b_re(e_re),.b_img(e_img),.c_re(f_re),.c_img(f_img),.clk(clk),.a1_re(d1_re),.a1_img(d1_img),.b1_re(e1_re),.b1_img(e1_img),.c1_re(f1_re),.c1_img(f1_img));
radix_3_top M2 (.a_re(a1_re),.a_img(a1_img),.b_re(c1_re),.b_img(c1_img),.c_re(e1_re),.c_img(e1_img),.clk(clk),.ao_re(a3_re),.ao_img(a3_img),.bo_re(c3_re),.bo_img(c3_img),.co_re(e3_re),.co_img(e3_img));
radix_3_top M3 (.a_re(b1_re),.a_img(b1_img),.b_re(d1_re),.b_img(d1_img),.c_re(f1_re),.c_img(f1_img),.clk(clk),.ao_re(b3_re),.ao_img(b3_img),.bo_re(d3_re),.bo_img(d3_img),.co_re(f3_re),.co_img(f3_img));
bufin_out M4 (.a_re(a3_re),.a_img(a3_img),.b_re(b3_re),.b_img(b3_img),.c_re(c3_re),.c_img(c3_img),.clk(clk),.a1_re(a4_re),.a1_img(a4_img),.b1_re(b4_re),.b1_img(b4_img),.c1_re(c4_re),.c1_img(c4_img));
bufin_out M5 (.a_re(d3_re),.a_img(d3_img),.b_re(e3_re),.b_img(e3_img),.c_re(f3_re),.c_img(f3_img),.clk(clk),.a1_re(d4_re),.a1_img(d4_img),.b1_re(e4_re),.b1_img(e4_img),.c1_re(f4_re),.c1_img(f4_img));
twiddle_rom1 M13 (.clk(clk),.w_re(w6_re),.w_img(w6_img),.w1_re(w26_re));
Complex_multiplier M11 (.a_re(d4_re),.a_img(d4_img),.b_re(w6_re),.b_img(w6_img),.clk(clk),.c_re(d5_re),.c_img(d5_img));
Complex_multiplier M12 (.a_re(f4_re),.a_img(f4_img),.b_re(w26_re),.b_img(w6_img),.clk(clk),.c_re(f5_re),.c_img(f5_img));
buf160 M14 (.a(a4_re),.b(a4_img),.clk(clk),.a1(a5_re),.b1(a5_img));
buf160 M15 (.a(b4_re),.b(b4_img),.clk(clk),.a1(b5_re),.b1(b5_img));
buf160 M16 (.a(c4_re),.b(c4_img),.clk(clk),.a1(c5_re),.b1(c5_img));
buf160 M17 (.a(e4_re),.b(e4_img),.clk(clk),.a1(e5_re),.b1(e5_img));
fft M6 (.a_re(a5_re),.a_img(a5_img),.b_re(b5_re),.b_img(b5_img),.clk(clk),.x0_re(a2_re),.x0_img(a2_img),.x1_re(b2_re),.x1_img(b2_img));
fft M7 (.a_re(c5_re),.a_img(c5_img),.b_re(d5_re),.b_img(d5_img),.clk(clk),.x0_re(c2_re),.x0_img(c2_img),.x1_re(d2_re),.x1_img(d2_img));
fft M8 (.a_re(e5_re),.a_img(e5_img),.b_re(f5_re),.b_img(f5_img),.clk(clk),.x0_re(e2_re),.x0_img(e2_img),.x1_re(f2_re),.x1_img(f2_img));
bufin_out M9 (.a_re(a2_re),.a_img(a2_img),.b_re(b2_re),.b_img(b2_img),.c_re(c2_re),.c_img(c2_img),.clk(clk),.a1_re(ao_re),.a1_img(ao_img),.b1_re(bo_re),.b1_img(bo_img),.c1_re(co_re),.c1_img(co_img));
bufin_out M10 (.a_re(d2_re),.a_img(d2_img),.b_re(e2_re),.b_img(e2_img),.c_re(f2_re),.c_img(f2_img),.clk(clk),.a1_re(do_re),.a1_img(do_img),.b1_re(eo_re),.b1_img(eo_img),.c1_re(fo_re),.c1_img(fo_img));

endmodule
