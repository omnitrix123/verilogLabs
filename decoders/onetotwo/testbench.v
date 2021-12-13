module testbench;
 reg in;
 reg en;
 wire [1:0]out;
 
 onetotwo T1 (in,out,en);
 
 initial 
  begin
   $monitor($time,"in=%b,out=%b,en=%b",in,out,en);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=1; en=0;
   #2 in=1; en=1;
   #4 in=0; en=1;
   #2 $finish;
   
  end
endmodule
