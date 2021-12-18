module testbench;
  reg clk1,reset1;
  wire [5:0] counter1;
  question G ( .clk(clk1), .reset(reset1), .count(counter1));
  initial begin
   $monitor($time,"clk1=%b,reset1=%b,counter1=%b",clk1,reset1,counter1);
   $dumpfile("waveform.vcd");
   $dumpvars(0,testbench);
   clk1 = 0;
   reset1 = 1;
   #20 reset1 = 0;
   #200
   $finish;
  end

always
clk1 = #2 ~clk1;

endmodule
