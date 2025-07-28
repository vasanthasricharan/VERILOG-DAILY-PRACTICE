// Code your design here
// d_flip_flop.v
module d_flip_flop (
    input wire clk,
    input wire reset,   // asynchronous active-high reset
    input wire d,
    output reg q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end

endmodule
