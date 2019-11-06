module buf220 (
	input [31:0] a,
	input clk,
	output reg [31:0] a1
	);
reg [31:0] n [0:14];
always @(posedge clk) begin
n[0]<=a;
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
a1<=n[14];
end
endmodule