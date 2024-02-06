module neg_edge_flip_flop(
  input wire Clk,
  input wire D,
  output reg Qn
);

  // Negative-edge triggered D flip-flop
  always @(negedge Clk) begin
    Qn <= D;
  end

endmodule
