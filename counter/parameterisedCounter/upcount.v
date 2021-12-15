module upcount(clk,reset,count);
   parameter N=7;
   input reset,clk;
   output [N:0]count;
   reg [N:0]count;
   
    
     
   always@(posedge clk)
    begin
     
     if (reset)
       count <= 0;
     else
       count <= count + 1;
       
    end
 
 endmodule
    
