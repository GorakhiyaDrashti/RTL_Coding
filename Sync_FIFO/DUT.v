// Code your design here
module Sync_FF(
  input wr_rd,
  input [7:0]data_in,
  input reset,
  input clk,
  output reg [7:0]data_out,
  output full, empty);
  
  reg [7:0]Mem[16];
  reg [3:0]rd_ptr,wr_ptr;
  reg [4:0] count;
  
  always @(posedge clk or negedge reset) begin
    if(!reset) begin
      for (int i = 0; i < 16; i = i + 1)
        Mem[i] <= 8'b0;
        wr_ptr <= 4'b0;
        rd_ptr <= 4'b0;
        count  <= 0;
        data_out <= 8'b0;
    end
    else begin
      if(wr_rd & !full) begin
        Mem[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
      end
      else if(!wr_rd & !empty) begin
        data_out <= Mem[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
        
      end
      
    end
    
  end
  
  assign full = (count == 15)?1'b1 : 1'b0;
  assign empty = (count == 0)? 1'b1 : 1'b0;
endmodule

