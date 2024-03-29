module two_bit_7_segment_decoder(

  input logic [1:0] C,       // 2-bit input code
  output logic [0:6] Display // 7-bit output for 7-segment display
);

  // Define the logic functions to activate each segment based on the input code C
  always @(*) begin
  
    case (C)
	 
      2'b00: Display = 7'b0100001; // Character 'd'
      2'b01: Display = 7'b0000110 ; // Character 'E'
      2'b10: Display = 7'b1111001; // Character '1'
      2'b11: Display = 7'b1000000; // Character '0'
      default: Display = 7'b1111111; // Blank (all segments off)
		
    endcase
	 
  end

endmodule