// Module for the main design
module part2 (SW, HEX0, HEX1);
  input [9:0] SW;           // 10-bit input from switches
  output [6:0] HEX0, HEX1;  // 7-bit outputs for 7-segment displays

  wire z;                  // Wire to hold the comparator result
  wire [3:0] M, A;         // Wires for intermediate values
  assign A[3] = 0;         // Assign a constant value to A[3]

  // Instantiate the comparator module
  comparator C0 (SW[3:0], z);
  
  // Instantiate circuitA module
  circuitA A0 (SW[3:0], A[2:0]);
  
  // Instantiate the mux_4bit_2to1 module
  mux_4bit_2to1 M0 (z, SW[3:0], A, M);
  
  // Instantiate circuitB module
  circuitB B0 (z, HEX1);
  
  // Instantiate b2d_7seg module
  b2d_7seg S0 (M, HEX0);
endmodule



