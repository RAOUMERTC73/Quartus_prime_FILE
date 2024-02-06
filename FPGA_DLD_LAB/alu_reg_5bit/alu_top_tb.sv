module alu_top_tb;

    logic [9:0] SW;
    logic clk;
    logic [1:0] KEY;
    logic [9:0] LEDR;
    logic [6:0] HEX0;

    // Instantiate the alu_top module
    alu_top uut (
        .SW(SW),
        .clk(clk),
        .KEY(KEY),
        .LEDR(LEDR),
        .HEX0(HEX0)
    );
  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Testbench stimulus
  initial begin
    // Initialize inputs
    SW = 10'b0;
    KEY = 2'b0;

    // Test case 1: Addition
    #5 SW = 10'b00001_00010; // 
    #5 KEY = 2'b01;          // Addition operation

    // Test case 2: Subtraction
    #5 SW = 10'b00001_00010;// 
    #5 KEY = 2'b10;          // Subtraction operation

    // Test case 3: Multiplication
    #5 SW = 10'b00001_00010;// 
    #5 KEY = 2'b01;          // Multiplication operation

    // Test case 1: Addition
    #5 SW = 10'b00001_00010; // 
    #5 KEY = 2'b01;          // Addition operation

    // Test case 2: Subtraction
    #5 SW = 10'b00001_00010;// 
    #5 KEY = 2'b10;          // Subtraction operation

    // Test case 3: Multiplication
    #5 SW = 10'b00001_00010;// 
    #5 KEY = 2'b01;          // Multiplication operation

    // Test case 4: Division
    #5 SW = 10'b0000100010; //
    #5 KEY = 2'b11;          // Division operation

    // Run simulation for a while
    #70 $finish;
  end

endmodule
