class stack;
  int a;
  bit [7:0]b;
  
function new();
    a=29;
    b=8'b11111101;
  endfunction
  
  function void display();
    $display(" the value a=%d and b=%b",a,b);
  endfunction
  endclass
  
  module tb;
    stack st1;
    stack st2;
    initial begin
      st1=new();
      st2=new();
      st1.display();
      st1=st2;
      st2.display();
      st1.a=23;
      st2.b=4'b1111;
      st2.display();
      st1.display();
    end
  endmodule
      
