module tb_d_flip_flop;

reg clk;
reg reset;
reg d;
wire q;

// Instantiate the D Flip-Flop
d_flip_flop uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

// Clock generation: 10ns period
always #5 clk = ~clk;

initial begin
    // Monitor signal values
    $monitor("Time=%0t | clk=%b reset=%b d=%b q=%b", $time, clk, reset, d, q);
end

initial begin
    // Initialize inputs
    clk = 0;
    reset = 0;
    d = 0;

    // Apply reset
    #2 reset = 1;
    #8 reset = 0;

    // Apply some test patterns
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;

    // Finish simulation
    #20 $finish;
end

initial begin
    $dumpfile("d_flip_flop.vcd");
    $dumpvars(0, tb_d_flip_flop);
end

endmodule
