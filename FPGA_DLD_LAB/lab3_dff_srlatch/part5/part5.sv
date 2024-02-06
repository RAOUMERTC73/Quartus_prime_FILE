module part5(SW,KEY,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,LEDR);
input [1:0] KEY;
input [8:0]SW;
output[6:0] HEX5,HEX4,HEX3,HEX2,HEX1,HEX0;
output [0:0] LEDR;

reg [7:0] A;
reg [7:0] B;

wire [7:0] S;
wire C0;
 
always@(posedge KEY[1] or posedge KEY[0])
begin
if (KEY[0] == 1'b1) begin
A[7:0] = 8'b0;
B[7:0] = 8'b0;
end
else begin
if(~SW[8])
begin
A = SW[7:0];
end
else
begin
B = SW[7:0];
end
end
end

adder_8bit A0(A[7:0],B[7:0],S,C0);

hex_ssd H1(A[7:4],HEX1);
hex_ssd H0(A[3:0],HEX0);
hex_ssd H3(B[7:4],HEX3);
hex_ssd H2(B[3:0],HEX2);
hex_ssd H5(S[7:4],HEX5);
hex_ssd H4(S[3:0],HEX4);

assign LEDR[0] = C0;

endmodule


