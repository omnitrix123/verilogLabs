module sixteenbitOptimumAdder(a,b,cin,sum,cout);
  input [15:0]a;
  input [15:0]b;
  input cin;
  output [15:0]sum;
  output cout;
  
  carrylookahead 

endmodule

module carrylookahead (a,b,cin,sum,cout);
  input [3:0]a;
  input [3:0]b;
  input cin;
  output [3:0]sum;
  output cout;
  wire p0,g0,p1,g1,p2,g2,p3,g3;
  wire c1,c2,c3;
  
  assign p0 = a[0] ^ b[0], p1 = a[1] ^ b[1],
         p2 = a[2] ^ b[2], p3 = a[3] ^ b[3];
         
  assign g0 = a[0] & b[0], g1 = a[1] & b[1],
         g2 = a[2] & b[2], g3 = a[3] & b[3];
  
  assign c1 = g0 | (p0 & cin),
         c2 = g1 | (p1 & g0) | (p1 & p0 & cin),
         c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin),
       cout = g3 | (p3 & g3) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & cin);
       
  assign sum[0] = p0 ^ cin,
         sum[1] = p1 ^ c1,
         sum[2] = p2 ^ c2,
         sum[3] = p3 ^ c3;
         
endmodule
  
module rippleCA(cout,sumout,a,b,cin);
   input [3:0] a;
   input [3:0] b;
   input cin;
   output [3:0] sumout;
   output cout;
   wire [2:0] cimm;
   
   onebitFA B40 (cimm[0], sumout[0],a[0],b[0],cin);
   onebitFA B41 (cimm[1], sumout[1],a[1],b[1],cimm[0]);
   onebitFA B42 (cimm[2], sumout[2],a[2],b[2],cimm[1]);
   onebitFA B43 (cout, sumout[3],a[3],b[3],cimm[2]);
   
endmodule


module onebitFA(cout,sumout,a,b,cin);
   input a,b,cin;
   output cout,sumout;
   
   sum S1(sumout,a,b,cin);
   carry C1(cout,a,b,cin);
   
endmodule

module sum(sumout,a,b,cin);
   input a,b,cin;
   output sumout;
   wire t1;
   
   xor G5(t1,a,b);
   xor G6(sumout,t1,cin);
   
endmodule

module carry (cout,a,b,cin);
   input a,b,cin;
   output cout;
   wire t1,t2,t3;
   
   and G1(t1,a,b);
   and G2(t2,b,cin);
   and G3(t3,a,cin);
   or G4(cout,t1,t2,t3);
  
endmodule
