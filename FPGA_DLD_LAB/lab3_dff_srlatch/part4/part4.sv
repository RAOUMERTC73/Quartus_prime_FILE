module part4(
  input wire Clk,
  input wire D,
  output reg Qd,
  output reg Qp,
  output reg Qn
);

  // Instantiate modules
  gated_d_latch uut_gated_d_latch (
    .Clk(Clk),
    .D(D),
    .Qd(Qd)
  );

  pos_edge_flip_flop uut_pos_edge_flip_flop (
    .Clk(Clk),
    .D(D),
    .Qp(Qp)
  );

  neg_edge_flip_flop uut_neg_edge_flip_flop (
    .Clk(Clk),
    .D(D),
    .Qn(Qn)
  );

endmodule
