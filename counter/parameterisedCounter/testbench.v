module testbench;
  parameter N=7;
  reg reset,clk;
  wire [N:0]count;
  
  upcount D1 (clk,reset,count);
  
  initial clk=0;
  always clk = #1 ~clk;
  
  initial 
    begin
     $monitor($time,"clk=%b,reset=%b,count=%b",clk,reset,count);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);

     
     #0 reset = 1;
     #4 reset = 0;
     #50 $finish;
   end
endmodule
  
  
