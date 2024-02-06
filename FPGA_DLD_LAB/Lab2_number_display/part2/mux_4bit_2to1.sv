
// Module for 4-bit 2-to-1 multiplexer
module mux_4bit_2to1 (S, U, V, M);
  input S;          // Select input
  input [3:0] U, V;  // 4-bit data inputs
  output [3:0] M;   // 4-bit output
  
  // Behavioral code for the multiplexer
  assign M = ({4{~S}} & U) | ({4{S}} & V);
endmodule
