
module adder_8bit(X, Y, S, Co);
 input [7:0] X, Y;
 output [7:0] S;
 output Co;
 wire w1, w2, w3, w4, w5, w6, w7;

 fulladder u1(X[0], Y[0], 1'b0, S[0], w1);
 fulladder u2(X[1], Y[1], w1, S[1], w2);
 fulladder u3(X[2], Y[2], w2, S[2], w3);
 fulladder u4(X[3], Y[3], w3, S[3], w4);
 fulladder u5(X[4], Y[4], w4, S[4], w5);
 fulladder u6(X[5], Y[5], w5, S[5], w6);
 fulladder u7(X[6], Y[6], w6, S[6], w7);
 fulladder u8(X[7], Y[7], w7, S[7], Co);
endmodule
