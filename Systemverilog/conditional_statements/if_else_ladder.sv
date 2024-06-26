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
    else if(a>b) 
      begin
        $display("a is greater than b");
      end
    else if(a==b) 
      begin
        $display("a is equal to b");
      end
       
  end
endmodule
    
