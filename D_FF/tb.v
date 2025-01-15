// Code your testbench here
// or browse Examples
module tb;
  reg Din,clk,reset;
  wire Q;
  
  D_FF dut(.D_in(Din),.clk(clk),.reset(reset),.Q(Q));
  
  initial begin
    clk = 0;
    reset = 1;
    Din = 0;
    #10;
    reset = 0;
    forever #5 clk = ~clk;
  end
    
  initial begin
    $display("insert");
    for(int i = 0;i < 10;i++)
        Din = $urandom_range(0,1);
  end
  initial begin
    $display("insert");
    for(int i = 0;i < 10;i++) begin
      #10;
        Din = $urandom_range(0,1);
      $display("value of input %0d",Din);
   end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100;
    $finish;
  end
endmodule
  
      
  
  
