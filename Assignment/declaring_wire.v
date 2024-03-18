`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire e,f;
    and(e,a,b);
    and(f,c,d);
    or(out,e,f);
    not(out_n,out);

endmodule
