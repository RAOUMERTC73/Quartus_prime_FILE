module c_part5(

  input logic [9:0] SW,       // Slide switches
  output logic [9:0] LEDR,    // Red lights
  output logic [0:6] HEX0,    // 7-segment display for HEX0
  output logic [0:6] HEX1,    // 7-segment display for HEX1
  output logic [0:6] HEX2,    // 7-segment display for HEX2
  output logic [0:6] HEX3     // 7-segment display for HEX3
);

  //logic [1:0] M0, M1, M2, M3;  // 2-bit output for each 4-to-1 multiplexer
   wire [1:0] M0;

  // Instantiate four instances of the 2-bit wide 4-to-1 multiplexer
  mux_2bit_4to1 U0(SW[9:8], SW[7:6], SW[5:4], SW[3:2], SW[1:0], M0);
 // mux_2bit_4to1 U1(SW[9:8], SW[7:6], SW[5:4], SW[3:2], SW[1:0], M1);
 // mux_2bit_4to1 U2(SW[9:8], SW[7:6], SW[5:4], SW[3:2], SW[1:0], M2);
 //mux_2bit_4to1 U3(SW[9:8], SW[7:6], SW[5:4], SW[3:2], SW[1:0], M3);

  // Instantiate four instances of the 7-segment decoder
  two_bit_7_segment_decoder H0(M0, HEX0);
  two_bit_7_segment_decoder H1(M0, HEX1);
  two_bit_7_segment_decoder H2(M0, HEX2);
  two_bit_7_segment_decoder H3(M0, HEX3);


  // Connect SW to LEDR for debugging
  assign LEDR = SW;

endmodule
