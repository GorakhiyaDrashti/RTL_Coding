`timescale 1ns/1ps

module SR(
  input clk,[3:0]In,load,
  output SR_out);
   reg [3:0]Q;
  always@(posedge clk)
    begin
        if(!load)
        Q <= In;
        else
        begin
        Q = {1'b0,Q[3:1]};
       end      
     end 
     assign SR_out = Q[0];
endmodule


