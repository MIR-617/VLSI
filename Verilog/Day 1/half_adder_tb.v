// code for half_adder_testbench
module half_adder_tb;
reg a,b;
wire sum,carry;

half_adder uut(a,b,sum,carry);

initial begin
a = 0; b = 0; //input values
#10
a = 0; b = 1;
#10
a = 1; b = 0;
#10
a = 1; b = 1;
#10
$finish();
end
initial begin
  $monitor("a=%0d b=%0d sum=%0d carry=%0d",a,b,sum,carry);
  $dumpfile("half_adder.vcd");
  $dumpvars(1,half_adder_tb);
end
                
endmodule
