module dynamic_array;
  int array[];
  initial begin 
    array=new[6];
    array={1,2,3,4,5,6};
           foreach(array[i])
           $display("array[%0d]=%0d",i,array[i]);
           $display("size of the array=%0d",array.size());
           array=new[8](array);
           $display("size of array after resizing =%0d",array.size());
           foreach(array[i])
             $display("array[%0d]=%0d",i,array[i]);
    $display("size of array after overloading=%d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array.delete();
    $display("the size of array after deleting=%0d",array.size());
    
           end
           endmodule
           
  
