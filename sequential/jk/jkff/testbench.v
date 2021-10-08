module testbench;
  reg j,k,clock;
  wire q,qbar;
  
  jkff J1 (j,k,clock,q,qbar);
  
  initial clock=0;
  always #1.5 clock=~clock;
  
  initial
    begin 
      $monitor($time,"j=%b,k=%b,clock=%b,q=%b,qbar=%b",j,k,clock,q,qbar);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      
      #5 j=1;k=0;
      #7 j=0;k=0;
      #2 j=0;k=1;
      #4 j=0;k=0;
      #5 $finish;
      
   end
endmodule
