module testbench;
 reg [2:0]in;
 reg en;
 wire [7:0]out;
 
 threetoeight T1 (in,out,en);
 
 initial
  begin
   $monitor($time,"in=%b,out=%b,en=%b",in,out,en);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 en=0; in=3'b000; 
   #2 en=1; in=3'b001;
   #2 in=3'b010;
   #2 $finish;
  
  end
 endmodule
