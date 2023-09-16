module tc21073_sub_8(a,b,cin,sum,cout);

 input [7:0] a,b;
 input cin;
 output wire [7:0]sum;
 output cout;
 wire c0,c1,c2,c3,c4,c5,c6;
 
 fulladder1 fa0(a[0],~b[0],cin,sum[0],c0);
 fulladder1 fa1(a[1],~b[1],c0,sum[1],c1);
 fulladder1 fa2(a[2],~b[2],c1,sum[2],c2);
 fulladder1 fa3(a[3],~b[3],c2,sum[3],c3);
  
 fulladder1 fa4(a[4],~b[4],c3,sum[4],c4);
 fulladder1 fa5(a[5],~b[5],c4,sum[5],c5);
 fulladder1 fa6(a[6],~b[6],c5,sum[6],c6);
 fulladder1 fa7(a[7],~b[7],c6,sum[7],cout);
endmodule

