
module tb;
  reg clk, rst;
  reg [1:0] in;
  wire out;
  wire [1:0] change;
  
  vending_machine DUT(.clk(clk), .rst(rst),.in(in),.out(out),.change(change));
  
  always  #5 clk = ~clk;
  
  initial begin
  
    clk = 0;
    rst = 0;
    #6;
    rst = 1;
    
      in = 2'b10;
      $display(" input: %0d, Output: %0d, change: %0d",in,out,change);
      #15;
    in = 2'b10;
      $display(" input: %0d, Output: %0d, change: %0d",in,out,change);
      #15;
    in = 2'b00;
      $display(" input: %0d, Output: %0d, change: %0d",in,out,change);
      #15;
    in = 2'b10;
      $display(" input: %0d, Output: %0d, change: %0d",in,out,change);
      #15;
    
        $finish;

  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
  end
  
endmodule
               
