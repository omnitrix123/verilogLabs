module downcount(clk,preset,count);
   input preset,clk;
   output [4:0]count;
   reg [4:0]count;
   
    
     
   always@(posedge clk)
    begin
     
     if (preset)
       count <= 5'b11111;
     else
       count <= count - 1;
       
    end
 
 endmodule
    
