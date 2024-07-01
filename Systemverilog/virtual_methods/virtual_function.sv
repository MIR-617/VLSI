class parent_trans;
  bit[31:0]a;
  int b;
  function new();
    a=4'b1111;
    b=30;
  endfunction
 virtual function void display();
    $display("the value of a=%b and b=%d",a,b);
  endfunction
endclass
  class child_trans extends parent_trans;
    bit[8:0]c;
    int d;
    function new();
      c=4'b1011;
      d=28;
    endfunction
    function void display();
      $display("child: the value of a=%b and d=%d",c,d);
    endfunction
  endclass
module tb;
  parent_trans pa;
  child_trans ch;
  initial begin
  ch=new();
    pa=ch;
  pa.display();
  ch.display();
  end
endmodule
      
    
