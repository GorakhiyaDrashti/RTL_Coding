module tb;
  reg wr_rd;
  reg [7:0] data_in;
  reg reset, clk;
  wire [7:0] data_out;
  wire full, empty;

  Sync_FF dut(
    .wr_rd(wr_rd),
    .data_in(data_in),
    .reset(reset),
    .clk(clk),
    .data_out(data_out),
    .full(full),
    .empty(empty)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Write task
  task write(input [7:0] d_in);
    begin
      @(posedge clk);
      wr_rd = 1'b1;
      data_in = d_in;
      $display("[%0t] Writing: %0d", $time, data_in);
    end
  endtask

  // Read task
  task read();
    begin
      @(posedge clk);
      wr_rd = 1'b0;
      @(posedge clk); 
      $display("[%0t] Reading: %0d", $time, data_out);
    end
  endtask

  initial begin
    clk = 0;
    reset = 0;
    wr_rd = 0;
    data_in = 0;

    // Reset sequence
    #10 reset = 1;

    // Write operations
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    write(10);
    write(40);
    write(30);
    // Read operations
    read();
    read();
    // Try reading when FIFO is empty (optional test case)
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    read();
    #20 $finish;
  end
  // VCD dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
  end
endmodule
