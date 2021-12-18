module testbench;
 reg [3:0] in;
 reg clk;
 wire [3:0] out;
 
 pipo P1(in,clk,out);
 
 initial clk=0;
 always clk= #1 ~clk;
 
 initial 
  begin
   $monitor($time,"clk=%b,in=%b,out=%b",clk,in,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=4'b0001;
   #2 in=4'b0010;
   #2 in=4'b1100;
   #1 in=4'b1111;
   #4 $finish;
   
  end
 endmodule
 
