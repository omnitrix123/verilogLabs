module testbench;
 reg in;
 reg clk;
 wire [3:0] out;
 
 sipo P1(in,clk,out);
 
 initial clk=0;
 always clk= #1 ~clk;
 
 initial 
  begin
   $monitor($time,"clk=%b,in=%b,out=%b",clk,in,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=1;
   #2 in=0;
   #2 in=0;
   #2 in=1;
   #4 $finish;
   
  end
 endmodule
 
