module equality_operator;
  logic [15:0] l1,l2;
  initial begin
    l1='hff;l2='hf0;
    $display("l1 == l2 boolean %0d",l1==l2);
    $display("l1 == l2 boolean %0d",l1!=l2);
    $display("l1 == l2 boolean %0d",l1===l2);
    $display("l1 == l2 boolean %0d",l1!==l2);
    
    l1='hxf;l2='hxf;
    $display("l1 == l2 boolean %0d",l1==l2);
    $display("l1 == l2 boolean %0d",l1!=l2);
    $display("l1 == l2 boolean %0d",l1===l2);
    $display("l1 == l2 boolean %0d",l1!==l2);
  end
endmodule
