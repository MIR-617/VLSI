class home;
  string switch;
  task open_electricity();
    switch ="on";
    $display("switch=%s",switch);
  endtask
endclass
  module tb;
     home h1;
    initial begin
      $display("check wheather the object is created");
      if(h1==null)
        $display("object is empty");
      else
        $display("object is not empty");
      
    end
  endmodule
