module multiplier(
input [19:0]a,
input[19:0]b,
output reg[39:0] prod);

always@(*)begin
prod<=$signed(a)*$signed(b);


end

endmodule
