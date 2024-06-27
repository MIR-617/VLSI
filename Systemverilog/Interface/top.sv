`include "testbench.sv"

 module top;
   and_if inf();
   and_g a1(.a(inf.a),.b(inf.b),.y(inf.y));
   tb a2(inf);
 endmodule
