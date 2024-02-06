module gated_d_latch(
  input wire Clk,
  input wire D,
  output reg Qd
);

  // Gated D latch
 always @(Clk,D)
  begin
   if (Clk)
    Qd = D;
  end
  
endmodule
