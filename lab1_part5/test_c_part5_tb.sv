module test_c_part5_tb;

  // Inputs
  reg [9:0] SW;
  
  // Outputs
  wire [9:0] LEDR;
  wire [0:6] HEX0, HEX1, HEX2, HEX3;
  
  // Instantiate the module
  c_part5 dut (
    .SW(SW),
    .LEDR(LEDR),
    .HEX0(HEX0),
    .HEX1(HEX1),
    .HEX2(HEX2),
    .HEX3(HEX3)
  );
  
  // Stimulus generation
  initial begin
    // Test case 1: SW = 10'b11_10_10_10_10
    SW = 10'b11_10_10_10_10;
    #10; // Wait for some time
    $display("Test case 1: SW = %b, LEDR = %b, HEX0 = %b, HEX1 = %b, HEX2 = %b, HEX3 = %b", SW, LEDR, HEX0, HEX1, HEX2, HEX3);
    
    // Test case 2: SW = 10'b01_10_10_10_10
    SW = 10'b01_10_10_10_10;
    #10; // Wait for some time
    $display("Test case 2: SW = %b, LEDR = %b, HEX0 = %b, HEX1 = %b, HEX2 = %b, HEX3 = %b", SW, LEDR, HEX0, HEX1, HEX2, HEX3);
    
    // Test case 3: SW = 10'b00_10_10_10_10
    SW = 10'b00_10_10_10_10;
    #10; // Wait for some time
    $display("Test case 3: SW = %b, LEDR = %b, HEX0 = %b, HEX1 = %b, HEX2 = %b, HEX3 = %b", SW, LEDR, HEX0, HEX1, HEX2, HEX3);

    // Test case 4: SW = 10'b10_10_10_10_10
    SW = 10'b10_10_10_10_10;
    #10; // Wait for some time
    $display("Test case 4: SW = %b, LEDR = %b, HEX0 = %b, HEX1 = %b, HEX2 = %b, HEX3 = %b", SW, LEDR, HEX0, HEX1, HEX2, HEX3);

    // Add more test cases as needed
    
    $finish; // Finish the simulation
  end
endmodule
