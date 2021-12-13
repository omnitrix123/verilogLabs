module testbench;
 reg [7:0]in;
 wire [2:0]out;
 
 eighttothree T1 (in,out);
 
 initial
  begin
   $monitor($time,"in=%b,out=%b",in,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=8'b00000001;
   #2 in=8'b00000010;
   #2 in=8'b00000100;
   #2 in=8'b00001000;
   #2 in=8'b00010000;
   #2 in=8'b00100000;
   #2 in=8'b01000000;
   #2 in=8'b10000000;
   #2 in=8'b10011100;
   #2 $finish;
  
  end
 endmodule
   
