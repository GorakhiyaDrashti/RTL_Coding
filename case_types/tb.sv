
// Code your testbench here
// or browse Examples
module tb;
  logic [3:0]a;
  logic [1:0]sel;
  logic out;
  
  casestatment dut(.a(a),.sel(sel),.out(out));
  
  initial begin
    a = 4'b1100;
     #10; 
    sel = 2'b00;
     #20;
    sel = 2'b01;
    #20;
    sel = 2'b10;
     #20;
    sel = 2'b11;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    
    #100;
    $finish;
  end
endmodule
  
