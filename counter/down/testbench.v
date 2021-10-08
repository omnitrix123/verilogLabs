module testbench;
  reg reset,preset,clk,mode;
  wire [4:0]count;
  
  downcount D1 (clk,reset,preset,mode,count);
  
  initial clk=0;
  always clk = #1 ~clk;
  
  initial 
    begin
     $monitor($time,"clk=%b,reset=%b,preset=%b,mode=%b,count=%b",clk,reset,preset,mode,count);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);

     
     #0 reset = 1;
     #1 reset = 0;
     #2 preset=1; mode=0;
     #1 preset = 0;
     #30 mode=1;
     #50 $finish;
   end
endmodule
  
  
