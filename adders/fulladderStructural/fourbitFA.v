module fourbitFA(cout,sumout,a,b,cin);
   input [3:0] a;
   input [3:0] b;
   input cin;
   output [3:0] sumout;
   output cout;
   wire [2:0] cimm;
   
   oneBitFA B0 (cimm[0], sumout[0],a[0],b[0],cin);
   oneBitFA B1 (cimm[1], sumout[1],a[1],b[1],cimm[0]);
   oneBitFA B2 (cimm[2], sumout[2],a[2],b[2],cimm[1]);
   oneBitFA B3 (cout, sumout[3],a[3],b[3],cimm[2]);
   
endmodule

