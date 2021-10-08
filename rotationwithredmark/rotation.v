module rotation(clk,left,right,sensorA,sensorB,temp);
  input clk;
  input left,right;
  output sensorA,sensorB;
  output [31:0]temp;
  reg sensorA,sensorB;
  reg [31:0]temp;
  
  initial 
   begin
    temp = 32'b10000000000000000000000000000000;
    sensorA=0;
    sensorB=0;
   end
  
  
  always@(posedge clk)
  begin
  
   if(left)
    begin
      temp <= temp<<1;
      if(temp[7]==1)
        sensorB <= 1;
      else 
        sensorB <= 0;
    end
    
   else if (right)
     begin
      temp <= temp>>1;
      if(temp[23]==1)
        sensorA <= 1;
      else 
        sensorA <= 0;
     end
     
  end
  
endmodule

