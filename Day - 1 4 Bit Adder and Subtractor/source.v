`timescale 1ns / 1ps

module Full_Adder(
  input a,b,cin,
  output sout,cout
  );
    assign sout = a^b^cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
endmodule

module add_sub(
    input [3:0] A, B,
    input select,
    output [3:0] Sout,
    output Cout
    );
    wire [2:0]w;
    
    full_adder fa1(A[0], (B[0]^select), select, Sout[0], w[0]);
    full_adder fa2(A[1], (B[1]^select), w[0], Sout[1], w[1]);
    full_adder fa3(A[2], (B[2]^select), w[1], Sout[2], w[2]);
    full_adder fa4(A[3], (B[3]^select), w[2], Sout[3], Cout);
 
endmodule
