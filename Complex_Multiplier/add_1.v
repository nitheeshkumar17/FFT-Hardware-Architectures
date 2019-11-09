`timescale 1ns / 1ps
module add_1(
    input [23:0] AA,
    input [23:0] BA,
    input [7:0] BEA,
    input [7:0] AEA,
    input ASA,
    input BSA,
    output reg [23:0] Z,
    output reg [7:0] ZE,
    output reg ZS,
    output reg E
    );
always @(ASA,BSA,AA,BA,AEA,BEA) begin
ZE<=(AEA|BEA);
if (ASA==1 && BSA==1) begin
ZS<=ASA;
{E,Z}<=AA+BA;
end
else if (ASA==0 && BSA==1) begin
if(AA>=BA) begin
ZS<=0;
end
else begin
ZS<=1;
end
{E,Z}<=AA+(~BA)+24'b1;
end
else if (ASA==1 && BSA==0) begin
if(AA>=BA) begin
ZS<=1;
end
else begin
ZS<=0;
end
{E,Z}<=BA+(~AA)+24'b1;
end
else begin
ZS<=ASA;
{E,Z}<=AA+BA;
end
end
endmodule
