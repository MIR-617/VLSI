class branches;
  int a;
  string s;
  
  function new();
    a=19;
    s="MANJU";
  endfunction
  
  function void display();
    $display("the value of a=%d and s=%s",a,s);
  endfunction
  
  function  deep_copy;
    this.a=a;
    this.s=s;
  endfunction
endclass

  module tb;
    branches br1;
    branches br2;
    
    initial begin
      br1=new();
      br2=new();
      $display("The contents of br1");
      br1.display();
      $display("The contents of br2");
      br2.display();
      br1.a=11;
      br2.s="KAVIN";
      $display("The contents of br1");
      br1.display();
      $display("The contents of br2");
      br2.display();
    end
  endmodule
      
      
