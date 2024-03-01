module even_number(
  input  [31:0]num);

always @(*)
  begin
    if(num%2==0)
       $display("The number is a even number",num);
    else
      $display("The number is a odd number",num);
   end 
endmodule
       
