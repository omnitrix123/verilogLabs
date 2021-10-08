module eightbitFA(cout,sumout,a,b,cin);
   input [7:0] a;
   input [7:0] b;
   input cin;
   output [7:0] sumout;
   output cout;
   wire [1:0] cimm;
   
   fourBitFA B0 (cimm[0], sumout[3:0],a[3:0],b[3:0],cin);
   fourBitFA B1 (cimm[1], sumout[7:4],a[7:4],b[7:4],cimm[0]);
   
endmodule

