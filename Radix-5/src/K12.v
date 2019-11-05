`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:31 07/16/2019 
// Design Name: 
// Module Name:    K12 
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
module K12(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output [31:0] a1_re,
    output [31:0] a1_img
    );
wire [31:0] h_a_re,h_a_img,th_a_re,th_a_img,ote_a_re,ote_a_img;
wire [31:0] ha_a_re,ha_a_img,tho_a_re,tho_a_img,k_a_re,k_a_img;
wire [31:0] a2_re,a2_img,k1_a_re,k1_a_img;

assign a1_re=k1_a_re;
assign a1_img=k1_a_img;

buf_1 M6 (.a_re(a_re),.a_img(a_img),.clk(clk),.a1_re(a2_re),.a1_img(a2_img));
half M0 (.a_re(a2_re),.a_img(a2_img),.a1_re(h_a_re),.a1_img(h_a_img));
thirtyhalf M1 (.a_re(a2_re),.a_img(a2_img),.a1_re(th_a_re),.a1_img(th_a_img));
onetwentyeighth M2 (.a_re(a2_re),.a_img(a2_img),.a1_re(ote_a_re),.a1_img(ote_a_img));
Complex_adder M3 (.a_re(a2_re),.a_img(a2_img),.b_re(h_a_re),.b_img(h_a_img),.clk(clk),.c_re(ha_a_re),.c_img(ha_a_img));
Complex_adder M4 (.a_re(th_a_re),.a_img(th_a_img),.b_re(ote_a_re),.b_img(ote_a_img),.clk(clk),.c_re(tho_a_re),.c_img(tho_a_img));
Complex_adder M5 (.a_re(ha_a_re),.a_img(ha_a_img),.b_re(tho_a_re),.b_img(tho_a_img),.clk(clk),.c_re(k_a_re),.c_img(k_a_img));
buf_1 M7 (.a_re(k_a_re),.a_img(k_a_img),.clk(clk),.a1_re(k1_a_re),.a1_img(k1_a_img));

endmodule
