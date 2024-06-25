module tb;
  union{
    byte a;
    longint b;
  }abc;
  initial begin
    abc.a='h08;
    $display("the value of x=%p",abc.a);
    abc.b=4576;
    $display("the value of x=%p",abc.a);
    $display("the value of y=%p",abc.b);
    $display("the value of abc=%p",abc);
  end
endmodule
    
    
