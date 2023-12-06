`timescale 1ns / 1ps

module tb;
reg clk,clr;
reg [3:0]In;
wire [3:0]Q;

 SR dut(.clk(clk),.In(In),.clr(clr),.Q(Q));
 
initial begin
 clk = 1'b0;
 clr  = 1'b1;
 #10In = 4'b1001;
 #10 In=4'b1010;

#10 In=4'b1011;

#10 In=4'b1110;

#10 In=4'b1111;

#10 In=4'b0000;
end
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
initial begin
  $monitor($time,"clk = %b,In = %b,Q = %b,clr = %b",clk,In,Q,clr);
  #100 $finish;
 end
endmodule
