module fulladder(X, Y, Ci, S, Co);
  input X, Y, Ci;
  output S, Co;
  wire w1,w2,w3;

  xor G1(w1, X, Y);
  xor G2(S, w1, Ci);
  and G3(w2, w1, Ci);
  and G4(w3, X, Y);
  or G5(Co, w2, w3);
endmodule
