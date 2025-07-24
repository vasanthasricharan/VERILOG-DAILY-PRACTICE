// Code your testbench here
// or browse Examples
module tb_comparator_4bit;

reg [3:0] A, B;
wire gt, lt, eq;

comparator_4bit uut(.A(A), .B(B), .gt(gt), .lt(lt), .eq(eq));

initial begin
    $monitor("A=%b B=%b | gt=%b lt=%b eq=%b", A, B, gt, lt, eq);

    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0101; B = 4'b0011; #10;
    A = 4'b1010; B = 4'b1111; #10;
    A = 4'b1111; B = 4'b0111; #10;
    A = 4'b1001; B = 4'b1001; #10;

    $finish;
end

  initial
    begin
      $dumpfile("comparator_4bit.vcd");
      $dumpvars(0, tb_comparator_4bit);
    end
endmodule
