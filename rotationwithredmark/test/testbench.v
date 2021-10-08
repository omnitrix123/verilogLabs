module testbench;
 reg [31:0]a;
 reg left,right;
 wire sensorA,sensorB;
 
 rotation R1 (a,left,right,sensorA,sensorB);
 
 initial a=32'b10000000000000000000000000000000;
 
 initial 
   begin
     $monitor($time,"a=%b,left=%b,right=%b,sensorA=%b,sensorB=%b",a,left,right,sensorA,sensorB);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);
     
     #1 left=1; right=0;
     #32 left=0; right=1;
     #5 $finish;
     
  end

endmodule
