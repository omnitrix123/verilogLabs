module carry (cout,a,b,cin);
   input a,b,cin;
   output cout;
   wire t1,t2,t3;
   
   and G1(t1,a,b);
   and G2(t2,b,cin);
   and G3(t3,a,cin);
   or G4(cout,t1,t2,t3);
  
endmodule


   
