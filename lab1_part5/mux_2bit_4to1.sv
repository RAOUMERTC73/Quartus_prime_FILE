module mux_2bit_4to1(

  input logic [1:0] S,   // 2-bit select inputs
  input logic [1:0] U,   // 2-bit input U
  input logic [1:0] V,   // 2-bit input V
  input logic [1:0] W,   // 2-bit input W
  input logic [1:0] X,   // 2-bit input X
  output logic [1:0] M   // 2-bit output M
);

  assign M = (S == 2'b00) ? U :
             (S == 2'b01) ? V :
             (S == 2'b10) ? W :
             (S == 2'b11) ? X : 2'bzz; // Default value

endmodule
