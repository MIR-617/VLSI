class shallow_copy;
  int a;
  string s;
  
  function new();
    a=29;
    s="MIRUTHULA";
  endfunction
  
  function void display();
    $display("The value of a=%d and string=%s",a,s);
  endfunction
endclass
  
  module tb;
    shallow_copy sc1;
    shallow_copy sc2;
    
    initial begin
      sc1=new();
      $display("The contents of sc1");
      sc1.display();
      sc2=new sc1;
      $display("The contents of sc2");
      sc2.display();
      sc1.a=12;
      sc1.s="MACKLIN";
      $display("The contents of sc1");
      sc1.display();
      $display("The contents of sc2");
      sc2.display();
    end
  endmodule
