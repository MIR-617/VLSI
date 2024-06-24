module tb;
  shortint short_int;
  int int_data;
  longint long_int;
  initial begin
    short_int = 8'b01101001;
    $display("The value of short_int_data = %b\n",short_int);
    int_data = int'(short_int);
    $display("After casting shortint to int = %b\n",int_data);
    long_int = longint'(short_int);
    $display("After casting short_int to long_int = %b\n",long_int);
  end
endmodule
    
