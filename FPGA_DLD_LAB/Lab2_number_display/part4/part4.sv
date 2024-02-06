module part4 (SW, LEDR, HEX5, HEX3, HEX1, HEX0);
  input [8:0] SW; // 9-bit input SW
  output [9:0] LEDR; // 10-bit output LEDR
  output [6:0] HEX5, HEX3, HEX1, HEX0; // 7-bit outputs HEX5, HEX3, HEX1, HEX0
  wire s1, s2; // Wires s1 and s2

  comparator C0 (SW[3:0], s1); // Instantiate comparator C0 with inputs SW[3:0] and output s1
  comparator C1 (SW[7:4], s2); // Instantiate comparator C1 with inputs SW[7:4] and output s2

  b2d_7seg HEX0_inst(SW[3:0],HEX3); // Instantiate b2d_7seg module with inputs SW[3:0] and output HEX3
  b2d_7seg HEX1_inst(SW[7:4],HEX5); // Instantiate b2d_7seg module with inputs SW[7:4] and output HEX5

  assign LEDR[9] = s1 | s2; // Assign LEDR[9] with the OR operation of s1 and s2

  wire c1, c2, c3; // Wires c1, c2, and c3
  wire [4:0] S; // 5-bit wire S

  fulladder A0 (SW[0], SW[4], SW[8], S[0], c1); // Instantiate fulladder A0 with inputs SW[0], SW[4], SW[8], outputs S[0] and c1
  fulladder A1 (SW[1], SW[5], c1, S[1], c2); // Instantiate fulladder A1 with inputs SW[1], SW[5], c1, outputs S[1] and c2
  fulladder A2 (SW[2], SW[6], c2, S[2], c3); // Instantiate fulladder A2 with inputs SW[2], SW[6], c2, outputs S[2] and c3
  fulladder A3 (SW[3], SW[7], c3, S[3], S[4]); // Instantiate fulladder A3 with inputs SW[3], SW[7], c3, outputs S[3] and S[4]

  assign LEDR[4:0] = S[4:0]; // Assign LEDR[4:0] with S[4:0]

  wire z; // Wire z
  wire [3:0] A, M; // 4-bit wires A and M

  comparator9 C2 (S[4:0], z); // Instantiate comparator9 C2 with inputs S[4:0] and output z
  circuitA A4 (S[3:0], A); // Instantiate circuitA A4 with inputs S[3:0] and output A
  mux_4bit_2to1 M0 (z, S[3:0], A, M); // Instantiate mux_4bit_2to1 M0 with inputs z, S[3:0], A, outputs M
  circuitB B0 (z, HEX1); // Instantiate circuitB B0 with inputs z and output HEX1
  b2d_7seg S0 (M, HEX0); // Instantiate b2d_7seg S0 with inputs M and output HEX0

endmodule

module b2d_7seg (X, SSD);
       input [3:0] X; // 4-bit input X
       output [6:0] SSD; // 7-bit output SSD

assign SSD = (X[3:0] == 4'b0000) ? 7'b0000001 : // If X is 0000, SSD is 0000001
             (X[3:0] == 4'b0001) ? 7'b1001111 : // If X is 0001, SSD is 1001111
             (X[3:0] == 4'b0010) ? 7'b0010010: // If X is 0010, SSD is 0010010
             (X[3:0] == 4'b0011) ? 7'b0000110 : // If X is 0011, SSD is 0000110
             (X[3:0] == 4'b0100) ? 7'b1001100 : // If X is 0100, SSD is 1001100
             (X[3:0] == 4'b0101) ? 7'b0100100 : // If X is 0101, SSD is 0100100
             (X[3:0] == 4'b0110) ? 7'b0100000 : // If X is 0110, SSD is 0100000
             (X[3:0] == 4'b0111) ? 7'b0001111 : // If X is 0111, SSD is 0001111
             (X[3:0] == 4'b1000) ? 7'b0000000 : // If X is 1000, SSD is 0000000
             (X[3:0] == 4'b1001) ? 7'b0001100 : // If X is 1001, SSD is 0001100
             7'b1111111; // Otherwise, SSD is 1111111

endmodule

module comparator (V, A);
  input [3:0] V; // 4-bit input V
  output A; // Output A

  assign A = (V[3] & (V[2] | V[1])); // A is (V[3] AND (V[2] OR V[1]))
endmodule

module comparator9 (V, A);
  input [4:0] V; // 5-bit input V
  output A; // Output A

  assign A = V[4] | ((V[3] & V[2]) | (V[3] & V[1])); // A is V[4] OR ((V[3] AND V[2]) OR (V[3] AND V[1]))
endmodule

module circuitA (V, A);
  input [3:0] V; // 4-bit input V
  output [3:0] A; // 4-bit output A

  assign A[0] = V[0]; // A[0] is V[0]
  assign A[1] = ~V[1]; // A[1] is NOT V[1]
  assign A[2] = (~V[3] & ~V[1]) | (V[2] & V[1]); // A[2] is ((NOT V[3]) AND (NOT V[1])) OR (V[2] AND V[1])
  assign A[3] = (~V[3] & V[1]); // A[3] is ((NOT V[3]) AND V[1])
endmodule

module circuitB (z, SSD);
  input z; // Input z
  output [6:0] SSD; // 7-bit output SSD

  assign SSD[0] = z; // SSD[0] is z
  assign SSD[2:1] = 2'b00; // SSD[2:1] is 00
  assign SSD[5:3] = {3{z}}; // SSD[5:3] is {z, z, z}
  assign SSD[6] = 1; // SSD[6] is 1
endmodule

module mux_4bit_2to1 (S, U, V, M);
  input S; // Input S
  input [3:0] U, V; // 4-bit inputs U and V
  output [3:0] M; // 4-bit output M

  assign M = ({4{~S}} & U) | ({4{S}} & V); // M is ((4 copies of NOT S) AND U) OR ((4 copies of S) AND V)
endmodule

module fulladder (a, b, cin, s, cout);
  input a, b, cin; // Inputs a, b, and cin
  output cout, s; // Outputs cout and s

  wire d; // Wire d

  assign d = a ^ b; // d is a XOR b
  assign s = d ^ cin; // s is d XOR cin
  assign cout = (b & ~d) | (d & cin); // cout is (b AND (NOT d)) OR (d AND cin)
endmodule
