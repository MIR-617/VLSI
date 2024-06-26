module dynamic_array_tb;
  int array[];
  initial begin
    array=new[6];
    array={34,56,76,87,90,72};
    $display("the size of the array=%0d",i,array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
  end
endmodule
