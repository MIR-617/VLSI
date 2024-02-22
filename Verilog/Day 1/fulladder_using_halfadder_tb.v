// Code for fulladder using halfadder testbench 
module fulladder_tb;
reg A, B, Cin;
wire sum, carry;

  fulladder FA (.A(A),.B(B),.Cin(Cin),.sum(sum),.carry(carry));
 
initial begin //input values
    A=0;B=0;Cin=0;
    #10
    A=0;B=0;Cin=1;
    #10
    A=0;B=1;Cin=0;
    #10
    A=0;B=1;Cin=1;
    #10
    A=1;B=0;Cin=0;
    #10
    A=1;B=0;Cin=1;
    #10
    A=1;B=1;Cin=0;
    #10
    A=1;B=1;Cin=1;
    #10 
$finish();
end
initial begin 
//monitor and dump instructions
  $monitor("%t A=%d B=%d Cin=%d sum=%d carry=%d",$time,A,B,Cin,sum,carry);
  $dumpfile("fulladder.vcd");
  $dumpvars(1,fulladder_tb);
end
            
endmodule
