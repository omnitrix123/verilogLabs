module rotation(left,right,sensorA,sensorB);
  input left,right;
  output sensorA,sensorB;
  reg sensorA,sensorB;
  output [31:0] temp;
  reg [31:0]temp;
  
  initial 
   begin
    sensorA=0;
    sensorB=0;
   end
  
  
  always@(*)
  begin
  
   if(left)
    begin
      temp = #1 temp<<1;
      if(temp[7]==1)
        sensorB = 1;
      else 
        sensorB = 0;
    end
    
   else if (right)
     begin
      temp = #1 temp>>1;
      if(temp[23]==1)
        sensorA = 1;
      else 
        sensorA = 0;
     end
     
  end
  
endmodule

