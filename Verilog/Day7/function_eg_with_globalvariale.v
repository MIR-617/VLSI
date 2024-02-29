module function_tb;
  integer  a;
  function sum(input int x,y);
    begin
      a=x+y;
    end
  endfunction
  initial begin
    sum(9,7);
    $display("a=%d",a);
  end
endmodule
    
