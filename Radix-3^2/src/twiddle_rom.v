`timescale 1ns / 1ps

module twiddle_rom(
	input clk,En,rst,
    output reg [31:0] w_re,
	 output reg [31:0] w_img,
	 output reg [31:0] w1_re,
	 output reg [31:0] w1_img
	);
reg [0:1] count;
always @(posedge clk,rst,En) begin : circuit1
if (En) begin
if (rst) 
	count=2'b0;
else
	count=count+2'b01;
end
end

always @(posedge clk,count) begin : circuit2
if (count==2'b0) begin
w_re<=32'h3f800000;
w_img<=32'h00000000;
w1_re<=32'h3f800000;
w1_img<=32'h00000000;
end
else if (count==2'b01) begin
w_re<=32'h3f441890;
w_img<=32'hbf249ba0;
w1_re<=32'h3e322d00;
w1_img<=32'hbf7c28f0;
end
else if (count==2'b10) begin
w_re<=32'h3e322d00;
w_img<=32'hbf7c28f0;
w1_re<=32'hbf706250;
w1_img<=32'hbeaf1aa0;
end
end
endmodule

