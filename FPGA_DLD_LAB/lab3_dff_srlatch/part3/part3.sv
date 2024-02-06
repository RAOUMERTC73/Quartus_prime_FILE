module part3(Clk, D, Q);
  input Clk, D;
  output Q;

  wire Qm, Qn /* synthesis keep */ ;
  ff D0 (~Clk, D, Qm);
  ff D1 (Clk, Qm, Qn);

  assign Q = Qn;
endmodule
