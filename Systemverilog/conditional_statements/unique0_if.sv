module tb;
  int age;
  initial begin
    age=21;
    unique0 if(age>18) 
      begin
        $display("the person is elegible for voting");
      end
    else if(age>30)
      begin
        $display("the person is eligible for CM election");
      end
    else if(age<18)
      begin
        $display("wait for years");
      end
  end
endmodule
                 
