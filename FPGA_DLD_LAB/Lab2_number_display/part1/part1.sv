module part1(SW, HEX0, HEX1);
   input [7:0] SW;
   output [6:0] HEX0,HEX1;

   b2d_7seg B0 (SW[3:0], HEX0);
   b2d_7seg B1 (SW[7:4], HEX1);
	
endmodule
