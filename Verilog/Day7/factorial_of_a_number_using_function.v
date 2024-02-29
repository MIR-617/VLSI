module function_tb();
  function automatic [7:0]factorial;
    input[7:0]i;
    begin
      if(i==1)
        factorial=1;
      else
        factorial=i*factorial(i-1);
    end
  endfunction
  initial begin
    $display("Factorial of 3 =%d",factorial(3));
  end
endmodule
    
