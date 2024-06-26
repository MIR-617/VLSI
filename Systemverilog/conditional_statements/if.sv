module tb;
  bit [4:0]a;
  initial begin
    a=10;
    if(a==10)
      begin
        $display("a is equal to 10");
      end
    $display("out of if box");
  end
endmodule
    
