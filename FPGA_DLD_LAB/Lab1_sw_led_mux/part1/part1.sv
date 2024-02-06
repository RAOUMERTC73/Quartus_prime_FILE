
/*Perform the following steps to implement a circuit corresponding to the code in Figure 1 on the DE-series boards.
1. Create a new Quartus project for your circuit. Select the target chip that corresponds to your DE-series
board. Refer to Table 1 for a list of devices.
2. Create a Verilog module for the code in Figure 1 and include it in your project.
3. Include in your project the required pin assignments for your DE-series board, as discussed above. Compile
the project.
4. Download the compiled circuit into the FPGA chip by using the Quartus Programmer tool (the procedure
for using the Programmer tool is described in the tutorial Quartus Introduction). Test the functionality of
the circuit by toggling the switches and observing the LEDs.

*/
module part1 (SW, LEDR);
	input [9:0] SW;
	output [9:0] LEDR; 
	
	
	assign LEDR = SW;
	
	
endmodule
