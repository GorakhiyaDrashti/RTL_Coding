// Code your design here
module edge_detector(
  input clk,rst,in,
  output reg Q, 
  output r_edge,f_edge);
  
  always @(posedge clk or negedge rst) begin
    if(!rst) 
     Q <= 0; 
    else
    Q <= in;
    end
    
  assign r_edge = in & ~Q;
  assign f_edge = ~in & Q;
  
endmodule

      
