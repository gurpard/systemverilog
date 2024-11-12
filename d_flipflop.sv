module d_flipflop(input logic clk, d,
                  output logic q);
  always_ff@(posedge clk)
    begin
      q <= d;
    end
endmodule 
