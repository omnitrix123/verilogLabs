module testbench;
 reg [1:0] in;
 wire out;
 
 twotoone T1 (in,out);
 
 initial
  begin
   $monitor($time,"in=%b,out=%b",in,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=2'b01;
   #2 in=2'b10;
   #2 $finish;
   
  end
endmodule
