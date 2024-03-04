module swap_without_tempravory_variable;
  int x=5,y=4;
  initial begin
     x = x + y; 
     y = x - y;
     x = x - y;
    $display("the values of  x=%d y=%d",x,y);
  end
  
endmodule
