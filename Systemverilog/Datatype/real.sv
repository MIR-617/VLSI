module tb;
  real a;
  initial begin
    $display("The default value",a);
    a=32.43;
    $display("The value of integer = %f",a);
  end
endmodule
