module tb;
  reg [3:0]In;
  reg [1:0]sel;
  wire out;
  
  MUX dut(.In(In), .sel(sel), .out(out));
  
  initial begin
    In = 4'b1010;
    sel = 2'b00;
  end
  
  initial begin
    for(int i=0;i<5;i++)
      begin
        sel = $urandom();
        #10;
        $display("value of In: %0d, sel:%0d, out:%0b",In, sel, out);
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    #100;
    $finish;
  end
  
endmodule
