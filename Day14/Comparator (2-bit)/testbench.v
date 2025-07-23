// Code your testbench here
// or browse Examples
module tb_comparator_2bit;

reg [1:0] A, B;
wire gt, lt, eq;

comparator_2bit uut(.A(A), .B(B), .gt(gt), .lt(lt), .eq(eq));

initial begin
    $monitor("A=%b B=%b | gt=%b lt=%b eq=%b", A, B, gt, lt, eq);

    A = 2'b00; B = 2'b00; #10;
    A = 2'b01; B = 2'b00; #10;
    A = 2'b10; B = 2'b11; #10;
    A = 2'b11; B = 2'b01; #10;
    A = 2'b10; B = 2'b10; #10;

    $finish;
end
  initial
    begin
      $dumpfile("comparator_2bit.vcd");
      $dumpvars(0, tb_comparator_2bit);
    end

endmodule
