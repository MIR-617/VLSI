module function_tb;
  integer  a;
  task sum(input int x,y);
    begin
      a=x+y;
    end
  endtask
  initial begin
    //$display("sum",(9,7,a));
    sum(9,7);
    $display("a=%d",a);
  end
endmodule
    
