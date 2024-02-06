
// Module for circuitA
module circuitA (V, A);
  input [2:0] V;    // 3-bit input
  output [2:0] A;   // 3-bit output

  // Behavioral code for circuitA
  assign A[0] = V[0];
  assign A[1] = ~V[1];
  assign A[2] = (V[2] & V[1]);
endmodule