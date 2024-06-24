module tb;
  byte a;
  initial begin
    $display("default value for byte = %b",a);
    a=8'b00101001;
    $display("The value for byte = %b",a);
    $display("The value of byte in decimlas = %d",a);
  end
endmodule
