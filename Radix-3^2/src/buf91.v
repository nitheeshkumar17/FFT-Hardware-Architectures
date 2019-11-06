module buf91 (
	input [31:0] a,
	input clk,
	output reg [31:0] a1
	);
reg [31:0] a2 [0:7];
always @(negedge clk) begin
a2[0]<=a;
a2[1]<=a2[0];
a2[2]<=a2[1];
a2[3]<=a2[2];
a2[4]<=a2[3];
a2[5]<=a2[4];
a2[6]<=a2[5];
a2[7]<=a2[6];
a1<=a2[7];
end
endmodule
