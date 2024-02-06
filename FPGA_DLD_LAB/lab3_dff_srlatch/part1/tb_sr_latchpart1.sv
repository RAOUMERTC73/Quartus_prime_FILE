//`timescale 1ns/1ns  // Set the simulation timescale

module tb_part1;

  // Inputs
  reg Clk, R, S;

  // Outputs
  wire Q;

  // Instantiate the module
  part1 dut(
    .Clk(Clk),
    .R(R),
    .S(S),
    .Q(Q)
  );

  // Clock generation
  initial begin
    Clk = 0;
    forever #5 Clk = ~Clk;  // Toggle the clock every 5 time units
  end

 
  // Stimulus generation based on the truth table
  initial begin
    // Initialize inputs
    R = 0;
    S = 0;

    // Apply stimulus based on the truth table
    #10 R = 0; S = 0;  // Set R and S to 0
    #10 R = 0; S = 1;  // Set R to 0, S to 1
    #10 R = 1; S = 0;  // Set R to 1, S to 0
    #10 R = 1; S = 1;  // Set R and S to 1

    #20 $finish;  // Finish the simulation after 20 time units
  end

  // Display the results
  always @(posedge Clk) begin
    $display("Time=%t, R=%b, S=%b, Q=%b", $time, R, S, Q);
  end


endmodule