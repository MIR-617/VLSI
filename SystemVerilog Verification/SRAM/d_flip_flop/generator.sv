class generator;
  
  transaction pkt;
  
  mailbox mail;
  
  function new(mailbox mail);
    this.mail=mail;
  endfunction
  
  task gene;
    repeat(10)
      begin
        
        pkt=new();
        pkt.randomize();
        mail.put(put);
        $display("packet is generated");
        #5;
      end
  endtask
endclass
  
