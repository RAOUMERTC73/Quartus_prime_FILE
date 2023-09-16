//Data flow level of abstraction
module mux6to1(a,sel,out);

  input wire [5:0] a;  // 6 inputs
  input wire [2:0] sel;  // 3-bit selection input
  output wire out ; // output

  
assign out = (sel == 3'b000) ? a[0] :(sel == 3'b001) ? a[1] :(sel == 3'b010) ? a[2] :(sel == 3'b011) ? a[3] :(sel == 3'b100) ? a[4] : a[5];

endmodule

/*
module mux6to1(a,sel,out);

  input wire [5:0] a;  // 6 inputs
  input wire [2:0] sel;  // 3-bit selection input
  output wire out ; // output

always @(*)
 begin
  case (sel)
    3'b000: out = a[0];
    3'b001: out = a[1];
    3'b010: out = a[2];
    3'b011: out = a[3];
    3'b100: out = a[4];
    3'b101: out = a[5];
  endcase
end

endmodule*/
/*module top;

reg [5:0] a;
reg [2:0] sel;
wire out;

mux6to1 mux(
  .a(a),
  .sel(sel),
  .out(out)
);

initial begin
  a = 6'b100100;
  sel = 3'b000;  // output = a[0]
  #10;
  sel = 3'b001;  // output = a[1]
  #10;
  sel = 3'b010;  // output = a[2]
  #10;
  // ...
end

endmodule
*/







































