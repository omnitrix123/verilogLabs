module sum(sumout,a,b,cin);
   input a,b,cin;
   output sumout;
   wire t1;
   
   xor G5(t1,a,b);
   xor G6(sumout,t1,cin);
   
endmodule
