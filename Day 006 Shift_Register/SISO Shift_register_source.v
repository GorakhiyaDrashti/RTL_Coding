`timescale 1ns/1ps

module SR(
  input clk,In,clr,
  output SR_out);
  reg [3:0]Q = 0;
  always @(posedge clk)
    begin
      if(!clr)
        begin
          Q <= 4'b0000;
        end
      else
        begin
        Q[3] <= In;
        Q[2] <= Q[3];
        Q[1] <= Q[2];
        Q[0] <= Q[1];
        end
     end 
   assign SR_out = Q[0];
endmodule
