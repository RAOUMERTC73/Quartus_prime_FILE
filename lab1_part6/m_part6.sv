module m_part6(

  input logic [2:0] Select6to1,// Switch inputs for character rotation
  output [2:0] LEDR,
  output [6:0] HEX5,     // 7-segment display 5
  output [6:0] HEX4,     // 7-segment display 4
  output [6:0] HEX3,     // 7-segment display 3
  output [6:0] HEX2,     // 7-segment display 2
  output [6:0] HEX1,     // 7-segment display 1
  output [6:0] HEX0      // 7-segment display 0
  
);
 // logic [2:0] Select6to1;  // 3-bit select for the 6-to-1 mux

  // Define constants for character patterns (adjust as needed)
  parameter [6:0] CHAR_d = 7'b0100001; // Character 'd'
  parameter [6:0] CHAR_E = 7'b0000110; // Character 'E'
  parameter [6:0] CHAR_1 = 7'b1111001; // Character '1'
  parameter [6:0] CHAR_0 = 7'b1000000; // Character '0'
  parameter [6:0] CHAR_BLANK = 7'b1111111; // Blank character

  // Instantiate 6-to-1 multiplexers for each display
  mux_6to1 MuxDisplay0 (.S(Select6to1), .Input0(CHAR_BLANK), .Input1(CHAR_d), .Input2(CHAR_E), .Input3(CHAR_1), .Input4(CHAR_0), .Input5(CHAR_BLANK), .M(HEX0));
  
  
  mux_6to1 MuxDisplay1 (.S(Select6to1), .Input0(CHAR_d), .Input1(CHAR_E), .Input2(CHAR_1), .Input3(CHAR_0), .Input4(CHAR_BLANK), .Input5(CHAR_BLANK), .M(HEX1));
  
 
  mux_6to1 MuxDisplay2 (.S(Select6to1), .Input0(CHAR_BLANK), .Input1(CHAR_d), .Input2(CHAR_E), .Input3(CHAR_1), .Input4(CHAR_0), .Input5(CHAR_BLANK), .M(HEX2));
  
  
  mux_6to1 MuxDisplay3 (.S(Select6to1), .Input0(CHAR_d), .Input1(CHAR_E), .Input2(CHAR_1), .Input3(CHAR_0), .Input4(CHAR_BLANK), .Input5(CHAR_BLANK), .M(HEX3));
  
  
  mux_6to1 MuxDisplay4 (.S(Select6to1), .Input0(CHAR_BLANK), .Input1(CHAR_d), .Input2(CHAR_E), .Input3(CHAR_1), .Input4(CHAR_0), .Input5(CHAR_BLANK), .M(HEX4));
  
  
  mux_6to1 MuxDisplay5 (.S(Select6to1), .Input0(CHAR_d), .Input1(CHAR_E), .Input2(CHAR_1), .Input3(CHAR_0), .Input4(CHAR_BLANK), .Input5(CHAR_BLANK), .M(HEX5));

  // Connect SW inputs to Select6to1 (for character rotation)
  assign LEDR[0] = Select6to1[0];
  assign LEDR[1] = Select6to1[1];
  assign LEDR[2] = Select6to1[2];
  
endmodule
 