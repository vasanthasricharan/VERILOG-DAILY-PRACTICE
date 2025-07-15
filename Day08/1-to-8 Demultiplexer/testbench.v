module tb_demux_1to8;

reg din;
reg [2:0] sel;
wire [7:0] dout;

demux_1to8 u1(.din(din),.sel(sel),.dout(dout));

initial begin
    $monitor("Time=%0t | din=%b sel=%b -> dout=%b", $time, din, sel, dout);

    din = 0;
    for (integer i = 0; i < 8; i = i + 1) begin
        sel = i;
        #10;
    end
    din = 1;
    for (integer i = 0; i < 8; i = i + 1) begin
        sel = i;
        #10;
    end

    $finish;
end
  initial
    begin
      $dumpfile("demux_1to8.vcd");
      $dumpvars(0, tb_demux_1to8);
    end
endmodule