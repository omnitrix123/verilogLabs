module upcount(clk,reset,count);
   input reset,clk;
   output [4:0]count;
   reg [4:0]count;
   
    
     
   always@(posedge clk)
    begin
     
     if (reset)
       count <= 5'b00000;
     else
       count <= count + 1;
       
    end
 
 endmodule
    
