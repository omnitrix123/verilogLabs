module testbench;
  reg [15:0]A;
  reg [3:0]S;
  wire Result;
  
  sixteento1 S1 (A,S,Result);
  
  initial 
    begin
      $dumpfile("waveform.vcd");
      $dumpvars(0,testbench);
      $monitor($time,"A=%h,S=%h,Result=%b",A,S,Result);
      
      #5 A=16'ha067; S=4'h0;
      #5 S=4'h1;
      #5 S=4'h2;
      #5 S=4'h3;
      #5 S=4'h4;
      #5 S=4'h5;
      #5 S=4'h6;
      #5 S=4'h7;
      #5 S=4'h8;
      #5 S=4'h9;
      #5 S=4'ha;
      #5 $finish;
    end
endmodule
  
