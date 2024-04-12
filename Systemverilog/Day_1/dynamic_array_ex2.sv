module dynamic_array_2;
  int array[];
  int md[];
  initial begin
    array=new[4];
    array={12,23,34,45};
    md=array;
    $display("the size of the array=%d",array.size());
    foreach(array[i])
    $display("array[%0d]=%0d",i,array[i]);
    $display("md=%p",md);
    md=new[md.size()+1](md);
    md[md.size()-1]=6;
    $display("the new md=%p",md);
    $display("the size of array=%d the size of md=%d",array.size(),md.size());
  end
endmodule
