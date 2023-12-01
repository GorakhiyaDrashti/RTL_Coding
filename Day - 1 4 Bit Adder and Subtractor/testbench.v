`timescale 1ns / 1ps

module testbench;
    reg [3:0] A;
    reg [3:0] B;
    reg select;
    wire [3:0] sout;
    wire c;
    integer i ;
    
    add_sub dut(A, B, select, sout, c);
    initial begin   
    
        A = 4'b1010;
        B = 4'b0101;
        select = 1'b0;
        #10;        
        $display("a= %b b= %b sum = %b, carry = %b", A, B,sout, c);
        
        select = 1'b1;
        #10;        
        $display("a= %b b= %b difference = %b, borrow = %b", A, B, sout, c);
        
        A = 4'b0100;
        B = 4'b0111;
        select = 1'b0;
        #10;
        $display("a= %b b= %b sum = %b, carry = %b", A, B,sout, c);
        
        select = 1'b1;
        #10;
        $display("a= %b b= %b difference = %b, borrow = %b", A, B, sout, c);

        A = 4'b1001;
        B = 4'b1111;
        select = 1'b0;
        #10; 
        $display("a= %b b= %b sum = %b, carry = %b", A, B,sout, c);
        
        select = 1'b1;
        #10; 
        $display("a= %b b= %b difference = %b, borrow = %b", A, B, sout, c);
        
        A = 4'b0101;
        B = 4'b1101;
        select = 1'b0;
        #10; 
        $display("a= %b b= %b sum = %b, carry = %b", A, B,sout, c);
        
        select = 1'b1;
        #10; 
        $display("a= %b b= %b difference = %b, borrow = %b", A, B, sout, c);     
        $finish; 
    end    
endmodule
