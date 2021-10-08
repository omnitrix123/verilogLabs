module testbench;
     reg t,e;
     wire q;
     
     trytff T1 (t,e,q);
     
     initial 
      begin
      $monitor($time," t=%b,e=%b,q=%b",t,e,q);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #5 e=0; t=1;
      #5 e=1;
      #3 t=0;
      #10 t=1;
      #5 t=0;
      #5 t=1;
      #5 t=0;
      #5 $finish;
      
     end
endmodule
