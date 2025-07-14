`timescale 1ns/1ps

module tb_demux_1to4;

reg din;
reg [1:0] sel;
wire [3:0] dout;

demux_1to4 u1(.din(din),.sel(sel),.dout(dout));

initial begin
    $display("Time\tdin\tsel\tdout");
    $monitor("%0t\t%b\t%b\t%b", $time, din, sel, dout);

    // Test case 1
    din = 1'b1;
    sel = 2'b00;
    #10;

    // Test case 2
    sel = 2'b01;
    #10;

    // Test case 3
    sel = 2'b10;
    #10;

    // Test case 4
    sel = 2'b11;
    #10;

    // Test din = 0
    din = 1'b0;
    sel = 2'b00;
    #10;

    sel = 2'b01;
    #10;

    sel = 2'b10;
    #10;

    sel = 2'b11;
    #10;

    $finish;
end
  initial
    begin
      $dumpfile("demux_1to4.vcd");
      $dumpvars(0, tb_demux_1to4);
    end

endmodule

