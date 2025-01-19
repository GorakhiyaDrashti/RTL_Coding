// Code your design here
module casestatment(
  input [3:0]a,
  input [1:0]sel,
  output reg out
);
  
  always @(*)  begin
    unique case(sel)
      2'b11: out = a[3];
      //2'b11: out = a[0];
      2'b01: out = a[2];
      2'b10: out = a[1];
      default : out = a[0];
    endcase
    $display("value of out %0d",out);
  end
endmodule
