module testbench;
  reg data,clock;
  wire q;
  
  dff D1 (data,clock,q);
  
  initial clock=0;
  always #1.5 clock=~clock;
  
  initial
    begin 
      $monitor($time,"data=%b,clock=%b,q=%b",data,clock,q);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      
      #5 data=1;
      #7 data=0;
      #2 data=1;
      #5 $finish;
      
   end
endmodule
