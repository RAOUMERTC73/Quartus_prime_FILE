/*Perform the steps listed below.
1. Create a new Quartus project for your circuit.

2. Include your Verilog file for the four-bit wide 2-to-1 multiplexer in your project. Use switch SW9 as the s
input, switches SW3−0 as the X input and SW7−4 as the Y input. Display the value of the input s on LEDR9,

connect the output M to LEDR3−0, and connect the unused LEDR lights to the constant value 0.
3. Include in your project the required pin assignments for your DE-series board. As discussed in Part I, these
assignments ensure that the ports of your Verilog code will use the pins on the FPGA chip that are connected
to the SW switches and LEDR lights.

4. Compile the project, and then download the resulting circuit into the FPGA chip. Test the functionality of
the four-bit wide 2-to-1 multiplexer by toggling the switches and observing the LEDs.*/



module part2(SW, LEDR);

	input [9:0]SW;
	output [3:0]LEDR;
	
	assign LEDR[3:0] = SW[9]? SW[7:4] : SW[3:0];
	
endmodule
