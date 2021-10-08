module jklatch(j,k,enable,q,qbar);
   input j,k,enable;
   output q,qbar;
   reg q,qbar;
   
   always@(enable or j or k)
     begin 
       if(enable & j==0 & k==0)
         begin 
           q <= q;
           qbar <= qbar;
         end
       else if(enable & j==0 & k==1)
         begin
           q <= 0;
           qbar <= 1;
         end
       else if(enable & j==1 & k==0)
         begin
           q <= 1;
           qbar <= 0;
         end
      else if(enable & j==1 & k==1)
        begin 
          q <=  ~q;
          qbar <= ~qbar;
        end
     end   
endmodule



        
