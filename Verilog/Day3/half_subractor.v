// Code for half_subractor
module half_subractor(
  input x,y,
  output diff,b);
  wire a;
  not(a,y);
  xor(diff,x,y);
  and(b,a,y);
endmodule
