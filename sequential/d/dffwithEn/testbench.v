module testbench;
   reg data,enable,clock;
   wire q;
   
   dffwithEn E1 (data,clock,enable,q);
   
   initial clock=0;
   always #1.5 clock=~clock;
   
   initial
      begin 
        $monitor($time," data=%b,enable=%b,clock=%b,q=%b",data,enable,clock,q);
        $dumpfile("waveform.vcd");
        $dumpvars(0,testbench);
        
        #2 data=1;
        
        #7 enable=1;
        #4 data=0;
        #3 enable=0;
        #5 $finish;
        
      end
endmodule
