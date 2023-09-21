
module all_gates(input a, b, 
                 output reg AND, OR, XOR, NAND,NOR);

  always @(*)
    begin
      AND = a & b;    // AND
      OR = a | b;    // OR
      XOR = a ^ b;    // XOR
      NAND = ~(a & b); // NAND
      NOR = ~(a | b); // NOR
    end

endmodule
