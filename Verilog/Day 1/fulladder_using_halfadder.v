// code for fulladder using halfadder
module fulladder(
  input A,B,Cin,
  output sum,carry
);
  wire X,Y,Z;
  halfadder ha1(.A(A),.B(B),.sum(X),.carry(Y));
  halfadder ha2(.A(X),.B(Cin),.sum(sum),.carry(Z));
  or (carry,Y,Z);
endmodule
module halfadder(
  input A,B,
  output sum,carry);
  xor(sum,A,B);
  and(carry,A,B);
endmodule
