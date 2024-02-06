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
module alu(
  input logic [5-1:0] num1,
  input logic [5-1:0] num2,
  input logic [2-1:0] operation,
  output logic [10-1:0] alu_10bitout,
  output logic [3:0] bcd_output
);
  
            logic [10-1:0] temp_out;
  

        always@(*) begin 
			
            if(operation==2'b00)begin    // add
				
                  temp_out = num1 + num2;
				end		
						
            else if(operation==2'b01)begin    // sub
				
                  temp_out = num1 - num2;
				end		
            else if (operation == 2'b10) begin
                   // Multiplication without using a separate function
                   logic [9:0] result = 10'b0;
						 
						
                   for (integer i = 0; i < 5; i = i + 1) begin
						 
                    if (num2[i] == 1) begin
                       result = result + (num1 << i);
                    end
						  
                  end
                    temp_out = result;
            end
            else begin
              // default
               temp_out= 10'bxxxxxxxxxx;
            end
				case (temp_out)
  10'b0000000000: bcd_output = 4'b0000; // 0
  10'b0000000001: bcd_output = 4'b0001; // 1
  10'b0000000010: bcd_output = 4'b0010; // 2
  10'b0000000011: bcd_output = 4'b0011; // 3
  10'b0000000100: bcd_output = 4'b0100; // 4
  10'b0000000101: bcd_output = 4'b0101; // 5
  10'b0000000110: bcd_output = 4'b0110; // 6
  10'b0000000111: bcd_output = 4'b0111; // 7
  10'b0000001000: bcd_output = 4'b1000; // 8
  10'b0000001001: bcd_output = 4'b1001; // 9
  10'b0000001010: bcd_output = 4'b1010; // A
  10'b0000001011: bcd_output = 4'b1011; // B
  10'b0000001100: bcd_output = 4'b1100; // C
  10'b0000001101: bcd_output = 4'b1101; // D
  10'b0000001110: bcd_output = 4'b1110; // E
  10'b0000001111: bcd_output = 4'b1111; // F
  default: bcd_output = 4'bxxxx; // Default to 0 for unknown values
endcase

 
		 				
       end
          	assign alu_10bitout = temp_out;
                  
endmodule

































/*module alu( input logic [5-1:0] num1,
            input logic [5-1:0] num2,
            input logic [2-1:0] operation,
				output logic [5-1:0] alu_5bitout, 
            output logic [3:0] bcd_output);
  
  
            logic [5-1:0] temp_out;
  

        always@(*) begin 
			
            if(operation==2'b00)    // add
				
                  temp_out = num1 + num2;
						
            else if(operation==2'b01)    // sub
				
                  temp_out = num1 - num2;
						
            else if(operation==2'b10)    // mult
				
                  temp_out = num1 * num2;
						
            else
                  temp_out= 5'bxxxxx;
						
	        case(temp_out)
             5'b00000: bcd_output = 4'b0000; // 0
             5'b00001: bcd_output = 4'b0001; // 1
             5'b00010: bcd_output = 4'b0010; // 2
             5'b00011: bcd_output = 4'b0011; // 3
             5'b00100: bcd_output = 4'b0100; // 4
             5'b00101: bcd_output = 4'b0101; // 5
             5'b00110: bcd_output = 4'b0110; // 6
             5'b00111: bcd_output = 4'b0111; // 7
             5'b01000: bcd_output = 4'b1000; // 8
             5'b01001: bcd_output = 4'b1001; // 9
             5'b01010: bcd_output = 4'b1010; // A
             5'b01011: bcd_output = 4'b1011; // B
             5'b01100: bcd_output = 4'b1100; // C
             5'b01101: bcd_output = 4'b1101; // D
             5'b01110: bcd_output = 4'b1110; // E
             5'b01111: bcd_output = 4'b1111; // F
          default: bcd_output = 4'bxxxx; // Default to 0 for unknown values
          endcase		
		 				
       end
          	assign alu_5bitout = temp_out;
                  
endmodule


*/








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
// Code your design here
module alu(
  input logic [5-1:0] num1,
  input logic [5-1:0] num2,
  input logic [2-1:0] operation,
  output logic [5-1:0] alu_5bitout,
  output logic [3:0] bcd_output
);

  logic [5-1:0] temp_out;

  // Function for multiplier
  function logic [5-1:0] multiply;
    input logic [5-1:0] a;
    input logic [5-1:0] b;
    logic [11:0] result;
    integer i;

    result = 12'b0;
    for (i = 0; i < 6; i = i + 1) begin
      if (b[i] == 1) begin
        result = result + (a << i);
      end
    end

    multiply = result[5:0];
  endfunction

  always @(*) begin
    case (operation)
      2'b00: temp_out = num1 + num2; // add
      2'b01: temp_out = num1 - num2; // sub
      2'b10: temp_out = multiply(num1, num2); // mult
      default: temp_out = 5'bxxxxx;
    endcase

    // Convert temp_out to BCD
    case (temp_out)
      5'b00000: bcd_output = 4'b0000; // 0
      5'b00001: bcd_output = 4'b0001; // 1
      5'b00010: bcd_output = 4'b0010; // 2
      5'b00011: bcd_output = 4'b0011; // 3
      5'b00100: bcd_output = 4'b0100; // 4
      5'b00101: bcd_output = 4'b0101; // 5
      5'b00110: bcd_output = 4'b0110; // 6
      5'b00111: bcd_output = 4'b0111; // 7
      5'b01000: bcd_output = 4'b1000; // 8
      5'b01001: bcd_output = 4'b1001; // 9
      5'b01010: bcd_output = 4'b1010; // A
      5'b01011: bcd_output = 4'b1011; // B
      5'b01100: bcd_output = 4'b1100; // C
      5'b01101: bcd_output = 4'b1101; // D
      5'b01110: bcd_output = 4'b1110; // E
      5'b01111: bcd_output = 4'b1111; // F
      default: bcd_output = 4'bxxxx; // Default to 0 for unknown values
    endcase
  end

  assign alu_5bitout = temp_out;

endmodule


*/























