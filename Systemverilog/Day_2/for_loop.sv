module for_loop;
  int i;
  int array[4:0];
  initial begin
    for(i=0;i<5;i++)
      begin
        array[i]=i*i;
        $display("the array is[%d]=%d",i,array[i]);
      end
  end
endmodule
        
