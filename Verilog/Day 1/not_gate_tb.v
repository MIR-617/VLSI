// Code for not_gate testbench 
module not_gate_tb;
  reg a;
  wire y;
  not_gate notgate(.a(a),.y(y));
initial begin
//monitor and dump instructions
  $monitor("%t a=%0d  y=%0d",$time,a,y);
  $dumpfile("not_gate.vcd");
  $dumpvars(0,not_gate_tb);
end
initial begin
//apply input values
  a=1'b0;
  #10a=1'b1;
  #10
  $finish;
end
endmodule
