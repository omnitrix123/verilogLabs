module testbench;
  reg si,clk;
  wire so;
  
  sisoright s1 (si,clk,so);
  
  initial clk=0;
  always clk = #1 ~clk;
  
  initial 
    begin
      $monitor($time,"si=%b,clk=%b,so=%b",si,clk,so);
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      
      #5 si=1; 
      #5 si=0;
      #5 si=0;
      #5 si=1;
      #10 $finish;
      
   end
endmodule
      
