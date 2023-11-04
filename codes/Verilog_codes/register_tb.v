`timescale 1ns/1ps
module tb();

 reg w_en,clk;
 reg [1:0]w_adr;
 reg [1:0] r_adr;
 reg [7:0] w_data;
 reg r_en;
 wire [7:0] r_data;
 register uut(.clk(clk),.w_en(w_en), .w_adr(w_adr), .r_en(r_en),
 .r_adr(r_adr),
 .w_data(w_data),
 .r_data(r_data));
 initial clk=0;
 always #20 clk=~clk;
 initial begin 
 r_en = 0;
 r_adr=0;
 w_en=1;
 w_adr=2'b0;
 w_data=8'b10001110;
 #20
 w_en=1;
 w_adr=2'b01;
 w_data=8'b10000110;
 #20
 w_en=1;
 w_adr=2'b10;
 w_data=8'b10001100;
 #20
 w_en=1;
 w_adr=2'b11;
 w_data=8'b10111110;
 #20
 r_en = 1;
 r_adr=2'b10;
 #20
 r_en = 1;
 r_adr=2'b11;
 
 end 
 endmodule
 