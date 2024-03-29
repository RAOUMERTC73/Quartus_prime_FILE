module mux_6to1(
  input [2:0] S,       // 3-bit select input
  input [6:0] Input0,  // Input data for selection 0
  input [6:0] Input1,  // Input data for selection 1
  input [6:0] Input2,  // Input data for selection 2
  input [6:0] Input3,  // Input data for selection 3
  input [6:0] Input4,  // Input data for selection 4
  input [6:0] Input5,  // Input data for selection 5
  output reg [6:0] M    // Output data
);
  
  always @(*) begin
  
    case (S)
      3'b000: M = Input0;
      3'b001: M = Input1;
      3'b010: M = Input2;
      3'b011: M = Input3;
      3'b100: M = Input4;
      3'b101: M = Input5;
      default: M = 7'bzzzzzzz; // Output 'z' for invalid selection
    endcase
	 
  end

endmodule
/*
module mux_6to1(
  input [2:0] SW,        // Character pattern selector
  output logic [6:0] Display  // 7-bit output for 7-segment display
);

  // Define constants for character patterns
  parameter [6:0] CHAR_d = 7'b0100001; // Character 'd'
  parameter [6:0] CHAR_E = 7'b0000110; // Character 'E'
  parameter [6:0] CHAR_1 = 7'b1111001; // Character '1'
  parameter [6:0] CHAR_0 = 7'b1000000; // Character '0'
  parameter [6:0] CHAR_BLANK = 7'b1111111; // Blank character

  // Output selection based on SW inputs
  always @* begin
    case (SW)
      3'b000: Display = CHAR_d; // Character 'd'
      3'b001: Display = CHAR_E; // Character 'E'
      3'b010: Display = CHAR_1; // Character '1'
      3'b011: Display = {4'b0000, CHAR_E}; // Rotate pattern 'E 1 0 d'
      3'b100: Display = {4'b0000, CHAR_1}; // Rotate pattern '1 0 d E'
      3'b101: Display = {4'b0000, CHAR_0}; // Rotate pattern '0 d E 1'
      default: Display = CHAR_BLANK; // Blank (all segments off)
    endcase
  end

endmodule*/
