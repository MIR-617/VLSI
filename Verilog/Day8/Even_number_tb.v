module even_number_tb;
  reg [31:0]num;
  even_number uut(.num(num));
  initial begin
    num=13;
    #10
    $finish();
  end
  initial begin
    $monitor("%t num=%d",$time,num);
  end
endmodule
