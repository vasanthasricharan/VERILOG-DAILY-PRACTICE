module tb_encoder8to3;

  reg [7:0] din;
  wire [2:0] dout;

encoder8to3 u1(.din(din),.dout(dout));

initial
  begin
    $display("Time\t din\t 	dout");
    $monitor("%0t\t %b\t %b", $time, din, dout);

    din = 8'b00000001;#10;
    din = 8'b00000010;#10;
    din = 8'b00000100;#10;
    din = 8'b00001000;#10;
    din = 8'b00010000;#10;
    din = 8'b00100000;#10;
    din = 8'b01000000;#10;
    din = 8'b10000000;#10;
    din = 8'b00000000;#10;
    $finish;
end
  initial
    begin
      $dumpfile("encoder8to3.vcd");
      $dumpvars(0, tb_encoder8to3);
    end
endmodule