module encoder8to3 (
    input [7:0] din,
    output reg [2:0] dout
);

always @(*)
    begin
        if (din[7])
            dout = 'b111;
        else if (din[6])
            dout = 'b110;
        else if (din[5])
            dout = 'b101;
        else if (din[4])
            dout = 'b100;
        else if (din[3])
            dout = 'b011;
        else if (din[2])
            dout = 'b010;
        else if (din[1])
            dout = 'b001;
        else if (din[0])
            dout = 'b000;
        else
            dout = 'b000;
end

endmodule