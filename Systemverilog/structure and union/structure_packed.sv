module tb;
 typedef struct packed {
    bit[8:0] experience;
    bit [15:0] salary;
    byte id;
  }employee_s;
  employee_s emp;
  initial begin
    emp.experience=10;
    emp.salary=20000;
    emp.id=7;
    $display("The employe experience = %p",emp.experience);
    $display("The employe salary = %p",emp.salary);
    $display("The employe id = %p",emp.id); 
  end
endmodule
