module updowncount(clk,reset,preset,mode,count);
   input reset,preset,clk,mode;
   output [4:0]count;
   reg [4:0]count;
   
    
   always@(posedge clk|reset|preset) 
   //always@(posedge clk or reset or preset) is non synth
    begin
     
     if (reset)
       count <= 5'b00000;
     else if (preset)
       count <= 5'b11111;
     else if (mode == 1) //up counter
       count <= count + 1;
     else if (mode == 0) //down counter
       count <= count - 1;
    end
 endmodule
    
