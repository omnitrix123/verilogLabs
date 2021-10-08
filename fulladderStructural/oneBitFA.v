module oneBitFA(cout,sumout,a,b,cin);
   input a,b,cin;
   output cout,sumout;
   
   sum S1(sumout,a,b,cin);
   carry C1(cout,a,b,cin);
   
endmodule



