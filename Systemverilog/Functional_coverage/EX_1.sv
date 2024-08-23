module eg;
  bit [3:0]a;
  bit [1:0]b;
  covergroup cg;
    option.per_instance=1;
    a:coverpoint a;
    b:coverpoint b;
  endgroup
  initial begin
    cg c=new();
    repeat(10);
    {a,b}=$random();
    c.sample;
    $display("coverage=%f",c.get_coverage);
  end
  initial begin 
    #500
    $finish();
  end
endmodule
