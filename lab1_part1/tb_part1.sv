//`timescale 1ns / 1ps

module tb_part1;

  // Define the signals
  reg [9:0] SW;       // Slide switches
  wire [9:0] LEDR;    // Red LEDs

  // Instantiate the part1 module
  part_1 DUT(
    .SW(SW),
    .LEDR(LEDR)
  );

  // Stimulus generation
  initial begin
    // Initialize the slide switches with specific values
    SW = 10'b1010101010;  // You can change this value

    // Display the initial values
    $display("Initial values:");
    $display("SW = %b", SW);

    // Simulate some changes in the slide switches
    #10 SW = 10'b1100110011;
    #10 SW = 10'b0011001100;

    // Display the updated values
    $display("Updated values:");
    $display("SW = %b", SW);

    // Wait for a while to observe the LEDR signals
    #100;

    // Finish the simulation
    $finish;
  end

endmodule
