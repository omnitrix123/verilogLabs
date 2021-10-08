module dffwithEn(data,clock,enable,q);
    input data,clock,enable;
    output q;
    reg q;
    
    always@(posedge clock)
      begin
        if(enable) 
          q <= data;
      end
      
endmodule
    
