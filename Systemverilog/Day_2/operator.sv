module op;
  int a=3,b=1,c=2,d=4;
  initial begin
    a=b++;
    $display(a);
    $display(b);
    b=++a;
    $display(a);
    $display(b);
    c=d--;
    $display(d);
    $display(c);
    d=--c;
    $display(c);
    $display(d);
    a+=b;
    $display(b);
    c<<=c;
    $display(c);
    b>>=b;
    $display(b);
    c<<<=c;
    $display(c);
  end
endmodule
    
