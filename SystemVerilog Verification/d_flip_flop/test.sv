`include"environment.sv"
class dflipfloptest;
  environment env;
  virtual operation vintf;
  mailbox mail;
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
     task memory;
       mail=new();
       new=new(vintf,mail);
     endtask
    task run;
      fork
        env.memory;
        env.run;
      join
      
    endtask
    
    endclass
