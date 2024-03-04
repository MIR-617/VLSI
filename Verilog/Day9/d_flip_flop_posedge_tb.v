module  d_flip_flop_posedge_tb;
  reg clk,d;
  wire q;
  flip_flop uut(.clk(clk),.d(d),.q(q));
  initial begin
    clk=0;
    #5
    d=0;
    #200
    $finish();
  end
  initial begin
    $monitor("clk=%d d=%d q=%d",clk,d,q);
    $dumpfile(" d_flip_flop_posedge.vcd");
    $dumpvars(1, d_flip_flop_posedge_tb);
  end
  
  always #5 clk=~clk;
  always #60 d=~d;
endmodule
