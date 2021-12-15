module testbench;
  reg preset,clk;
  wire [4:0]count;
  
  downcount D1 (clk,preset,count);
  
  initial clk=0;
  always clk = #1 ~clk;
  
  initial 
    begin
     $monitor($time,"clk=%b,preset=%b,count=%b",clk,preset,count);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);

     
     #0 preset = 1;
     #4 preset = 0;
     #50 $finish;
   end
endmodule
  
  
