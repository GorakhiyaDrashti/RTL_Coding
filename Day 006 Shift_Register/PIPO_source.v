`timescale 1ns/1ps

module SR(
  input clk,[3:0]In,clr,
  output reg [3:0]Q);
  always@(posedge clk)
    begin
        if(!clr)
        Q <= 4'b0000;
        else
        Q <= In;    
     end 
endmodule


