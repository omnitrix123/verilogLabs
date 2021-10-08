module testbench;
  reg A;
  reg [2:0]S;
  wire out;
  
  oneto8demux S1 (A,S,out);
  
  initial 
    begin
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      $monitor($time,"A=%h,S=%h,out=%b",A,S,out);
      
      #5 A=1; S=3'b000;
      #5 S=3'b001;
      #5 S=3'b010;
      #5 S=3'b011;
      #5 S=3'b100;
      #5 S=3'b101;
      #5 S=3'b110;
      #5 S=3'b111;
      #5 $finish;
    end
endmodule
  
