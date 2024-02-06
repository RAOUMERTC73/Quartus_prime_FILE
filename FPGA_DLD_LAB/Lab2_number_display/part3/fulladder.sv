/*module fulladder (a, b, cin, s, cout);
  input a, b, cin;
  output cout, s;
  wire d;

  assign d = a ^ b;
  assign s = d ^ cin;
  assign cout = (b & ~d) | (d & cin);
endmodule  */



module fulladder (a,b,cin,s,cout);//from vide0 ckt 

output s,cout;

input a,b,cin;

assign s=a^b^cin;

assign cout=(a & b)|(a & cin)|(b & cin);

endmodule

