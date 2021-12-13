module testbench;
 reg [4:0]in;
 reg en;
 wire [31:0]out;
 
 fivetothirtytwo T1 (in,out,en);
 
 initial
  begin
   $monitor($time,"in=%b,out=%b,en=%b",in,out,en);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 en=0; in=5'b00000; 
   #2 en=1; in=5'b00000; 
   #2 en=1; in=5'b00001;
   #2 en=1; in=5'b00010;
   #2 en=1; in=5'b00011;
   #2 en=1; in=5'b00100;
   #2 $finish;
  
  end
 endmodule
