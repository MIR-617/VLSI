// Code for nand_gate testbench 
module nand_gate_tb;
  reg a,b;
  wire y;
  nand_gate nandgate(.a(a),.b(b),.y(y));
initial begin
//monitor and dump instructions
  $monitor("%t a=%0d b=%0d y=%0d",$time,a,b,y);
  $dumpfile("nand_gate.vcd");
  $dumpvars(0,nand_gate_tb);
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
