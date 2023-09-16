module shift_reg_8bit(din,clk,pl,arst,q);
  input wire [7:0] din;  // 8-bit input data
  input wire clk;  // clock input
  input wire pl;  // parallel load input
  input wire arst;  // asynchronous reset input
  output wire [7:0] q ; // 8-bit output data


reg [7:0] r;  // 8-bit register

// Shift register behavior
always @(posedge clk) begin
  if (arst) begin
    r <= 8'b0;  // reset to 0
  end else if (pl) begin
    r <= din;  // parallel load
  end else begin
    r <= {r[6:0], r[7]};  // shift right
  end
end

// Output data
assign q = r;

endmodule
