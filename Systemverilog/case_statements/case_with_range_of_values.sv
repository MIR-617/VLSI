module tb;
  int x;
  initial begin
    x=7;
    case(x) inside
      [0:2]:$display("The value of x=%d",x);
      [3:5]:$display("The value of x=%d",x);
      [6:8]:$display("The value of x=%d",x);
      [9:10]:$display("The value of x=%d",x);
      default:$display("value not found");     
    endcase
  end
endmodule
    
