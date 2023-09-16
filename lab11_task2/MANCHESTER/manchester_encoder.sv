module manchester_encoder(clk, w, z );
input clk;
input w;
output z;
reg s1,s2,s3;
reg [2:0] state;
  always @(posedge clk) begin
    case(state)
	 3'b000 : begin
	 if(w) begin
	 state <= 3'b000;
	 s1 <= 1'b0;
	 end else begin
	 state <= 3'b001;
	 s1 <= 1'b1;
	 end
	 end
	 3'b001: begin
	 if(w) begin
	 state <=3'b000;
	 s2 <= 1'b0;
	 end else begin 
	 state <= 3'b010;
	 s2 <= 1'b1;
	 end 
	 end
	 3'b010: begin
	 if(w) begin
	 state <=3'b010;
	 s3 <= 1'b1;
	 end else begin 
	 state <=3'b001;
	 s3 <= 1'b0;
	 end 
	 end 
	 endcase
	 end
	 assign z = s3 & s2 & s1 ;
	 endmodule



