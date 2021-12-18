module testbench;
 reg a,b;
 wire diff,borrow;
 
 halfsubtractor H1 (a,b,diff,borrow);
 
 initial
  begin 
   $monitor($time,"a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 a=0; b=0;
   #2 a=0; b=1;
   #2 a=1; b=0;
   #2 a=1; b=1;
   #2 $finish;
   
  end
endmodule

