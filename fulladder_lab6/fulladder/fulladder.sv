//fulladder ckt TC-073

module fulladder (s,cout,a,b,c_in); //from copy adder ckt

output s,cout;
input a,b,c_in;

assign s=((!a&!b&c_in)||(!a&b&!c_in)||(a&!b&!c_in)||(a&b&c_in));

assign cout=((!a&b&c_in)||(a&!b&c_in)||(a&b&!c_in)||(a&b&c_in));

endmodule

/*module fulladder (s,cout,a,b,c_in);//from vide0 ckt 

output s,cout;
input a,b,c_in;

assign s=a^b^c_in;
assign cout=(a & b)|(a & c_in)|(b & c_in);

endmodule*/

