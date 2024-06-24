module tb;
  integer a;
  initial begin
    $display("The default value",a);
    a=32;
    $display("The value of integer = %d",a);
  end
endmodule
