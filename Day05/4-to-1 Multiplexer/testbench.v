`timescale 1ns / 1ps

module mux4to1_tb;

    reg [3:0] d;
    reg [1:0] s;

    wire y;


    mux4to1 uut (
        .d(d),
        .s(s),
        .y(y)
    );

    initial begin
        d = 4'b0000;
        s = 2'b00;

        // Apply test cases
        #10 d = 4'b1010; s = 2'b00; 
        #10 s = 2'b01;              
        #10 s = 2'b10;              
        #10 s = 2'b11;              

        #10 d = 4'b1101; s = 2'b00; 
        #10 s = 2'b01;              
        #10 s = 2'b10;              
        #10 s = 2'b11;              

        #10 $finish;
    end

    initial begin
        $monitor("Time=%0d : d=%b s=%b -> y=%b", $time, d, s, y);
    end

endmodule
