class parameterized_ex #(parameter a,b);
  bit [a-1:0]x;
  bit [b-1:0]y;
  
  function new();
    x=10;
    y=15;
  endfunction
  
  function void display();
    $display("the value of x=%d and y=%d",x,y);
   endfunction
endclass

module tb;
  parameterized_ex #(2,3)par;
  initial begin
    par=new();
    par.display();
  end
endmodule
    
  
    
