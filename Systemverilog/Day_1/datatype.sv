module datatype1;
  integer a;
  int b;
  shortint c;
  longint d;
  logic [7:0]l1;
  logic signed [7:0] sl1;
  byte bl1;
  reg [7:0]r1;
   initial begin
     a= 'h xxzz_ffff;
     b=-1;
     c='h fxfx;
     d='h ffff_xxxx_ffff_xxxx;
     l1=-1;
     sl1=-5;
     bl1=-1;
     r1=8'bxzxz_0101;
   end
  initial begin
    $display("a=%h b=%h c=%h d=%h",a,b,c,d);
    $display("l1=%b sl1=%d bl1=%d r1=%b",l1,sl1,bl1,r1);
    #10$finish();
  end
endmodule
    
