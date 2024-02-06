module part1_a(SW, HEX0, HEX1);
   input [7:0] SW;
   output [6:0] HEX0,HEX1;

   b2d_7seg B0(SW[3:0], HEX0);
   b2d_7seg B1(SW[7:4], HEX1);
endmodule


































/*
module part1_a(SW, HEX0, HEX1);

    input [7:0] SW;      // Input from switches SW7-0
    output [6:0] HEX0;     // Output for 7-segment display HEX0
    output [6:0] HEX1;    // Output for 7-segment display HEX1
	 	 

assign HEX0 = (SW[3:0] == 4'b0000) ? 7'b0000001 :
             (SW[3:0] == 4'b0001) ? 7'b1001111 : 
             (SW[3:0] == 4'b0010) ? 7'b0010010: 
             (SW[3:0] == 4'b0011) ? 7'b0000110 : 
             (SW[3:0] == 4'b0100) ? 7'b1001100 : 
             (SW[3:0] == 4'b0101) ? 7'b0100100 :
             (SW[3:0] == 4'b0110) ? 7'b0100000 :
             (SW[3:0] == 4'b0111) ? 7'b0001111 :
             (SW[3:0] == 4'b1000) ? 7'b0000000 :
             (SW[3:0] == 4'b1001) ? 7'b0001100 :
             7'b1111111;

assign HEX1 = (SW[7:4] == 4'b0000) ? 7'b0000001 :
             (SW[7:4]  == 4'b0001) ? 7'b1001111 : 
             (SW[7:4]  == 4'b0010) ? 7'b0010010 : 
             (SW[7:4] == 4'b0011) ?  7'b0000110 : 
             (SW[7:4]  == 4'b0100) ? 7'b1001100 : 
             (SW[7:4]  == 4'b0101) ? 7'b0100100 :
             (SW[7:4]  == 4'b0110) ? 7'b0100000 :
             (SW[7:4]  == 4'b0111) ? 7'b0001111 :
             (SW[7:4]  == 4'b1000) ? 7'b0000000 :
             (SW[7:4]  == 4'b1001) ? 7'b0001100 :
             7'b1111111;
endmodule
*/