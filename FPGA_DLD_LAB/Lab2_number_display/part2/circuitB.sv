
// Module for circuitB
module circuitB (z, SSD);
  input z;         // Single input
  output [6:0] SSD;  // 7-bit output

  // Behavioral code for circuitB
  assign SSD[0] = z;
  assign SSD[2:1] = 2'b00;
  assign SSD[5:3] = {3{z}};
  assign SSD[6] = 1;
endmodule