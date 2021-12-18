module pipo(in,clk,out);
 input [3:0] in;
 input clk;
 output reg [3:0] out;
 
 always@(posedge clk)
   begin
    out <= in;
   end
 endmodule
 
