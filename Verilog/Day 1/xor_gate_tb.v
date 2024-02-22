// Code for xor_gate testbench 
module xor_gate_tb;
  reg a,b;
  wire y;
  xor_gate xorgate(.a(a),.b(b),.y(y));
initial begin
//monitor and dump instructions
  $monitor("%t a=%0d b=%0d y=%0d",$time,a,b,y);
  $dumpfile("xor_gate.vcd");
  $dumpvars(0,xor_gate_tb);
end
initial begin
//apply input values
  a=1'b0;b=1'b0;
  #10a=1'b0;b=1'b1;
  #10a=1'b1;b=1'b0;
  #10a=1'b1;b=1'b1;
  #10
  $finish;
end
endmodule
