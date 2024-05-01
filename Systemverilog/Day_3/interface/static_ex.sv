
class H;
  
  static int s_h;
 
  static function void display();
    s_h++;
  endfunction
endclass

module tb;
  
  H a[4];
  initial begin
    foreach(a[i])begin
      a[i].display();
      $display("The value is = %0d",a[i].s_h);
    
    end
  end
endmodule
