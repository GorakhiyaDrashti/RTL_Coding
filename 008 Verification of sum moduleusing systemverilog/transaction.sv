class transaction;
  randc bit [3:0]a;
  randc bit [3:0]b;
  bit [4:0]result;
  
  function void post_randomization();
    $display("multiplication of var1:%0b var2:%0b and the result:%0b",a,b,result);
  endfunction:post_randomization
  
  constraint cnt { a!=b; a>0; b>0; a>b;}
endclass:transaction
