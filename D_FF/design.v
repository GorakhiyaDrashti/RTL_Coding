// Code your design here
module D_FF(
input D_in,input clk,input reset,
output reg Q);
  
  always @(posedge clk) begin
    if(!reset)
     Q <= D_in;
    else
      Q <= 1'b0;
    
  end

endmodule
