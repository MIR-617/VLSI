// Code for full_subractor_tb
module full_subractor_tb;
  reg a,b,c;
  wire diff,borrow;
  full_subractor fs(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
initial begin    //input values
    a=0;b=0;c=0;
    #10
    a=0;b=0;c=1;
    #10
    a=0;b=1;c=0;
    #10
    a=0;b=1;c=1;
    #10
    a=1;b=0;c=0;
    #10
    a=1;b=0;c=1;
    #10
    a=1;b=1;c=0;
    #10
    a=1;b=1;c=1;
    #10
    $finish();
  end
initial begin    //monitor and dump instructions
  $monitor("%t a=%d b=%d c=%d diff=%d borrow=%d",$time ,a,b,c,diff,borrow);
  $dumpfile("full_subractor.vcd");
  $dumpvars(1,full_subractor_tb);
end
endmodule
