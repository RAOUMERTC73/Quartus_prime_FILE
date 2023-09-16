module seq_detector(w, clk, z);

  input w;
  input clk;
  output z;
  
  reg q1, q2, q3, q4, q5, q6, q7, q8;
  reg [7:0] state;
  
  always @(posedge clk) begin
    case(state)
      8'b0000_0000 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q1 <= 1'b0;
        end else begin
          state <= 8'b0000_0001;
          q1 <= 1'b0;
        end
      end
      8'b0000_0001 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q2 <= 1'b0;
        end else begin
          state <= 8'b0000_0011;
          q2 <= 1'b0;
        end
      end
      8'b0000_0011 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q3 <= 1'b0;
        end else begin
          state <= 8'b0000_0111;
          q3 <= 1'b0;
        end
      end
      8'b0000_0111 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q4 <= 1'b0;
        end else begin
          state <= 8'b0000_1111;
          q4 <= 1'b0;
        end
      end
      8'b0000_1111 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q5 <= 1'b0;
        end else begin
          state <= 8'b0001_1111;
          q5 <= 1'b0;
        end
      end
      8'b0001_1111 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q6 <= 1'b0;
        end else begin
          state <= 8'b0011_1111;
          q6 <= 1'b0;
        end
      end
     8'b0011_1111 : begin
        if(w) begin
          state <= 8'b0000_0000;
          q7 <= 1'b0;
        end else begin
          state <= 8'b0111_1110;
          q7 <= 1'b1;
        end
      end
		8'b0111_1110 : begin
        if(w) begin
          state <= 8'b0000_0001;
          q8 <= 1'b0;
			 end else begin
          state <= 8'b0000_0000;
          q8 <= 1'b0;
			 end
		end
    endcase
  end
  
  assign z = q8 & q7 & q6 & q5 & q4 & q3 & q2 & q1;
endmodule 


