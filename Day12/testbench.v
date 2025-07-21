// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module tb_decoder3to8;

reg [2:0] in;     // input to decoder
reg en;           // enable input
wire [7:0] out;   // output from decoder

// Instantiate the decoder
decoder3to8 uut (
    .in(in),
    .en(en),
    .out(out)
);

initial begin
    // Monitor the signals
    $monitor("Time=%0d ns, Enable=%b, Input=%b, Output=%b", $time, en, in, out);

    // Test all input combinations with enable high
    en = 1;
    in = 3'b000; #10;
    in = 3'b001; #10;
    in = 3'b010; #10;
    in = 3'b011; #10;
    in = 3'b100; #10;
    in = 3'b101; #10;
    in = 3'b110; #10;
    in = 3'b111; #10;

    // Test with enable low
    en = 0;
    in = 3'b101; #10;
    in = 3'b010; #10;

    // Finish simulation
    $finish;
end
  initial
    begin
      $dumpfile("decoder3to8.vcd");
      $dumpvars(0, tb_decoder3to8);
    end
endmodule
