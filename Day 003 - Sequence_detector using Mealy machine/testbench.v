module tb;
  wire out;
  reg clk,rst,In;
  
  Seq_gen DUT(.clk(clk),.rst(rst),.In(In),.out(out));
  
  always #5 clk = ~clk;
  
  initial begin
    
    clk = 0;
    rst = 1;
    In = 0;
    #5; 
    rst = 0;
    #5 rst = 1;
    
    #10 In = 1;
    #10 In = 0;
    #10 In = 1;
    #10 In = 1;
    #10 In = 1;
    #10 In = 1;
    #10 In = 1;
    #10 In = 0; 
    #10 In = 1;
    
  end
  
  always @(*)
    begin
       $display("value of In and out is %0d,%0d",In,out); 
    #200;
    $finish; 
    end
  
  initial begin
    $dumpfile("FSM.vcd");
    $dumpvars;
  end

endmodule
  
