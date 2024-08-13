class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task drive;
    repeat(10)
      begin
        
        pkt=new();
        mail.get(pkt);
        vintf.d=pkt.d;
        vintf.clk=pkt.clk;
        vint.rst_n=pkt.rst_n;
        #5
        pkt.q=vintf.q;
        pkt.qb=vintf.qb;
        #5;
      end
  endtask
endclass
        
        
