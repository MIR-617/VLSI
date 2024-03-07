module moore_1010_tb;
  reg clk,reset,in;
  wire out;
  wire[2:0] presentstate,nextstate;
  moore_1010 moore(.clk(clk),.reset(reset),.in(in),.out(out),.presentstate(presentstate),.nextstate(nextstate));
  initial begin
    $monitor("t=%d clk=%b reset=%b in=%b out=%b presentstate=%b nextstate=%b ",$time,clk,reset,in,out,presentstate,nextstate);
    $dumpfile("moore_1010.vcd");
    $dumpvars(1,moore_1010_tb);
  end
initial begin
  in=1;
  clk=1;
  reset=1;
  #5 reset=0;
end
initial begin
  #10in=1'b1;
  #20in=1'b0;
  #10in=1'b1;
  #20in=1'b0;
  #100
  $finish();
end
  always #10 clk=~clk;
endmodule
  
  
      
     
        
  
