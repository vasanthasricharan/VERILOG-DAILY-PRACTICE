// Code your testbench here
// or browse Examples
module tb_t_flip_flop;

    reg clk;
    reg rst;
    reg T;
    wire Q;

    // Instantiate the T Flip-Flop
    t_flip_flop uut (
        .clk(clk),
        .rst(rst),
        .T(T),
        .Q(Q)
    );

    // Generate Clock: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;
        T = 0;

        // Apply Reset
        #10 rst = 0;

        // Test toggling
        #10 T = 1;  // Toggle at rising edge
        #20 T = 1;
        #20 T = 0;  // No toggle
        #20 T = 1;
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | T=%b | Q=%b", $time, T, Q);
    end
  initial
    begin
      $dumpfile("T_flipflop.vcd");
      $dumpvars(0,tb_t_flip_flop);
    end

endmodule