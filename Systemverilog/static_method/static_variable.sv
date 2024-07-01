class static_st;
  static bit[31:0]a;
  
  function new();
    a++;
  endfunction
  
  function void display();
    $display("the values are",a);
  endfunction
endclass

module tb;
  static_st st[6];
  initial begin
    foreach(st[i])begin
    st[i]=new();
    st[i].display();
    end
  end
