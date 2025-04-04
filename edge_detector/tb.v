// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst,in;
  wire Q, r_edge, f_edge;
  
  edge_detector dut(.clk(clk),.rst(rst),.Q(Q),
                    .in(in), .r_edge(r_edge), .f_edge(f_edge));
  initial begin
    clk = 0;
    rst = 0;
    in = 0;
    
    #10;
    rst = 1;
    repeat(100) begin
      #10;
    in = $urandom_range(0,1);
    end
  end
  
  always #5 clk = ~clk;
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $stop;
  end
endmodule
