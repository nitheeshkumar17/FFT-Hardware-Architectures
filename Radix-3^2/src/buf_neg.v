module buf_neg(
    input [31:0] a_re,
    input [31:0] b_re,
    input [31:0] c_re,
	 input [31:0] a_img,
	 input [31:0] b_img,
	 input [31:0] c_img,
    output reg [31:0] a1_re,
    output reg  [31:0] b1_re,
    output reg [31:0] c1_re,
	 output reg  [31:0] a1_img,
	 output reg  [31:0] b1_img,
	 output reg  [31:0] c1_img,
    input clk
    );
always @(negedge clk) begin
a1_re=a_re;
a1_img<=a_img;
b1_re<=b_re;
b1_img<=b_img;
c1_re<=c_re;
c1_img<=c_img;
end

endmodule