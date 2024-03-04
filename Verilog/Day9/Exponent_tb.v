module exponent_tb;
  reg [7:0] A,B;
  wire [32:0]C;
  exponent exp(.A(A),.B(B),.C(C));
initial begin
  A=9;B=4;
  #10
  A=3;B=3;
  #10
  A=5;B=6;
  #10
  $finish();
end
initial begin
  $monitor("%t A=%d B=%d C=%d",$time,A,B,C);
  $dumpfile("exponent.vcd");
  $dumpvars(1,exponent_tb);
end
endmodule
  
