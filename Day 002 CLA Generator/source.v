`timescale 1ns / 1ps

module CLA_4(
  input [3:0]A,B,
  input Cin,
  output [3:0]sout,
  output cout);

  wire g0,g1,g2,g3,p0,p1,p2,p3;
  wire [3:0]c;
  
  assign g0 = A[0] & B[0];
  assign g1 = A[1] & B[1];
  assign g2 = A[2] & B[2];
  assign g3 = A[3] & B[3];

  xor(p0, A[0], B[0]);
  xor(p1, A[1], B[1]);
  xor(p2, A[2], B[2]);
  xor(p3, A[3], B[3]);
  
  xor(sout[0], p0, Cin);
  xor(sout[1], p1, c[0]);
  xor(sout[2], p2, c[1]);
  xor(sout[3], p3, c[2]);
  
  assign c[0] = g0 | (p0 & Cin);
  assign c[1] = g1 | (p1 & g0) | (p1 & p0 & Cin);
  assign c[2] = g2 | (p2 & g1) | (p2 & p1 & g0) | (p1 & p1 & p0 & Cin);
  assign c[3] = g3 | (p3 & g2) | (p3 & p2 & p1 & g0) |(p3 & p2 & p1 & p0 & Cin);
    
  assign cout = c[3];

endmodule

  
  
  
  
  
  
