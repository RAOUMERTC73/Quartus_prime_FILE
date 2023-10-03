module ALU_8Sbit_tb;
  
  reg [8-1:0] a;
  reg [8-1:0] b;
  reg [2-1:0] opcode;
  wire [16-1:0] result;

  alu dut(
    .num1(a),
    .num2(b),
    .operation(opcode),
    .out(result)
  );

  initial begin
    // Test Addition
    a = 8'b00_00_00_10;
    b = 8'b00_00_00_10;
    opcode = 2'b00;
    #10;

    // Test Subtraction
    a = 8'b00_00_00_11;
    b = 8'b00_00_00_01;
    opcode = 2'b01;
    #10;

    // Test Multiplication
    a = 5'b00_00_00_11;
    b = 5'b00_00_00_10;
    opcode = 2'b10;
    #10;

    // Test division
    a = 5'b00_00_01_00;
    b = 5'b00_00_00_10;
    opcode = 2'b11;
    #10;

 
    $finish();
  end

  /*initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #200;
    $finish();
  end  */
  
endmodule
