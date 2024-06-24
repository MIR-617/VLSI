module tb;
  shortint a;
  initial begin
    $display("the default value = %b",a);
    a=16'b1110000110011010;
    $display("The value of a=%b",a);
    a=3242;
    $display("The value of a=%d",a);
  end
endmodule
