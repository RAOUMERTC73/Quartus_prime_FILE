module lab1_part2_tb();

  // Inputs and outputs for the testbench
  reg [3:0] X;    // Four-bit input X
  reg [3:0] Y;    // Four-bit input Y
  reg S;          // Select input S
  wire [3:0] M;   // Four-bit output M

  // Instantiate the module under test
  lab1_part2 DUT (
    .X(X),
    .Y(Y),
    .S(S),
    .M(M)
  );

  // Stimulus generation
  initial begin
    // Test case 1: When S is 0, M should be equal to X
    S = 0;
    X = 4'b1100;
    Y = 4'b0011;
    #10; // Wait for some time
    // Check if M is equal to X
    if (M !== X)
      $display("Test case 1 failed: M = %b, X = %b", M, X);
    
    // Test case 2: When S is 1, M should be equal to Y
    S = 1;
    X = 4'b1100;
    Y = 4'b0011;
    #10; // Wait for some time
    // Check if M is equal to Y
    if (M !== Y)
      $display("Test case 2 failed: M = %b, Y = %b", M, Y);
    
    // Add more test cases as needed...

    // Finish simulation
    $finish;
  end

endmodule
