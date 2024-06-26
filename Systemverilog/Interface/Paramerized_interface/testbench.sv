`include "interface.sv"
module upcounter_testbench();
  count_if inf();
  up_counter u1(.clk(inf.clk), .reset(inf.reset), .counter(inf.counter));
initial begin 
$display("\n // Parameterised interface example");
//used to monitor the count values
$monitor("\ncount=%0d",inf.counter);
inf.clk=0;
forever #5 inf.clk=~inf.clk;
end
initial begin
inf.reset=1;
#20;
inf.reset=0;
#70 $finish;
end
endmodule:upcounter_testbench
