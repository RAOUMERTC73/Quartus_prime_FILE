// Code your design here
module alu_top(SW,clk, KEY,LEDR,HEX0);


    input logic [9:0] SW;
	 input logic  clk;
    input logic [1:0] KEY;
    output logic [9:0] LEDR;
	 output logic [6:0] HEX0;
	 
    logic [4:0] a_reg,b_reg;
    logic [9:0] alu_result;
	 logic [3:0] bcd;

	 always_ff@(posedge clk) 
	 begin
	    a_reg <= SW[4:0];
		 b_reg <= SW[9:5];
	 end
	 
    alu my_alu(
        .num1(a_reg),
        .num2(b_reg),
        .operation(KEY[1:0]),
		  .alu_10bitout(LEDR),
		  .bcd_output(bcd)
		  
    );

  
	  
	  bcd_to_7segment_decoder driver1(.bcd_input(bcd),.disp(HEX0));
	   
	

endmodule
 