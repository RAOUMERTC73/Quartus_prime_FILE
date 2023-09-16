module counter_74160(clk,reset,load,din,inc,q);
  input wire clk;  // clock input
  input wire reset;  // asynchronous reset input
  input wire load;  // parallel load input
  input wire [3:0] din;  // 4-bit input data
  input wire inc;  // increment input
  output wire [3:0] q;  // 4-bit output data


reg [3:0] r;  // 4-bit register

// Counter behavior
always @(posedge clk) begin
  if (reset) begin
    r <= 4'b0000;  // reset to 0
  end else if (load) begin
    r <= din;  // parallel load
  end else if (inc) begin
    r <= r + 1;  // increment
  end
end

// Output data
assign q = r;

endmodule
