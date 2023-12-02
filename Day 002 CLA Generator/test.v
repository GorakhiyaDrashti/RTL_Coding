`timescale 1ns / 1ps

module testbench;
  reg [3:0]A,B;
  reg Cin;
  wire [3:0]sout;
  wire cout;

  CLA_4 dut(A,B,Cin,sout,cout);
  
  initial begin
    A = 4'b1000;
    B = 4'b0011;
    Cin = 1'b1;
    $display("A = %b, B = %b, Cin = %b, sout = %b, cout = %b",A,B,Cin,sout,cout);
    #10;
    
    A = 4'b0001;
    B = 4'b1010;
    Cin = 1'b1;
    $display("A = %b, B = %b, Cin = %b, sout = %b, cout = %b",A,B,Cin,sout,cout);
    #10;
    
    A = 4'b1010;
    B = 4'b0101;
    Cin = 1'b1;
    $display("A = %b, B = %b, Cin = %b, sout = %b, cout = %b",A,B,Cin,sout,cout);
    #10;
    
    A = 4'b0110;
    B = 4'b0110;
    Cin = 1'b1;
    $display("A = %b, B = %b, Cin = %b, sout = %b, cout = %b",A,B,Cin,sout,cout);
    #10;
    
    A = 4'b1001;
    B = 4'b0100;
    Cin = 1'b1;
    $display("A = %b, B = %b, Cin = %b, sout = %b, cout = %b",A,B,Cin,sout,cout);
    #10;
    
    $finish;
  end
endmodule

  
