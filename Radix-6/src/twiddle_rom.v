module twiddle_rom1(
	input clk,
    output reg [31:0] w_re,
	 output reg [31:0] w_img,w1_re
	);
always @(posedge clk) begin
w_re<=32'h3f000000;
w_img<=32'hbf5db230;
w1_re<=32'hbf000000;
end
endmodule
