module testbench;
  reg t,clock;
  wire q;
  
  tff D1 (t,clock,q);
  
  initial clock=0;
  always #1.5 clock=~clock;
  
  initial
    begin 
      $monitor($time,"t=%b,clock=%b,q=%b",t,clock,q);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #1 t=1;
      #20 t=0;
      #3 t=0;
      #5 t=1;
      #7 t=0;
      #5 $finish;
      
   end
endmodule
