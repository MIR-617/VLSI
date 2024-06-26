module tb;
  bit[1:0]x;
  initial begin
    x=2'b01;
    case(x)
      00:$display("The value of x=%b",x);
      01:$display("The value of x=%b",x);
      10:$display("The value of x=%b",x);
      default:$display("Xnot found");
    endcase
  end
endmodule
    
