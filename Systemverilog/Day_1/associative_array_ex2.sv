module associative_array;
  int array1[int];
  int array2[string];
  string array3[string];
  initial begin
    array1={1:3,
            4:7};
    array2={"macklin":4,
            "kalimani":1};
    array3={"macklin":"rose",
            "kalimani":"joe"};
    $display("The array1 is",array1);
    $display("the array2 is",array2);
    $display("the array3 is",array3);
             
  end
endmodule
