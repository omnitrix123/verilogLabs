module testbench;
 reg a;
 reg en;
 wire [7:0]out;
 reg [2:0]sel;
 
 oneto8demux D1 (a,en,sel,out);
 
 initial 
  begin 
   $monitor($time,"a=%b,en=%b,sel=%b,out=%b",a,en,sel,out);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   
   #0 en=0;a=1;sel=3'b001;
   #2 en=0;a=0;sel=3'b000;
   #4 en=1;a=1;sel=3'b000;
   #4 en=1;a=1;sel=3'b001;
   #4 en=1;a=0;sel=3'b010;
   #4 en=1;a=1;sel=3'b011;
   #4 en=1;a=1;sel=3'b100;
   #4 en=1;a=0;sel=3'b101;
   #4 en=1;a=1;sel=3'b110;
   #4 $finish;
  end
endmodule

 
