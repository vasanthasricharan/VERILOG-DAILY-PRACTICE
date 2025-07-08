module tb;
  	reg a,b;
  	wire and_out, or_out, xor_out, nand_out, nor_out, xnor_out, not_out;
  
  	logic_gates u1(.and_out(and_out),.or_out(or_out),.xor_out(nand_out),.nand_out(xnor_out),.nor_out(nor_out),.xnor_out(xor_out),.not_out(not_out));
  
 	 initial
   		 begin
     		a=0; b=0; #10;
     		a=0; b=1; #10;
     		a=1; b=0; #10;
      		a=1; b=1; #10;
   		 end
 	 initial
  		  begin
      $monitor("a=%b, b=%b, and=%b,or=%b,xor=%b,nand=%b,nor=%b,xnor=%b,not=%b",a,b,and_out,or_out,xor_out,nand_out,nor_out,xnor_out,not_out);
    end
endmodule