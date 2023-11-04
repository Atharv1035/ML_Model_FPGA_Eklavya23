module division(
		input[3:0] A,
		input [3:0] B,
		input clk,
		output  [3:0] quo,
		output  [3:0] rem
		);
		
	reg [3:0] acc;
	reg [3:0] temp_a;
	reg [3:0] temp_b;
	reg state1;
	reg [1:0] state=2'b0;
	reg [3:0] temp_q;
	reg [3:0] temp_r;
		 
	parameter idle=2'b0,x=2'b01,y=2'b10;

	always @(posedge clk) begin
		temp_a<=A;
		temp_b<=B;
		case (state)
			idle : begin
					acc<=4'b0001;
					temp_q=4'b0;
					temp_r=4'b0;
					state<=x;
					end
			x : begin
				$display(" Inside state x");
				if(acc >= temp_b) begin
					acc<=acc-temp_b;
					temp_q=temp_q<<1;
					temp_q[0]=1;
					state<=y;
					$display(" Inside if condition ");
				end
				else begin 
					acc<=acc<<1;
					acc[0]<=temp_a[3];
					temp_a<=temp_a<<1;
					state<=x;
					$display(" Acc : %b ",acc);
					$display(" Inside else condition");
				end	
			
			end
			y : begin
				$display(" Inside state y ");
				$display(" Temp_a is : %b",temp_a);
				acc<=acc<<1;
				acc<=temp_a[3];
				temp_a<=temp_a<<1;	
				if(acc>=temp_b) begin
						acc<=acc-temp_b;
						temp_q=temp_q<<1;
						temp_q[0]=1;
						temp_r=acc;
						state<=x;
				end
				if(temp_a<=4'b0) begin
						temp_q<=acc;
						state<=idle;
						$finish;
				end
				end
		endcase
	end
	assign quo=temp_q;
	assign rem=temp_r;
endmodule 