module pos_edge_flip_flop(
  input wire Clk,
  input wire D,
  output reg Qp
);

  // Positive-edge triggered D flip-flop
  always @(posedge Clk) begin
    Qp <= D;
  end

endmodule
