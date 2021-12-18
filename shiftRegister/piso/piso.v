module piso(in,clk,out,load);
 input [3:0] in;
 input clk,load;
 output reg out;
 reg [3:0]temp;
 
 //always@(posedge clk or load) is non synthesizable
 always@(posedge clk|load)
   begin
   if(load)
    temp <= in;
   else
    begin
     out <= temp[3];
     temp[3] <= temp[2];
     temp[2] <= temp[1];
     temp[1] <= temp[0];
    end
   end
 endmodule
 
