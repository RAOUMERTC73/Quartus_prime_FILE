//////////////////////////////////////////////////////////////////////////////////
module all_gate_tb();
  // port 
  reg a;
  reg b;
  wire AND, OR, XOR, NAND, NOR;
  //instantiation 
  all_gates dut(.a(a),.b(b),.AND(AND),.OR(OR),.XOR(XOR),.NAND(NAND),.NOR(NOR));
  
  //initial block
  initial begin 
    a=0;b=0;
    #5
    a=0;b=1;
    #5
    a=1;b=0;
    #5
    a=1;b=1;
	 #5

	  $finish;
  end
 /* initial begin 
    $dumpfile("dumped.vcd");
    $dumpvars(0);
    #20
    $finish();
  end  */        
           
endmodule
