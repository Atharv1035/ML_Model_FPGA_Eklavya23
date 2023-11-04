`timescale 1ns/1ps 
 module simple_tb();
reg[19:0]pixel1;
reg[19:0]pixel2;  
reg[19:0]weight1;
reg[19:0]weight2;
reg[19:0]bias;
wire [39:0] product1;
wire [39:0] product2;
wire [39:0]activation;
wire[39:0] total;
simple uut(
.product1(product1),
.product2(product2),
    .pixel1(pixel1),
	 .pixel2(pixel2),
.weight1(weight1),
.weight2(weight2),
.bias(bias),
.activation(activation),
.total(total)
);
initial begin 
pixel1= -20'b0000000100_0000000000;//20'b01_001101000101011001; //1.204442292254319
#20
pixel2=-20'b1_01111011011011111001;//-1.4821709003683443
#20
weight1= 20'b0000000100_0000000000;//-20'b00_011010001000100011; // 0.40833709
#20
weight2=20'b00_001100111101010110;//0.20247789
#20
bias=20'b1_00111110010100001011; //1.24341861
#20
$display(" Output : %b",activation);
$display(" Output : %b",product1);
$display(" Output : %b",product2);


end 
endmodule 