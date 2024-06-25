module tb;
  enum{MONDAY, TUESDAY,WEDNESDAY,THRUSDAY,FRIDAY,SATURDAY,SUNDAY}days;
  initial begin
    days=days.first;
    $display("");
    for (int i=0;i<7;i++) begin
      $display("Days name =%s and the value is = %0d",days.name,days);
      days=days.next;
    end
    $display("");
  end
endmodule
