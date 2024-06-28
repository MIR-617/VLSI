class packet;
  bit [8:0]addr;
  bit [8:0]data;
  function new([8:0] addr,data);
  this.data=data;
  this.addr=addr;
  endfunction
  function void display();
    $display("addr = %0d",addr);
    $display("data = %0d",data);
  endfunction
endclass
  
  module tb;
    packet pkt;
    initial begin
    pkt = new(8'd7,8'd6);
    pkt.display();
    end
  endmodule
