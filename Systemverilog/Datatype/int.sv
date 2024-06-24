module tb;
  int a;
  initial begin
    $display("the default value = %b",a);
    a=32'b01100001100110100110000110011010
    ;
    $display("The value of a=%b",a);
    
    $display("The value of a in decimals =%d",a);
  end
endmodule
