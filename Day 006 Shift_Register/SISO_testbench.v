`timescale 1ns / 1ps

module tb;
reg clk,clr,In;
wire SR_out;

 SR uut(.clk(clk),.clr(clr),.In(In),.SR_out(SR_out));
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


$monitor($time,"clr = %b,clk = %b,In = %b,SR_out = %b",clr,clk,In,SR_out);
#100 $finish;
end
endmodule
