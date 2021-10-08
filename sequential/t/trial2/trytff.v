module trytff(t,e,q,a);
  input t,e;
  output q,a;
  reg q,a;
  
  initial q=0;
  initial a=0;

  always@(t or e)
    begin 
     if(e & t)
       begin 
         q <= t^a;
         a <= q;
       end
     else
       q <= q;
    end
endmodule


