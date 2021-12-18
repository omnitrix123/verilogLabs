module question(clk,count,reset);
 input reset,clk;
 output reg [5:0] count;
 reg [5:0]a = -6'b000010;
 reg var =0;

 always @ (posedge clk or reset)
  begin
   if (reset)
    count <= 6'b100000;
   else
     begin
       if(count == 6'b000000)
         a = 6'b000011;

       else if (count == 6'b011011)
         a = -6'b000010;
       else if (count == 6'b001001 & var==1)
         a = 6'b000000;
       
       else if (count == 6'b001001 & var==0)
         var=1;     
      
          
      count <= count + a;
      end
  end
endmodule
