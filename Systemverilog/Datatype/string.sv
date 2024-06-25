module tb;
  string str1 = "Macklin_Eniya";
  string str2 =" Miruthula";
  initial begin
    $display("\tThe String1 is\t",str1);
    $display("The string2 is",str2);
    if(str1==str2)
      $display("string1 and string2 are equal");
    else
      $display("string1 and string2 are not equal");
    $display("%s",{str1,str2});
    $display("%s\t",{2{str1}});
  end
endmodule
