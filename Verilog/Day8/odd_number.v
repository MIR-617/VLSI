module odd_number(
  input  [31:0]num);

always @(*)
  begin
    if(num%2==1)
      $display("The number is a odd number",num);
    else
      $display("The number is not a odd number",num);
   end 
endmodule
       
