module testbench;
 reg a,b,cin;
 wire diff,borrow;
 
 fullsubtractor H1 (a,b,cin,diff,borrow);
 
 initial
  begin 
   $monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,diff,borrow);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 a=0; b=0; cin=0;
   #2 a=0; b=0; cin=1;
   #2 a=0; b=1; cin=0;
   #2 a=0; b=1; cin=1;
   #2 a=1; b=0; cin=0;
   #2 a=1; b=0; cin=1;
   #2 a=1; b=1; cin=0;
   #2 a=1; b=1; cin=1;
   #2 $finish;
   
  end
endmodule

