module tb;
  int result;
  function int sum(int a,b);
    begin
    sum=a+b;
    end
  endfunction
  initial begin
    result=sum(2,3);
    $display("The result value",result);
  end
endmodule
