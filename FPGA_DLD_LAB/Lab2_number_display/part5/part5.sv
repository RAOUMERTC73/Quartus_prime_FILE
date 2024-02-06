module part5 (SW, LEDR, HEX0, HEX1, HEX3, HEX5);
    input [8:0] SW;       // 9-bit input from switches
    output [8:0] LEDR;    // 9-bit output to LEDs
    output [6:0] HEX0, HEX1, HEX3, HEX5;  // 7-segment display outputs

    wire [3:0] A, B, S0, S1;  // 4-bit wires for A, B, S0, and S1
    wire [4:0] T0;           // 5-bit wire for T0
    wire c1;                 // Single-bit wire for c1
    reg [4:0] Z0;            // 5-bit register Z0
    reg c0;                  // Single-bit register c0

    assign LEDR = SW;  // Assign the LEDR output to the value of SW (direct connection)

    assign A = SW[7:4];  // Assign the 4 most significant bits of SW to A
    assign B = SW[3:0];   // Assign the 4 least significant bits of SW to B
    assign c1 = SW[8];    // Assign the most significant bit of SW to c1

    assign T0 = A + B + c1;  // Calculate T0 by adding A, B, and c1

    always @ (T0)  // Always block sensitive to changes in T0
    begin
        if (T0 > 9)  // If T0 is greater than 9, indicating overflow
        begin
            Z0 = 5'd10;   // Set Z0 to 10 (5-bit value)
            c0 = 1'd1;    // Set c0 to 1 (carry)
        end
        else  // If T0 is not greater than 9
        begin
            Z0 = 5'd0;    // Set Z0 to 0
            c0 = 1'd0;    // Set c0 to 0 (no carry)
        end
    end

    assign S0 = T0 - Z0;  // Calculate S0 by subtracting Z0 from T0
    assign S1 = c0;       // S1 is assigned the value of c0 (carry)

    // Instantiate four b2d_7seg modules to convert S0, S1, B, and A to 7-segment displays
    b2d_7seg ssd0 (.X(S0), .SSD(HEX0));
    b2d_7seg ssd1 (.X(S1), .SSD(HEX1));
    b2d_7seg ssd2 (.X(B), .SSD(HEX3));
    b2d_7seg ssd3 (.X(A), .SSD(HEX5));
endmodule

module b2d_7seg (X, SSD);
    input [3:0] X;      // 4-bit input X
    output [6:0] SSD;   // 7-segment display output SSD
      
    // Assign SSD based on the value of X using conditional operator
    assign SSD = (X[3:0] == 4'b0000) ? 7'b0000001 :
                 (X[3:0] == 4'b0001) ? 7'b1001111 : 
                 (X[3:0] == 4'b0010) ? 7'b0010010 :
                 (X[3:0] == 4'b0011) ? 7'b0000110 : 
                 (X[3:0] == 4'b0100) ? 7'b1001100 : 
                 (X[3:0] == 4'b0101) ? 7'b0100100 :
                 (X[3:0] == 4'b0110) ? 7'b0100000 :
                 (X[3:0] == 4'b0111) ? 7'b0001111 :
                 (X[3:0] == 4'b1000) ? 7'b0000000 :
                 (X[3:0] == 4'b1001) ? 7'b0001100 :
                 7'b1111111;  // Default to all segments turned off
endmodule
