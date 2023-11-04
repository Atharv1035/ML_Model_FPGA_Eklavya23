module adder (
input [19:0]x,
input[19:0]y,
output [39:0]sum);
reg [39:0] z;
always@(*)begin
z<=$signed(x)+$signed(y);
end
assign sum[39:0]=z[39:0];
endmodule
