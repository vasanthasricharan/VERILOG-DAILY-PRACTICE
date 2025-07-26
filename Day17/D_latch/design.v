// Code your design here
// Behavioral Level Code
module D_latch(E,D,Q,Qbar);
  input E,D;
  output reg Q,Qbar;
  
  always @(*) begin
    if (E) begin
      Q=D;
      Qbar=~D;
    end
  end
endmodule