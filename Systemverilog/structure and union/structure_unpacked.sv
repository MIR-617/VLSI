module tb;
  struct{
    string name;
    bit [15:0] salary;
    byte id;
  }employee_s;
  initial begin
    employee_s='{"Macklin",15000,12};
    $display("The employe details are = %p",employee_s);
  end
endmodule
             
