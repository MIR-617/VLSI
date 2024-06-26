module tb;
  byte a;
  int b;
  initial begin
    $display("the size of a =%d",$size(a));
    $display("the size of b =%d",$size(b));
    unique if($size(a)<$size(b))
      begin
        $display("a is smaller than b");
      end
    else if($size(a)>$size(b))
      begin
        $display("a is greater than b");
      end
    $display("out of combinational block");
    
  end
endmodule
