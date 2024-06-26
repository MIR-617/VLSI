module tb;
  bit[1:0] x;
  initial begin
    x=2'b01;
   unique case(x) inside
      00:$display("The value of x=%b",x);
      01:$display("The value of x=%b",x);
      10:$display("The value of x=%b",x);
      11:$display("The value of x=%b",x);
      default:$display("value not found");     
    endcase
  end
endmodule
