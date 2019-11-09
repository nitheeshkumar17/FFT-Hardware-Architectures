`timescale 1ns / 1ps
module align_1(
    input [7:0] BE,
    input [7:0] AE,
	 output reg [7:0] d
    );
	 
always @(AE,BE) begin
if (AE>BE) begin
d=AE-BE;
end
else if (AE<BE) begin
d=BE-AE;
end
else begin
d=8'b0;
end
end
endmodule
