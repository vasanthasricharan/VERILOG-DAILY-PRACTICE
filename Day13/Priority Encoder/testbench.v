// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_priority_encoder_8to3;

reg [7:0] din;
wire [2:0] dout;
wire valid;

priority_encoder_8to3 uut (
    .din(din),
    .dout(dout),
    .valid(valid)
);

initial begin
    $monitor("din=%b dout=%b valid=%b", din, dout, valid);

    // Test all cases
    din = 8'b00000000; #10; // No input high
    din = 8'b00000001; #10; // Input 0 high
    din = 8'b00000010; #10; // Input 1 high
    din = 8'b00000100; #10; // Input 2 high
    din = 8'b00001000; #10; // Input 3 high
    din = 8'b00010000; #10; // Input 4 high
    din = 8'b00100000; #10; // Input 5 high
    din = 8'b01000000; #10; // Input 6 high
    din = 8'b10000000; #10; // Input 7 high

    // Multiple inputs high: test priority
    din = 8'b10101010; #10; // Highest input is bit 7 -> dout=111
    din = 8'b00101010; #10; // Highest input is bit 5 -> dout=101

    $finish;
end
  initial
    begin
      $dumpfile("priority_encoder_8to3.vcd");
      $dumpvars(0,tb_priority_encoder_8to3);
    end
endmodule
