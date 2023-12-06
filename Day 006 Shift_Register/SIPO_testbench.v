`timescale 1ns / 1ps

module tb;
reg clk,clr,In;
wire [3:0]Q;

 SR uut(.clk(clk),.clr(clr),.In(In),.Q(Q));
always #5 clk = ~clk;
initial begin
clk = 1'b0;
clr = 1'b0;
In = 1'b1;
#05 clr = 1'b0;
#05 clr = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b0;

$monitor($time,"clr = %b,clk = %b,In = %b,Q = %b",clr,clk,In,Q);
#70 $finish;
end
endmodule
