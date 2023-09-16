module fulladder1(a, b, cin, sum, cout);

 input a,b,cin;
 output sum,cout;

 assign sum=(a^b^cin);
 assign cout=((a&b)|(b&cin)|(a&cin));
 //assign{cout, sum} = a+b+cin;
 
endmodule
