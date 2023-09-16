// A ⊙ B = AB + ĀB ̅.
// xor is represent by = "^"
//xnor is represent by = "~^"


module parityodd (peven,podd,a,b,c,d);

output logic peven,podd;

input wire a,b,c,d;


assign peven=((a^b)^(c^d));

assign podd=~((a^b)^(c^d));
 
//assign podd=((~(a^b))~^(~(c^d)));

endmodule
