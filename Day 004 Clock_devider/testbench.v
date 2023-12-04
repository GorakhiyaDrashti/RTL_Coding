`timescale 1ns / 1ps

module tb;
reg clk,rst;
wire opdiv_2;

clk_Div DUT(clk,rst,opdiv_2);

always #5 clk = ~clk;
initial begin
 clk = 0;
 rst = 0;
 #10 rst = 1;

 end 
 always begin
 $monitor("clk = %b, rst = %b,opdiv2_ = %b",clk,rst,opdiv_2);
  #300 $finish;
 end
endmodule
