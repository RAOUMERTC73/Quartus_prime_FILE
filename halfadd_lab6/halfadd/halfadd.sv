	//halfadder ckt tc-073
	module halfadd(s,cout,a,b);
	
	output s,cout;
	input a,b;
	
	assign s=(a||b)&&(~a||~b);
	assign cout=(a||b)&&(a||~b)&&(~a||b);
	endmodule
		
	
/*module halfadd(s,cout,a,b);
	
	input a,b;

   output s,cout;

   xor (s,a,b); 

   and (cout,a,b);

endmodule*/
