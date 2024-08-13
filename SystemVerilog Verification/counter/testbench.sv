`include "countertest.sv"
`include "interface.sv"

module counter;
  countertest test;
  mailbox mail;
  operation intf();
  upcounter inst (
    .clk(intf.clk),
    .reset(intf.reset),
    .out(intf.out));
  
  initial begin
    mail=new();
    test=new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
    initial begin
      intf.clk=1'b0;
      forever #1 intf.clk=~intf.clk;
    end
    
    initial begin
      #1
      intf.reset=1'b1;
      #1
      intf.reset=1'b0;
      #1
      $monitor("clk=%0d reset=%0d out=%0d",intf.clk, intf.reset,intf.out);
      #50
      $finish;
    end
endmodule
