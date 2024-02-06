module alu_bcd_top_tb;

  reg [9:0] SW;
  reg [1:0] KEY;
  wire [9:0] LEDR;

  // Instantiate the module
  alu_bcd_top uut (
    .SW(SW),
    .KEY(KEY),
    .LEDR(LEDR)
  );

  // Testbench stimulus
  initial begin
    // Initialize inputs
    SW = 10'b0;
    KEY = 2'b0;

  
    // Test case 1: Addition
    #5 SW = 10'b00001_00011; // 
    #5 KEY = 2'b01;          // Addition operation

    // Test case 2: Subtraction
    #5 SW = 10'b01001_00110;// 
    #5 KEY = 2'b10;          // Subtraction operation

    // Test case 3: Multiplication
    #5 SW = 10'b00101_00010;// 
    #5 KEY = 2'b01;          // Multiplication operation

  
    // Test case 4: Division
    #5 SW = 10'b0000100010; //
    #5 KEY = 2'b11;          // Division operation

    // Monitor outputs
    $monitor("Time=%0t SW=%b KEY=%b LEDR=%b", $time, SW, KEY, LEDR);

    // Run simulation for a while
    #35 $finish;
  end

endmodule
