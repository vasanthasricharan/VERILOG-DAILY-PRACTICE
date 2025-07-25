// Code your design here
// SR Latch Design using NOR gates
module sr_latch (
    input S, R,
    output Q, Qbar
);

    nor (Q, R, Qbar);  // Q = ~(R + Qbar)
    nor (Qbar, S, Q);  // Qbar = ~(S + Q)

endmodule
