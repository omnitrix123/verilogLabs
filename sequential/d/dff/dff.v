module dff(data,clock,q);
   input data;
   input clock;
   output q;
   reg q;
   
   always@(negedge clock)
     begin
       q <= data;
      end
endmodule
