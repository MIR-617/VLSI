module array_string;
  int a2[string];
  int z;
  string s;
  initial begin
    a2["red"]=20;
    a2["green"]=51;
    a2["yellow"]=36;
    $display(" the number of elements a2 is %d", a2.num());
    a2.delete("green");
    $display("the number of elements a2 is %d",a2.num());
    z=a2.first(s);
    $display("first value is %s %d ",s,z);
    z=a2.next(s);
    $display("first value is %s %d ",s,z);
    z=a2.last(s);
    $display("first value is %s %d ",s,z);
    $display("array elements are %p",a2);
  end
endmodule
