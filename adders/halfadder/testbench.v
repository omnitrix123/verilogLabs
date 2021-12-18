module testbench;
 reg a,b;
 wire sum,cout;
 
 halfadder H1 (a,b,sum,cout);
 
 initial
  begin 
   $monitor($time,"a=%b,b=%b,sum=%b,cout=%b",a,b,sum,cout);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 a=0; b=0;
   #2 a=0; b=1;
   #2 a=1; b=0;
   #2 a=1; b=1;
   #2 $finish;
   
  end
endmodule

