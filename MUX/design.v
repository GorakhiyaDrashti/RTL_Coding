module MUX(
  input [3:0]In,
  input [1:0]sel,
  output reg out
);
  
  always @(*) begin
    case(sel) 
      
      2'b00: out = In[0];
      2'b01: out = In[1];
      2'b10: out = In[2];
      2'b11: out = In[3];
      default: out = 1'b0;
    endcase

  end
endmodule
