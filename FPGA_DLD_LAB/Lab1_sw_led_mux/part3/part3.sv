/*Figure 5: A two-bit wide 4-to-1 multiplexer.
Perform the following steps to implement the two-bit wide 4-to-1 multiplexer.
1. Create a new Quartus project for your circuit.
2. Create a Verilog module for the two-bit wide 4-to-1 multiplexer. Connect its select inputs to switches
SW9−8, and use switches SW7−0 to provide the four 2-bit inputs U to X. Connect the output M to the red
lights LEDR1−0.
3. Include in your project the required pin assignments for your DE-series board. Compile the project.

4. Download the compiled circuit into the FPGA chip. Test the functionality of the two-bit wide 4-to-1 mul-
tiplexer by toggling the switches and observing the LEDs. Ensure that each of the inputs U to X can be

properly selected as the output M.*/



module part3 (SW, LEDR);

	input [9:0]SW;
	output [1:0]LEDR;
	
	assign LEDR[1:0] = SW[9]? (SW[8]? SW[7:6] : SW[5:4]) : (SW[8] ? SW[3:2] : SW[1:0]);
	
endmodule
