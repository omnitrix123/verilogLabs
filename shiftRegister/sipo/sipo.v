module sipo(in,clk,out);
 input in;
 input clk;
 output reg [3:0] out;
 
 always@(posedge clk)
   begin
    out[3] <= out[2];
    out[2] <= out[1];
    out[1] <= out[0];
    out[0] <= in;
   end
 endmodule
 
