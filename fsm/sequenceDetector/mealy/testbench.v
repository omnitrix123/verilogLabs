module testbench;
 reg bitstream,clk,reset;
 wire out;
 
 mealyoverlapping M1 (bitstream,clk,out,reset);
 
 initial clk=0;
 always clk= #5 ~clk;
 
 initial
  begin
   $monitor($time,"bitstream=%b,clk=%b,reset=%b,out=%b",bitstream,clk,reset,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 reset=1; bitstream=1;
   #2
   #1 reset=0;
   #4 bitstream=1; reset=0;

   #10 bitstream=1;
   #10 bitstream=0;
   #10 bitstream=1;
   #10 bitstream=1;
   #10 bitstream=0;
   #10 bitstream=1;
   #10 bitstream=1;
   #10 $finish;
   
  end
endmodule
   
