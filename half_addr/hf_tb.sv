module hf_tb();

reg t_a,t_b;

wire s,c;

half_add_gatel dut(.A(t_a), .B(t_b), .SUM(s), .CARRY(c));

initial begin

 t_a=0; t_b=0;
 #100
 t_a=0;t_b=1;
 #100
 t_a=1;t_b=0;
 #100
 t_a=1;t_b=1;
 #100
 $monitor("t_a=%b, t_b=%b, SUM=%b, CARRY=%b", t_a, t_b, s, c);

end

endmodule
