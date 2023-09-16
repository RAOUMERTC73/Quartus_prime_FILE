module fullsub8(a,b,cin,sum,cout);

 input a,b,cin;
 output sum,cout;

 assign sum=(a^b^cin);
 assign cout=((a&b)|(b&cin)|(a&cin));
 //assign{cout, sum} = a+b+cin;
 
endmodule

module adder4(a,b,cin,sum,cout);

 input [7:0] a,b;
 input cin;
 output wire [7:0]sum;
 output cout;
 wire c0,c1,c2,c3,c4,c5,c6;
 
 fullsub8 fa0(a[0],~b[0],cin,sum[0],c0);
 fullsub8 fa1(a[1],~b[1],c0,sum[1],c1);
 fullsub8 fa2(a[2],~b[2],c1,sum[2],c2);
 fullsub8 fa3(a[3],~b[3],c2,sum[3],c3);
  
 fullsub8 fa4(a[4],~b[4],c3,sum[4],c4);
 fullsub8 fa5(a[5],~b[5],c4,sum[5],c5);
 fullsub8 fa6(a[6],~b[6],c5,sum[6],c6);
 fullsub8 fa7(a[7],~b[7],c6,sum[7],cout);
endmodule

 

















