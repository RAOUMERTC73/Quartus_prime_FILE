
// Module for the binary comparator
module comparator (V, z);
  input [3:0] V;   // 4-bit input for comparison
  output z;        // Single output for comparison result
  
  // Behavioral code for the comparator
  assign z = (V[3] & (V[2] | V[1]));
endmodule