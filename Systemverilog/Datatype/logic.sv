module tb;
  logic[3:0] a;
  initial begin
    $display("default value of logic",a);
    a=4'b0001;
    $display("The value of logic = %b",a);
  end
endmodule
