// Code your design here
module alu_bcd_top(SW, KEY,LEDR);


    input wire [9:0] SW;
    input wire [1:0] KEY;
    output wire [9:0] LEDR;
	 

    wire [10-1:0] alu_output;
   

    alu my_alu(
        .num1(SW[4:0]),
        .num2(SW[9:5]),
        .operation(KEY[1:0]),
        .out(alu_output)
    );

  
	  assign LEDR = alu_output;

endmodule
 