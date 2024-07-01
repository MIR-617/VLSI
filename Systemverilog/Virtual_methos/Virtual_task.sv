class packet;
  string s;
  int b;
  virtual task display();
    s="NAVEEN PRASATH";
    b=21;
    $display("the value of s=%s and b=%d",s,b);
   endtask
endclass
class pack extends packet;
  string st;
  int c;
  task display();
    st="MANIKANDAN";
    c=43;
    $display("The value of st=%s and c=%d",st,c);
  endtask
endclass
             
 module tb;
   packet p1;
   pack p2;
   initial begin
     p2=new();
     p1=p2;
     p1.display();
//      p1.display();
   end
 endmodule
     
