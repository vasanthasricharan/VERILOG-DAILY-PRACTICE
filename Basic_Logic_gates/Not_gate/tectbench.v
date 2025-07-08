module test_Not_gate;

reg a;
wire y;

Not_gate u1 (
    .a(a),
    .y(y)
);

initial begin
    $display("A | Y");
    $display("------");
    a = 0; #10 $display("%b | %b", a, y);
    a = 1; #10 $display("%b | %b", a, y);
    $stop;
end

endmodule