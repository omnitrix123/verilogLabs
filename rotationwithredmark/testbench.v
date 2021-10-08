module testbench;
 reg clk;
 reg left,right;
 wire sensorA,sensorB;
 wire [31:0]temp;
 
 rotation R1 (clk,left,right,sensorA,sensorB,temp);
 
 initial clk=0;
 always #1 clk = ~clk;
 
 initial 
   begin
     $monitor($time,"clk=%b,left=%b,right=%b,sensorA=%b,sensorB=%b,temp=%b",clk,left,right,sensorA,sensorB,temp);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);
     
     #1 left=0; right=1;
     #60 left=1; right=0;
     #60 $finish;
     
  end

endmodule
