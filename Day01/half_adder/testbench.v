module test_half_adder;
  
  reg a,b;
  wire s,c;
  
  half_adder u1(.a(a),.b(b),.s(s),.c(c));
  
  initial
    begin
      $display("A B | S C");
      $display("-------");
      a = 0; b = 0; #10 $display("%b %b | %b %b", a, b, s, c);
      a = 0; b = 1; #10 $display("%b %b | %b %b", a, b, s, c);
      a = 1; b = 0; #10 $display("%b %b | %b %b", a, b, s, c);
      a = 1; b = 1; #10 $display("%b %b | %b %b", a, b, s, c);
      $stop;
    end
    initial begin
  $dumpfile("dump.vcd"); // Name of VCD file
  $dumpvars(0, testbench); // Replace 'testbench' with your testbench module name
end
endmodule