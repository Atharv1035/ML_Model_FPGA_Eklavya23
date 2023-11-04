module division_tb;
		reg clk;
		reg [3:0] A;
		reg [3:0] B;
		wire [3:0] quo;
		wire [3:0] rem;
		division uut(.clk(clk),.A(A),.B(B),.quo(quo),.rem(rem));
		initial clk=0;
		always #10 clk = ~clk;
		
		initial begin
			  A<=4'b1101;
			  B<=4'b0010;
			$display(" Output : %b ",quo);
		end
		
endmodule 
