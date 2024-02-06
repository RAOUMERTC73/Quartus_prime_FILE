/*Perform the following steps:
1. Create a new Quartus project for your circuit.
2. Create a Verilog module for the 7-segment decoder. Connect the c1c0 inputs to switches SW1−0, and connect
the outputs of the decoder to the HEX0 display on your DE-series board. The segments in this display are
called HEX00, HEX01, . . ., HEX06, corresponding to Figure 6. You should declare the 7-bit port

output [0:6] HEX0;

in your Verilog code so that the names of these outputs match the corresponding names in your board’s user
manual and pin assignment file.
3. After making the required pin assignments, compile the project.
4. Download the compiled circuit into the FPGA chip. Test the functionality of the circuit by toggling the
SW1−0 switches and observing the 7-segment display.*/
module part4 (SW, HEX0);
    input [1:0] SW;
    output reg [6:0] HEX0;

    assign HEX0[0] = (~SW[1]&~SW[0]) | (SW[1]&~SW[0]);
    assign HEX0[1] = (~SW[1]&SW[0]);
    assign HEX0[2] = (~SW[1]&SW[0]);
    assign HEX0[3] = (SW[1]&~SW[0]);
    assign HEX0[4] = (SW[1]&~SW[0]);
    assign HEX0[5] = (SW[1]&~SW[0]) | (~SW[1]&~SW[0]);
    assign HEX0[6] = (SW[1]&~SW[0]) | (SW[1]&SW[0]);
endmodule
