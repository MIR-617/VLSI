module D_flipflop (
  input clk, rst_n,
  input d,
  output reg q,qb
  );
  
  always@(posedge clk) 
    begin
    if(rst_n) 
      q <= 0;

    else 
      begin
      q <= d;
      qb <=~ d;
      end
  end
  
endmodule
