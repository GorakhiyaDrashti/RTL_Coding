`timescale 1ns / 1ps

module tb;
reg clk,load;
reg [3:0]In;
wire SR_out;

 SR dut(.clk(clk),.In(In),.load(load),.SR_out(SR_out));
 
initial begin
 clk = 1'b0;
 In = 4'b1001;
 load = 1'b0;
#10 load = 1'b1;

end
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  initial begin
  $monitor($time,"clk = %b,In = %b,SR_out = %b,load = %b",clk,In,SR_out,load);
#100 $finish;
 end
endmodule
