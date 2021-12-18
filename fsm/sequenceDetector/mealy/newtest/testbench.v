module testbench;
 reg bitstream,clk,reset;
 wire out;
 
 mealyoverlapping M1 (bitstream,clk,out,reset);
 
 initial clk=0;
 always #5 clk= ~clk;
 
 initial
  begin
      $monitor($time,"bitstream=%b,clk=%b,reset=%b,out=%b",bitstream,clk,reset,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   clk=1'b0; reset=1'b1;
   #15 reset = 1'b0;
 end
   
 initial 
  begin
   #12 bitstream=0;
   #10 bitstream=0;
   #10 bitstream=1;
   #10 bitstream=1;
   #10 bitstream=0;
   #10 bitstream=1;
   #10 bitstream=1;
   #10 bitstream=0;
   #10 bitstream=0;
   #10 bitstream=1;
   #10 bitstream=1;
   #10 bitstream=0;
   #10 $finish;
   
  end
endmodule
   
