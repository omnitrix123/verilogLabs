module testbench;
     reg d,g,enable;
     wire q;
     
     gatedTlatch T1 (d,g,enable,q);
     
     initial 
      begin
      $monitor($time," g=%b,d=%b,enable=%b,q=%b",g,d,enable,q);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #1 g=0;d=1;
      #5 g=1;
      #5 enable=0; d=1;
      #5 enable=1;
      #3 d=0;
      #10 d=1;
      #5 d=0;
      #5 d=1;
      #5 d=0;
      #5 $finish;
      
     end
endmodule
