 
module half_add_gatel(input A,
                      input B,
							 output logic SUM,
							 output logic CARRY);
 
 

always@(*)begin



 SUM = A ^ B ;
 
 CARRY = A & B; 



end




endmodule
