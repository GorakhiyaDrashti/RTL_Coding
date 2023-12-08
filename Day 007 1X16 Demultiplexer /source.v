`timescale 1ns / 1ps

module demux_1X4(
  input A,
  input [1:0]select,
  output [3:0]out);

  assign out[0] = (A & ~select[0] & ~select[1]);
  assign out[1] = (A & ~select[0] & select[1]);
  assign out[2] = (A & select[0] & ~select[1]);
  assign out[3] = (A & select[0] & select[1]);

endmodule
module demux_1X16(
  input A,
  input [3:0]select,
  output [15:0]out);
  
  wire [3:0]w;
  demux_1X4 d1( A, select[3:2],w[3:0]);
  demux_1X4 d2( w[0], select[1:0],out[3:0]);
  demux_1X4 d3( w[1], select[1:0],out[7:4]);
  demux_1X4 d4( w[2], select[1:0],out[11:8]);
  demux_1X4 d5( w[3], select[1:0],out[15:12]);
endmodule
