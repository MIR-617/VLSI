`include "interface.sv"
module tb();
  and_if inf();
  and_g a1(.a(inf.a),.b(inf.b),.y(inf.y));
 
  initial begin
    $monitor("a=%b b=%b y=%b",inf.a,inf.b,inf.y);
    inf.a=0;inf.b=0;
    #1;
    inf.a=0;inf.b=1;
    #1;
    inf.a=1;inf.b=0;
    #1;
    inf.a=1;inf.b=1;
    
  end
endmodule
