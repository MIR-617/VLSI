class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task drive;
    repeat(8)
      begin
        
        pkt=new();
        mail.get(pkt);
        vintf.clk=pkt.clk;
        vintf.reset=pkt.reset;
        pkt.out=vintf.out;
        #5;
      end
  endtask
endclass
