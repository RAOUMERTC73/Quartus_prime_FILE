module demux6to1(in,sel,a);

  input wire in;  // input
  
  input wire [2:0] sel;  // 3-bit selection input
  
  output wire [5:0] a;  // 6 outputs


assign a[0] = (sel == 3'b000) ? in : 1'b0;
assign a[1] = (sel == 3'b001) ? in : 1'b0;
assign a[2] = (sel == 3'b010) ? in : 1'b0;
assign a[3] = (sel == 3'b011) ? in : 1'b0;
assign a[4] = (sel == 3'b100) ? in : 1'b0;
assign a[5] = (sel == 3'b101) ? in : 1'b0;

endmodule
