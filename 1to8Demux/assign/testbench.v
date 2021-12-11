module testbench;
 reg a;
 wire [7:0]out;
 reg [2:0]sel;
 
 oneto8demux D1 (a,sel,out);
 
 initial 
  begin 
   $monitor($time,"a=%b,sel=%b,out=%b",a,sel,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 a=1;sel=3'b001;
   #2 a=0;sel=3'b000;
   #4 a=1;sel=3'b000;
   #4 a=1;sel=3'b001;
   #4 a=0;sel=3'b010;
   #4 a=1;sel=3'b011;
   #4 a=1;sel=3'b100;
   #4 a=0;sel=3'b101;
   #4 a=1;sel=3'b110;
   #4 $finish;
  end
endmodule

 
