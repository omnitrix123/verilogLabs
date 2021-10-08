module trytff(t,e,q);
  input t,e;
  output q;
  reg q;
  
  initial q=0;

  always@(t or e)
    begin 
     if(e & t)
       begin 
         q <= t^q;
       end
     else
       q <= q;
    end
endmodule


