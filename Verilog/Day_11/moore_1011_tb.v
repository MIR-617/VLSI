module moore_1011_tb;
  reg clk,reset,in;
  wire out;
  wire [2:0] presentstate,nextstate;
  moore_1011 moore(.clk(clk),.reset(reset),.in(in),.out(out),.presentstate(presentstate),.nextstate(nextstate));
  initial begin
    $monitor("t=%d clk=%b reset=%b in=%b out=%b presentstate=%b nextstate=%b ",$time,clk,reset,in,out,presentstate,nextstate);
    $dumpfile("moore_1011.vcd");
    $dumpvars(1,moore_1011_tb);
  end
  initial begin
     in=1;
    reset=1;
    clk=1;
    #5 reset=0;
  end
  initial begin
     #10in=1'b1;
  #10in=1'b0;
  #20in=1'b1;
  #10in=1'b1;
  #100
    $finish();
  end
  always #10 clk=~clk;
endmodule
