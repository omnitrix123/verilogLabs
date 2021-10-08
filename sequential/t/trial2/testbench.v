module testbench;
     reg t,e;
     wire q,a;
     
     trytff T1 (t,e,q,a);
     
     initial 
      begin
      $monitor($time," t=%b,e=%b,q=%b,a=%b",t,e,q,a);
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
