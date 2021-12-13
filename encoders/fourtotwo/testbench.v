module testbench;
 reg [3:0]in;
 wire [1:0]out;
 
 fourtotwo F1 (in,out);
 
 initial
  begin
   $monitor($time,"in=%b,out=%b",in,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=4'b0001;
   #2 in=4'b0010;
   #2 in=4'b0100;
   #2 in=4'b1000;
   #2 in=4'b1111;
   #2 $finish;
   
  end
endmodule
 
