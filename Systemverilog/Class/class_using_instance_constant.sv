class instance_const;
  bit[8:0]  a;
  int b;
  function new();
    a=4'b1111;
    b=23;
  endfunction
  
  function void display();
    $display("a = %b and b = %d",a,b);
  endfunction
endclass

module tb;
  instance_const in;
initial begin
  in=new();
  in.a=4'b1011;
  in.b=8;
  in.display();
end
endmodule
