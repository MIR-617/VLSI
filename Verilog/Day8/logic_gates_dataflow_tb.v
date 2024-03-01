module logic_gate_tb;
  reg a,b;
  wire c,d,e,f,g,h,i;
  logic_gate uut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i));
  initial begin
    a=0;b=0;
    #10
    a=0;b=1;
    #10
    a=1;b=0;
    #10
    a=1;b=1;
    #10
    $finish();
  end
  initial begin
    $monitor("%t a=%d b=%d c=%d d=%d e=%d f=%d g=%d h=%d i=%d",$time,a,b,c,d,e,f,g,h,i);
    $dumpfile("logic_gate.vcd");
    $dumpvars(1,logic_gate_tb);
  end
endmodule
