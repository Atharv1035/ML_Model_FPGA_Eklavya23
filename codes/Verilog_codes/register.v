 module register(//for  memory locations 
 input w_en,clk,
 input[1:0] w_adr,
 input [1:0] r_adr,
 input [7:0] w_data,
 output[7:0] r_data,
 input r_en
 );
 
	reg [7:0] reg_file [3:0];
	
 always@(posedge clk)begin
	if(w_en)begin
		reg_file[w_adr]<=w_data;
	end
 end
	assign r_data= r_en ? reg_file[r_adr] : 0;
 
endmodule
 