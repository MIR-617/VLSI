module moore_1011(
  input clk,reset,in,
  output out,presentstate,nextstate);
  reg out;
  reg [2:0] presentstate,nextstate;
  
  parameter [4:0]  s0=3'b000,
                   s1=3'b001,
                   s2=3'b010,
                   s3=3'b011,
                   s4=3'b100;
  always@(posedge clk)
    begin
      if(reset==1)
        presentstate<=s0;
      else
        presentstate<=nextstate;
    end
  
  always@(presentstate,in)
    begin
    case(presentstate)
      s0:
        begin
          out=0;
          if(in==1)
            nextstate=s1;
          else
            nextstate=s0;
        end
      s1:
        begin
          out=0;
          if(in==0)
            nextstate=s2;
          else
            nextstate=s1;
        end
      s2:
        begin
          out=0;
          if(in==1)
            nextstate=s3;
          else
            nextstate=s0;
        end
      s3:
        begin
          out=0;
          if(in==0)
            nextstate=s2;
          else
            nextstate=s4;
        end
      s4:
        begin
          out=1;
          if(in==1)
            nextstate=s1;
          else
            nextstate=s2;
        end
    endcase
    end
endmodule
      
      
                   
