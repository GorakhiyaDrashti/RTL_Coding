`timescale 1ns/1ps

module clk_Div(
  input clk,rst,
  output reg opdiv_2,opdiv_4);

  always @(posedge clk)
    begin
      if(!rst)
        begin
          opdiv_2 = 1'b0;
    
        end
      else
        opdiv_2 = ~opdiv_2;
    
    end
endmodule
