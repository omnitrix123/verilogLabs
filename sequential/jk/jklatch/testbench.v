module testbench;
  reg j,k,enable;
  wire q,qbar;
  
  jklatch J1 (j,k,enable,q,qbar);
  
  initial 
    begin
      $monitor($time," j=%b,k=%b,enable=%b,q=%b,qbar=%b",j,k,enable,q,qbar);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #5 enable=0;
      #5 enable=1;
      #2 j=0; k=0;
      #2 j=0; k=1;
      #2 j=1; k=0;
      #2 j=1; k=1;
      #5 $finish;
      
   end
endmodule
