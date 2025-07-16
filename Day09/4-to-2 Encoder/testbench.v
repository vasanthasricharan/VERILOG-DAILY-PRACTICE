module encoder4to2_tb;

reg [3:0] din;
wire [1:0] dout;

encoder4to2 u1(.din(din),.dout(dout));

initial begin
    $display("din   dout");
    din = 4'b0001; #10;
    $display("%b 	%b", din, dout);

    din = 4'b0010; #10;
    $display("%b 	%b", din, dout);

    din = 4'b0100; #10;
    $display("%b 	%b", din, dout);

    din = 4'b1000; #10;
    $display("%b 	%b", din, dout);

    din = 4'b0000; #10;
    $display("%b 	%b", din, dout);

    din = 4'b1100; #10;
    $display("%b 	%b", din, dout);

    $finish;
end
  initial
    begin
      $dumpfile("encoder4to2.vcd");
      $dumpvars(0, encoder4to2_tb);
    end
endmodule
