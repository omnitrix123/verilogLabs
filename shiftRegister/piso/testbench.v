module testbench;
 reg [3:0] in;
 reg clk,load;
 wire out;
 
 piso P1(in,clk,out,load);
 
 initial clk=0;
 always clk= #1 ~clk;
 
 initial 
  begin
   $monitor($time,"clk=%b,in=%b,out=%b,load=%b",clk,in,out,load);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 in=4'b1010;load=1;
   #2 load=0;
   #10 in=4'b0110;load=1;
   #2 load=0;
   #10 $finish;
   
  end
 endmodule
 
