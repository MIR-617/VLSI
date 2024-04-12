module clock_generation;
  int clk;
  initial begin
    clk=0;
    forever begin
      #10 clk = !clk;
      $display("  clk=%d",clk);
    end
  end
    initial begin
      #70 $finish();
    end

endmodule
           
