`timescale 1ns / 1ps
module buf230(
    input [31:0] a_re,
    input [31:0] a_img,
    input clk,
    output reg [31:0] a1_re,
    output reg [31:0] a1_img
    );
reg [31:0] n [0:21];
reg [31:0] n1 [0:21];
always @(posedge clk) begin
n[0]<=a_re;
n[1]<=n[0];
n[2]<=n[1];
n[3]<=n[2];
n[4]<=n[3];
n[5]<=n[4];
n[6]<=n[5];
n[7]<=n[6];
n[8]<=n[7];
n[9]<=n[8];
n[10]<=n[9];
n[11]<=n[10];
n[12]<=n[11];
n[13]<=n[12];
n[14]<=n[13];
n[15]<=n[14];
n[16]<=n[15];
n[17]<=n[16];
n[18]<=n[17];
n[19]<=n[18];
n[20]<=n[19];
n[21]<=n[20];
a1_re<=n[21];

n1[0]<=a_img;
n1[1]<=n1[0];
n1[2]<=n1[1];
n1[3]<=n1[2];
n1[4]<=n1[3];
n1[5]<=n1[4];
n1[6]<=n1[5];
n1[7]<=n1[6];
n1[8]<=n1[7];
n1[9]<=n1[8];
n1[10]<=n1[9];
n1[11]<=n1[10];
n1[12]<=n1[11];
n1[13]<=n1[12];
n1[14]<=n1[13];
n1[15]<=n1[14];
n1[16]<=n1[15];
n1[17]<=n1[16];
n1[18]<=n1[17];
n1[19]<=n1[18];
n1[20]<=n1[19];
n1[21]<=n1[20];
a1_img<=n1[21];
end
endmodule