module bcd_to_7segment_decoder(bcd_input,disp);

//Declare inputs,outputs and internal variables.

    input logic [3:0] bcd_input;// 4-bit BCD input
    output logic [6:0] disp;// 7-segment display output


always @(*) begin
    case(bcd_input)
        4'b0000: disp = 7'b0000001; // 0
        4'b0001: disp = 7'b1001111; // 1
        4'b0010: disp = 7'b0010010; // 2
        4'b0011: disp = 7'b0000110; // 3
        4'b0100: disp = 7'b1001100; // 4
        4'b0101: disp = 7'b0100100; // 5
        4'b0110: disp = 7'b0100000; // 6
        4'b0111: disp = 7'b0001111; // 7
        4'b1000: disp = 7'b0000000; // 8
        4'b1001: disp = 7'b0000100; // 9
        4'b1010: disp = 7'b0001000; // A
        4'b1011: disp = 7'b1100000; // B
        4'b1100: disp = 7'b0110001; // C
        4'b1101: disp = 7'b1000010; // D
        4'b1110: disp = 7'b0110000; // E
        4'b1111: disp = 7'b0111000; // F
        default: disp = 7'bxxxxxxx; // Default to display nothing
    endcase
end

endmodule
