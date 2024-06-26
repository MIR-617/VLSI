module example_function;
  function  multi (input int x,y);
    begin
      multi=x*y;
    end
  endfunction
  initial begin
    $display("multi",multi(2,4));
  end
endmodule
