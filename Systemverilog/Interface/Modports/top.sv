`include "interface.sv"
`include "test.sv"
module top();
     // interfce module called
     and_intr inf();
     // design module called
     and_gate a1(inf);
     // testbench module called   
     tb a2(inf);
endmodule : top
