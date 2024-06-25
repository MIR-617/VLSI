typedef union packed{
    int a;
    int b;
}abc_u;
module tb;
   abc_u abc;
  initial begin
    abc.a='h08;
    $display("\nthe value of a=%h",abc.a);
    abc.b='h89;
    $display("\nthe value of a=%h",abc.a);
    $display("\nthe value of b=%h",abc.b);
    $display("\nthe value of abc=%h",abc);
  end
endmodule
