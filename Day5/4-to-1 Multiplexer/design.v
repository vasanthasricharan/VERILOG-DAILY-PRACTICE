module mux4to1 (
    input [3:0] d,
    input [1:0] s,
    output y
);

assign y = (s == 2'b00) ? d[0] :
           (s == 2'b01) ? d[1] :
           (s == 2'b10) ? d[2] :
                          d[3];

endmodule