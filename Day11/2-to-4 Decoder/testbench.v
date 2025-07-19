// Testbench for 2-to-4 Decoder
module tb_decoder_2to4;
    reg [1:0] in;
    reg en;
    wire [3:0] out;

    // Instantiate the decoder
    decoder_2to4 uut (
        .in(in),
        .en(en),
        .out(out)
    );

    initial begin
        $display("Time\t en in out");
        $monitor("%0t\t %b  %b  %b", $time, en, in, out);

        // Test all combinations with enable = 1
        en = 1;
        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        // Test with enable = 0
        en = 0;
        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end
endmodule
