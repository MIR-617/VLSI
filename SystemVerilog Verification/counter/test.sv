`include "environment.sv"
class countertest;
   environment env;
   virtual operation vintf;
  mailbox mail;
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task memory;
    mail=new();
    env=new(vintf,mail);
  endtask
  
  task run;
    fork
      env.memory;
      env.run;
    join
  endtask
endclass
