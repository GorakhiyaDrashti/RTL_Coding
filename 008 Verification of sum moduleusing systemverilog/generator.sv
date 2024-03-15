class generator;
  transaction trans;
  mailbox #(transaction) mbx;
  event done;
  function new(mailbox #(transaction) mbx);
    this.mbx = mbx;
  endfunction
  
  task run();
    
    for(int i=0;i<15;i++) begin
       trans = new();
      assert(trans.randomize()) else
      $display("randomization faild");
      $display("[GEN]: generated value var1:%0d, var2:%0d",trans.a,trans.b);
      mbx.put(trans);      
    end
   // ->done;
  endtask
endclass
