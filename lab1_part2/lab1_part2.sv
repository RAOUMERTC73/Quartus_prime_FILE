module lab1_part2(
  
  input [3:0] X, // Four-bit input X
  input [3:0] Y, // Four-bit input Y
  input S,       // Select input S
  output [3:0] M // Four-bit output M
);

  assign M[0] = (S == 0) ? X[0] : Y[0]; // Bit-wise multiplexer for each bit
  assign M[1] = (S == 0) ? X[1] : Y[1];
  assign M[2] = (S == 0) ? X[2] : Y[2];
  assign M[3] = (S == 0) ? X[3] : Y[3];

endmodule
