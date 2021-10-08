module dff(d,clk,q);
   input d,clk;
   output reg q;
   
   always@(posedge clk)
     begin
       q <= d;
     end
     
endmodule


module sisorotateright (si,clk,so);
   input si,clk;
   output so;
   wire q3,q2,q1;
   
   dff D3 (si,clk,q3);
   dff D2 (q3,clk,q2);
   dff D1 (q2,clk,q1);
   dff D0 (q1,clk,so);
   dff D5 (so,clk,si);
   
endmodule
