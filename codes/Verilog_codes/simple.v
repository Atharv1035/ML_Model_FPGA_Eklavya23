module simple(
input[19:0]pixel1,
input[19:0]pixel2,     
input [19:0]weight1,
input [19:0]weight2,
input[19:0]bias,
output [39:0] product1,
output [39:0] product2,
output [39:0]activation,
output [39:0]total);


wire [31:0]sum;
//wire [31:0]product1;
//wire[31:0]product2;
//wire [31:0]total; 

multiplier product(
.a(pixel1),
.b(weight1),
.prod(product1));

multiplier prod2(
.a(pixel2),
.b(weight2),
.prod(product2));

adder add(
.x(product1),
.y(product2),
.sum(sum));

adder bias_add(
.x(sum),
.y(bias),
.sum(total));

relu hl1(
.m(total),
.acti(activation));

endmodule
