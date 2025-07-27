// Code your testbench here
module tb_jk_flipflop;

reg clk, reset, j, k;
wire q;

jk_flipflop uut (.clk(clk),.reset(reset),.j(j),.k(k),.q(q));

always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t | clk=%b reset=%b j=%b k=%b => q=%b", $time, clk, reset, j, k, q);
end

initial begin
    clk = 0;
    reset = 1; j = 0; k = 0;

    #12 reset = 0;

    #10 j = 0; k = 0; // No change
    #10 j = 1; k = 0; // Set
    #10 j = 0; k = 1; // Reset
    #10 j = 1; k = 1; // Toggle
    #10 j = 1; k = 1; // Toggle
    #10 j = 0; k = 0; // Hold

    #20 $finish;
end

endmodule


