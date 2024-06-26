module tb;
  function int sum(input int a,b);
    sum=a+b;
  endfunction
  initial begin
    $display("the sum is",sum(4,5));
  end
endmodule
