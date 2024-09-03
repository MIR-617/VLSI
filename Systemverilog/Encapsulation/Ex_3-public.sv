class parent;
  bit[5:0] c;
  int d=5;
  bit[2:0] var1,var2;
  
  function int sum(var1,var2);
    c=var1 + var2;
  endfunction
  
  function void display();
    $display("The value of sum=%b",c);
    $display("The value of d=%0d",d);
  endfunction
  
endclass

 class child1 extends parent;
  
  function void display();
    $display("The value of d=%0d",d);
  endfunction
endclass
  
  module tb;
    parent p;
    child1 c;
    initial begin
      p =new();
      p.sum(1100,0001);
      p.display();
      c=new();
      c.display();
    end
  endmodule