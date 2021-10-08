module testbench;
     reg t,enable;
     wire q;
     
     tlatch T1 (t,enable,q);
     
     initial 
      begin
      $monitor($time," t=%b,enable=%b,q=%b",t,enable,q);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #5 enable=0; t=1;
      #5 enable=1;
      #3 t=0;
      #10 t=1;
      #5 t=0;
      #5 t=1;
      #5 t=0;
      #5 $finish;
      
     end
endmodule
