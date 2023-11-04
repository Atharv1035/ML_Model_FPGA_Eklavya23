module relu(
	input [39:0] m,
	output  [39:0] acti
);

		assign acti=(m[39]==0)?m:0;
endmodule 