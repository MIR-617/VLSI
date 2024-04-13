module for_loop;
  int i;
  int a[0:3];
  initial begin
    for(int j=0;j<5;j++)
      begin
        #10;
        for(i=0;i<3;i++)
          begin
            a[i]=i;
            $display("the array is[%d]=%d",i,a[i]);
          end
      end
  end
endmodule
