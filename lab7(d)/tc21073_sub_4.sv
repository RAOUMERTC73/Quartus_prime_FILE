module tc21073_sub_4(a,b,cin,sum,cout);

 input [3:0] a,b;
 input cin;
 output wire [3:0]sum;
 output cout;
 wire c0,c1,c2;
 
 fulladder1 fa0(a[0],~b[0],cin,sum[0],c0);
 fulladder1 fa1(a[1],~b[1],c0,sum[1],c1);
 fulladder1 fa2(a[2],~b[2],c1,sum[2],c2);
 fulladder1 fa3(a[3],~b[3],c2,sum[3],cout);
endmodule

