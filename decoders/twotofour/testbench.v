module testbench;
 reg [1:0]in;
 reg en;
 wire [3:0]out;
 
 twotofour t1 (in,out,en);
 
 initial
  begin
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   $monitor($time,"in=%b,out=%b,en=%b",in,out,en);
   
   #0 en=0;in=2'b00;
   #2 en=1;in=2'b00;
   #4 en=1;in=2'b10;
   #6 in=2'b11;
   #8 in=2'bzz;
   #10 $finish;
  end
endmodule

