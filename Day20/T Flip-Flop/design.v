// Code your design here
module t_flip_flop (
    input wire clk,
    input wire rst,  // active-high synchronous reset
    input wire T,
    output reg Q
);

    always @(posedge clk) begin
        if (rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;  // Toggle output
        else
            Q <= Q;   // Hold value
    end

endmodule