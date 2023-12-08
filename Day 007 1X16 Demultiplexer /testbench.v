`timescale 1ns / 1ps

module testbench;
  reg [3:0]select;
  reg A;
  wire [15:0]out;

  demux_1X16 dut(A, select, out);
  always begin
    A = $random;
    select = $random;
    #10;
  end
  initial begin
    $monitor("A = %0b, select =%0b, out = %0b",A, select, out);
    #50 $finish;
  end
    endmodule
    
