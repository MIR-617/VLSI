module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire a,b,c,d;
    and(a,p2a,p2b);
    and(b,p2c,p2d);
    and(c,p1a,p1c,p1b);
    and(d,p1f,p1e,p1d);
    or(p2y,a,b);
    or(p1y,d,c);
    
endmodule
