// Code your testbench here
// or browse Examples

module part4_tb;

  // Declare signals

logic clk, d, qd,qp,qn;
initial
begin
d = 0; #2.5;
d = 1; #2.5;
d = 0; #1;
d = 1; #1.5;
d = 0; #1.5;
d = 1; #1;
d = 0; #0.5;
d = 1; #1;
d = 0; #1.5;
d = 1; #1;
d = 0; #1.5;  
d = 1; #1.5;
d= 0; #0.5;
end
always
begin
clk =0; #5;
clk =1; #5;
end

   // Instantiate the module
  part4 dut(
    .Clk(clk),
    .D(d),
    .Qd(qd),
    .Qp(qp),
    .Qn(qn)
  );
  
   initial begin 
      $dumpfile("dump.vcd");
      $dumpvars(0);
      #25;
      $finish();
    end

endmodule