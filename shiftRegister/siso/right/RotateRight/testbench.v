module testbench;
  reg si,clk;
  wire so;
  
  sisorotateright s1 (si,clk,so);
  
  initial clk=0;
  always clk = #1 ~clk;
  
  initial 
    begin
      $monitor($time,"si=%b,clk=%b,so=%b",si,clk,so);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #1 si=1; 
      #1 si=0;
      #1 si=0;
      #1 si=0;
      #150 $finish;
      
   end
endmodule
      
