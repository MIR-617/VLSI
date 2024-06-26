module tb;
  int result;
  function int sum(input int a,b);
    sum=a+b;
  endfunction
  initial begin
    result=sum(.a(6),.b(7));
    $display("The result",result);
  end
endmodule
    
