1. WIRES : 
	- Unidirectional information transfer
	-  PORTS (I/O) : input(_driven_)  output (_drives_)
	-  ![[Wire.png]]
	-  CODE  ``` Verilog
```
module top_module( input in,output out);
wire wire_1 ;
    assign wire_1 = in ;
    assign out=wire_1 ;
endmodule 

```

2. 4 WIRES : 
	  - 3 Input ,4 Output
		  - a -> w
		  - b -> x
		  - b -> y
		  - d -> z
	 - ![[Wire4.png]]
	 - CODE ```Verilog
```module top_module( 
    input a,b,c,
    output w,x,y,z );
    wire wire_1,wire_2,wire_3,wire_4;
    assign wire_1=a;
    assign wire_2=b;
    assign wire_3=c;
    assign w=wire_1;
    assign x=wire_2;
    assign y=wire_2;
    assign z=wire_3;

endmodule
```

3.  INVERTER :  
	 -  NOT gate
	 -  Inverts the signal i.e. _HIGH TO LOW & LOW TO HIGH_
	 -  ![[Notgate.png]]
	 - CODE :  ```  Verilog
```
module top_module( input in, output out );
wire wire_1;
    assign wire_1 = !in;
    assign out=wire_1;
endmodule
```

4.  AND Gate :
	- Output is HIGH only when both inputs are HIGH
	- ![[Andgate.png]]
	- CODE : ```   Verilog
```
module top_module( 
    input a, 
    input b, 
    output out );
    wire wire_1;
    assign wire_1 = a & b;
    assign out=wire_1;

endmodule
```

5.  NOR Gate :
	 -  Output is HIGH only when all inputs are LOW
	 -  ![[Norgate.png]]
	 - CODE : ```    Verilog
```  
module top_module( 
    input a, 
    input b, 
    output out);
wire wire_1,wire_2;
    reg r;
    assign wire_1=a;
    assign wire_2 =b;
    assign r=a|b;
    assign out= !r;

endmodule

```

6.  XNOR Gate :
	-   Output is HIGH only when inputs are same (i.e. 0- 0 & 1-1 )
	- ![[Xnorgate.png]]
	-  CODE  : ```    Verilog
```
module top_module( 
    input a, 
    input b, 
    output out );
wire wire_1,wire_2;
    reg r1;
    assign wire_1= a;
    assign wire_2=b;
    assign r1=a^b;
    assign out=!r1;
endmodule
```

7.   Connecting Wires :
	 - Interconnecting wires are required in circuits containing multiple logic gates ( adders , flip-flops)
	 - ![[Wiredecl2.png]]
	 - CODE : ```    Verilog
```
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire not_a,not_b;
    assign not_a =a&b;
    assign not_b= c&d;
    assign out= not_a | not_b;
    assign out_n = !out;

endmodule 
```

8.  IC 7458 :
	-  4 AND gates and 2 OR  gates
	- 10 inputs 2 outputs
	-  4 intermediate wires
	- ![[7458.png]]
	- CODE : ```     Verilog
```
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire wire_1, wire_2, wire_3, wire_4 ;
assign wire_1 = (p1a) & (p1b) & (p1c);
assign wire_2 = p1d & p1e & p1f;
assign wire_3 = p2a & p2b;
assign wire_4 = p2c & p2d;
assign p1y = wire_1 | wire_2;
assign p2y = wire_3 | wire_4;

endmodule
```


