module tb;
  bit a;
  bit[3:0]b;
  initial begin
    $display("default value of single bit = %b",a);
    $display("default value of multiple bit = %b",b);
    a=1;
    b=4'b1001;
    $display("The value of single bit = %b",a);
    $display("The value of multiple bit = %b",b);
  end
endmodule
