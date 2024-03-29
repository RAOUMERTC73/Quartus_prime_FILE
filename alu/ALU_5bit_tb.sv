// Code your testbench here
// or browse Examples
module ALU_5bit_tb;

  reg [4:0] a;
  reg [4:0] b;
  reg [1:0] opcode;
  wire [4:0] result;

  alu dut(
    .num1(a),
    .num2(b),
    .operation(opcode),
    .out(result)
  );

  initial 
     begin
    // Test Addition
    a = 5'b00010;
    b = 5'b00010;
    opcode = 2'b00;
    #10;

    // Test Subtraction
    a = 5'b00011;
    b = 5'b00001;
    opcode = 2'b01;
    #10;

    // Test Multiplication
    a = 5'b00011;
    b = 5'b00010;
    opcode = 2'b10;
    #10;
	 
  end

 initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #50;
    $finish();
  end
  
endmodule
