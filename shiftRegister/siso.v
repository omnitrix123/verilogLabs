module siso(si,clk,ld,so);
  input si,clk,ld;
  output reg so;
  reg valstore[3:0];
  
  
  always@(posedge clk)
    begin
      if(ld == 0)
        valstore <= 4b' 0000; 
        
      else 
         so <= valstore[3];
    
    end
  
  
