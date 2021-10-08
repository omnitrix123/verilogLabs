module testbench;
  reg [7:0]a,b;
  reg [3:0]sel;
  wire [12:0]result;
  
  alu A1 (a,b,sel,result);
  
  initial 
   begin 
    $monitor($time," a=%b,b=%b,sel=%b,result=%b",a,b,sel,result);
    $dumpvars(0,testbench);
    $dumpfile("waveform.vcd");
    
    #5 a=8'b00000110; b=8'b00000010;sel=4'b0000;
    #5 sel=4'b0001;
    #5 sel=4'b0010;
    #5 sel=4'b0011;
    #5 sel=4'b0100;
    #5 sel=4'b0101;
    #5 sel=4'b0110;
    #5 sel=4'b0111;
    #5 sel=4'b1000;
    #5 sel=4'b1001;
    #5 sel=4'b1010;
    #5 sel=4'b1011;
    #5 sel=4'b1100;
    #5 sel=4'b1101;
    #5 sel=4'b1110;
    #5 sel=4'b1111;
    #5 $finish;
   end
   
endmodule
