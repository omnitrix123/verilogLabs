module testbench;
 
 reg [31:0]a;
 reg [31:0]b;
 reg cin;
 wire [31:0]sum;
 wire cout;
 
 thirtytwobitFA f1 (cout,sum,a,b,cin);
 
 initial 
   begin
     $monitor($time,"cout=%b,sum=%b,a=%b,b=%b,cin=%b",cout,sum,a,b,cin);
     $dumpfile("waveform.vcd");
     $dumpvars(0,testbench);
     
     #0 a=32'h01111111; b=32'h10010010; cin=0;
     #5 a=32'h0111f111; b=32'h1dd10010; cin=0;
     #5 a=32'h0fd1f111; b=32'hdd1ee010; cin=0;
     #5 a=32'h0111f111; b=32'h0dd10010; cin=0;
     #5 $finish;
     
     end
endmodule
     
 
 
