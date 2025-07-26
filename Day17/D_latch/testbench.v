// Code your testbench here
// or browse Examples
module tb;
  reg E,D;
  wire Q,Qbar;
  
  D_latch u1(.E(E),.D(D),.Q(Q),.Qbar(Qbar));
  
  initial
    begin
    $monitor("E=%b D=%b Q=%b Qbar=%b", E, D, Q, Qbar);
    
    E = 0; D = 0; #10;   // Hold
    D = 1;       #10;    // Still hold
    E = 1;       #10;    // Q = D (1), Qbar = ~D (0)
    D = 0;       #10;    // Q = 0, Qbar = 1
    E = 0;       #10;    // Hold Q = 0
    D = 1;       #10;    // No change
    E = 1;       #10;    // Q = 1
    #10;
    $finish;
    end
  initial
    begin
      $dumpfile("D_latch.vcd");
      $dumpvars(0, tb);
    end
endmodule