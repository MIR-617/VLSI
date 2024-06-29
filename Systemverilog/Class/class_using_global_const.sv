class global_const;
  bit [31:0] a;
  int b=4;
  
  function void display();
    $display("a = %b and b = %d",a,b);
  endfunction
endclass

module tb;
  global_const gb;
initial begin
  gb=new();
  gb.a=4'b1011;
//   gb.b=8;
  gb.display();
end
endmodule
  
  
