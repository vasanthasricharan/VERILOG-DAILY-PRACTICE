// Code your design here
//behavioral modeling
module comparator_2bit(
    input [1:0] A, B,
    output reg gt, lt, eq
);

always @(*) begin
    if (A > B) begin
        gt = 1; lt = 0; eq = 0;
    end
    else if (A < B) begin
        gt = 0; lt = 1; eq = 0;
    end
    else begin
        gt = 0; lt = 0; eq = 1;
    end
end

endmodule
