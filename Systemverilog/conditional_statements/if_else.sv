module tb;
  bit [4:0]a;
  bit [4:0]b;
  initial begin
    a=10;
    b=15;
    if(a<b)
      begin
        $display("a is less than b");
      end
    else 
      begin
        $display("a is greater than b");
      end
        
    $display("out of if box");
  end
endmodule
    
