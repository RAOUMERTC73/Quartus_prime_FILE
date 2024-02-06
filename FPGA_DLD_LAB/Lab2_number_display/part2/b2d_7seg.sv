/*module b2d_7seg (X, SSD);
  input [3:0] X;
  output [6:0] SSD;

         assign SSD[0] = (~X[3] &  X[2] & ~X[1] & ~X[0]) | (~X[3] &  ~X[2] & ~X[1] & X[0]) ;
         assign SSD[1] = (~X[3] & X[2] & ~X[1] & X[0]) | (~X[3] & X[2] & X[1] & ~X[0]);
         assign SSD[2] =  (~X[3] & ~X[2] &  X[1] & ~X[0]);
         assign SSD[3] = (~X[3] & ~X[2] & ~X[1] &  X[0]) | (~X[3] &  X[2] & ~X[1] & ~X[0]) | (~X[3] &  X[2] & X[1] & X[0]) | (X[3] & ~X[2] & ~X[1] & X[0]);
         assign SSD[4] = ~((~X[2] & ~X[0]) | (X[1] & ~X[0]));
         assign SSD[5] = (~X[3] & ~X[2] & ~X[1] &  X[0]) | (~X[3] & ~X[2] &  X[1] & ~X[0]) | (~X[3] & ~X[2] & X[1] & X[0]) | (~X[3] & X[2] & X[1] & X[0]);
         assign SSD[6] = (~X[3] & ~X[2] & ~X[1] &  X[0]) | (~X[3] & ~X[2] & ~X[1] & ~X[0]) | (~X[3] &  X[2] & X[1] & X[0]);
endmodule*/
// Module for binary to 7-segment decoder
module b2d_7seg (X, SSD);
  input [3:0] X;           // 4-bit binary input
  output [6:0] SSD;        // 7-bit 7-segment display output
  
  // Behavioral code for the binary to 7-segment conversion
  assign SSD = (X[3:0] == 4'b0000) ? 7'b0000001 :
               (X[3:0] == 4'b0001) ? 7'b1001111 : 
               (X[3:0] == 4'b0010) ? 7'b0010010: 
               (X[3:0] == 4'b0011) ? 7'b0000110 : 
               (X[3:0] == 4'b0100) ? 7'b1001100 : 
               (X[3:0] == 4'b0101) ? 7'b0100100 :
               (X[3:0] == 4'b0110) ? 7'b0100000 :
               (X[3:0] == 4'b0111) ? 7'b0001111 :
               (X[3:0] == 4'b1000) ? 7'b0000000 :
               (X[3:0] == 4'b1001) ? 7'b0001100 :
               7'b1111111;
endmodule
