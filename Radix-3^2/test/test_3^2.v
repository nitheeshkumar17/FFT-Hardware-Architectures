`timescale 1ns / 1ps
module test_32;
parameter n=5;

reg [31:0] a_re,a_img,b_re,b_img,c_re,c_img;
reg clk,sel,sel1,sel2,sel4,sel5,sel6,sel7,rst,En;

wire [31:0] ao_re,ao_img,bo_re,bo_img,co_re,co_img;

Radix_32 uut(
	.a_re(a_re),
	.a_img(a_img),
	.b_re(b_re),
	.b_img(b_img),
	.c_re(c_re),
	.c_img(c_img),
	.clk(clk),
	.sel(sel),.sel1(sel1),.sel2(sel2),.sel4(sel4),.sel5(sel5),.sel6(sel6),.sel7(sel7),.rst(rst),.En(En),
	.ao_re(ao_re),
	.ao_img(ao_img),
	.bo_re(bo_re),
	.bo_img(bo_img),
	.co_re(co_re),
	.co_img(co_img)
	);

initial begin
      clk=1;
#10000 $stop;
end
always begin
#n clk=~clk;
end
initial begin
#(140*n)
rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
#(2*n) rst=1;
#(2*n) rst=0;
#(2*n) rst=0;
end
initial begin
#(140*n)
En=1;
end
initial begin
#(129*n)
 sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
#(2*n) sel=0;
#(2*n) sel=1;
#(2*n) sel=1;
end
initial begin
#(133*n)
sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
#(2*n) sel2=0;
#(2*n) sel2=1;
#(2*n) sel2=1;
end
initial begin
#(119*n)
sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
#(2*n) sel1=0;
#(2*n) sel1=1;
end
initial begin
#(127*n)
sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=0;
#(2*n) sel4=1;
#(2*n) sel4=1;
#(2*n) sel4=1;
end
initial begin
#(119*n)
sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
#(2*n) sel5=0;
#(2*n) sel5=1;
#(2*n) sel5=1;
end
initial begin
#(119*n)
sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
#(2*n) sel6=0;
#(2*n) sel6=0;
#(2*n) sel6=1;
end
initial begin
#(135*n)
sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=0;
#(2*n) sel7=1;
#(2*n) sel7=1;
#(2*n) sel7=1;
end

	
initial begin
a_re=32'h3f491a30;
b_re=32'h3f15c290;
c_re=32'hc14c0000;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
#(2*n)
a_re=32'h3fcae148;
b_re=32'hc2960000;
c_re=32'h414c0000;
a_img=32'h42f90000;
b_img=32'h414c0000;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h414c0000;
b_re=32'h42460000;
c_re=32'h415891a3;
a_img=32'h42960000;
b_img=32'h415891a3;
c_img=32'h42460000;		
#(2*n)
a_re=32'h4246570a;
b_re=32'h3fcae148;
c_re=32'hc13f6e5d;
a_img=32'h4243a8f6;
b_img=32'hc13f6e5d;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h4248570a;
b_re=32'h4243a8f6;
c_re=32'h3f491a30;
a_img=32'h3f15c290;
b_img=32'h3f491a30;
c_img=32'h4243a8f6;
#(2*n)
a_re=32'h3f491a30;
b_re=32'h3f15c290;
c_re=32'hc14c0000;
a_img=32'h4246570a;
b_img=32'hc14c0000;
c_img=32'h4246570a;
#(2*n)
a_re=32'h3fcae148;
b_re=32'hc2960000;
c_re=32'h414c0000;
a_img=32'h42f90000;
b_img=32'h414c0000;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h414c0000;
b_re=32'h42460000;
c_re=32'h415891a3;
a_img=32'h42960000;
b_img=32'h415891a3;
c_img=32'h42460000;		
#(2*n)
a_re=32'h4246570a;
b_re=32'h3fcae148;
c_re=32'hc13f6e5d;
a_img=32'h4243a8f6;
b_img=32'hc13f6e5d;
c_img=32'h3fcae148;
#(2*n)
a_re=32'h4248570a;
b_re=32'h4243a8f6;
c_re=32'h3f491a30;
a_img=32'h3f15c290;
b_img=32'h3f491a30;
c_img=32'h4243a8f6;

end
endmodule
