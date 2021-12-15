module testbench;
 reg clk,init;
 wire [3:0]count;
 
 ringcounter R1 (clk,init,count);
 
 initial clk = 0;
 always clk = #1 ~clk;
 
 
 initial 
  begin 
   $monitor($time,"clk=%b,init=%b,count=%b",clk,init,count);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 init=1;
   #2 init=0;
   #100 $finish;
   
  end
 endmodule 
