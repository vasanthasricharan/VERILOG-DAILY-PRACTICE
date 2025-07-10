module tb_ripple_carry_adder_4bit;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_carry_adder_4bit uut (.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));

    initial
      begin
        $dumpfile("ripple_carry_adder_4bit.vcd");
        $dumpvars(0, tb_ripple_carry_adder_4bit);

        $monitor("Time=%0t A=%b B=%b Cin=%b | Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        A = 4'b1001; B = 4'b0110; Cin = 1; #10;
        $finish;
    end
endmodule
