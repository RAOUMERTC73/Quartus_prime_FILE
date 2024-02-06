// Code your design here
/*fetch, decode, execute, memory, write back

ALU(Arithmetic Logic Unit)

output  = if operation is add, then add input1 and input2

add   =   2'b00
sub   =   2'b01
multi =   2'b10
div    =  2'b11 


size of input1 and input2 = 5 bits
size of output            = 5 bits*/

module alu( input wire [5-1:0] num1,
            input wire [5-1:0] num2,
            input wire [2-1:0] operation,
            
            output wire [10-1:0] out);
  
  
            reg [10-1:0] temp_out;
  
  
           always@(*) begin 
			  
            if(operation==2'b00)    // add
				
                  temp_out = num1 + num2;
						
            else if(operation==2'b01)    // sub
				
                  temp_out = num1 - num2;
						
            else if(operation==2'b10)    // mult
				
                  temp_out = num1 * num2;
						
            else
                  temp_out= 10'bxxxxxxxxxx;
          end
          
          assign out = temp_out;
                  
endmodule











/*module alu(

  input logic [5-1:0] a,
  input logic [5-1:0] b,
  input logic [3-1:0] opcode,
  output reg [5-1:0] result
  
);
 
  always @(*)
  begin
  
    case(opcode)
	 
      3'b000: result = a + b;  // Addition
      3'b001: result = a - b;  // Subtraction
      3'b010: result = a * b;  // Multiplication
      3'b011: result = a & b;  // Bitwise AND
      3'b100: result = a | b;  // Bitwise OR
		
      default: result = 3'b000; // Default value (no operation)
		
    endcase
	 
  end
  
endmodule


*/






















