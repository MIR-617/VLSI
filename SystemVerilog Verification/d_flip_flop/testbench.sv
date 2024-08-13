`include "dflipfloptest.sv"
`include "interface.sv"


module dflip_flop_test;
  dflipflop test;
  mailbox mail;
  operation intf();
  D_flipflop inst (
                            .clk(intf.clk),
                            .rst_n(rst_n),
                            .d(intf.d),
                            .q(intf.q),
                            .qb(intf.qb));
 
     
     initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
  
      
    join
  end
  
  initial begin 
    intf.clk=1'b0;
    forever#1 intf.clk=~intf.clk;
  end
  
  initial begin 
    #1
    intf.rst_n=1'b1;
    #1
    intf.rst_n=1'b0;
    #1
   
    $monitor("clk=%d rst_n=%d d=%d q=%d ",clk,rst_n,d,q );
    #500
    $finish;

endmodule
