module test_or_gate;

reg a,b;
wire y;

or_gate u1(.a(a),.b(b),.y(y));

initial
    begin
    $display("A B | Y");
    $display("------");
    a = 0; b = 0; #10 $display("%b %b | %b", a, b, y);
    a = 0; b = 1; #10 $display("%b %b | %b", a, b, y);
    a = 1; b = 0; #10 $display("%b %b | %b", a, b, y);
    a = 1; b = 1; #10 $display("%b %b | %b", a, b, y);
    $stop;
    end
endmodule