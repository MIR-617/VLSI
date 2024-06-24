module tb;
  time a;
  initial begin
    $display("Before inialization of time",a);
    #5
    a=$time;
    $display("After inialization of time = %t",a);
  end
endmodule
