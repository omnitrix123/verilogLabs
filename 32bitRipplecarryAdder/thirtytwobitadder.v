module thirtytwobitFA(cout,sumout,a,b,cin);
   input [31:0] a;
   input [31:0] b;
   input cin;
   output [31:0] sumout;
   output cout;
   wire cimm;
   
   sixteenbitFA B320 (cimm, sumout[15:0],a[15:0],b[15:0],cin);
   sixteenbitFA B321 (cout, sumout[31:16],a[31:16],b[31:16],cimm);
   
endmodule


module sixteenbitFA(cout,sumout,a,b,cin);
   input [15:0] a;
   input [15:0] b;
   input cin;
   output [15:0] sumout;
   output cout;
   wire cimm;
   
   eightbitFA B160 (cimm, sumout[7:0],a[7:0],b[7:0],cin);
   eightbitFA B161 (cout, sumout[15:8],a[15:8],b[15:8],cimm);
   
endmodule


module eightbitFA(cout,sumout,a,b,cin);
   input [7:0] a;
   input [7:0] b;
   input cin;
   output [7:0] sumout;
   output cout;
   wire cimm;
   
   fourbitFA B80 (cimm, sumout[3:0],a[3:0],b[3:0],cin);
   fourbitFA B81 (cout, sumout[7:4],a[7:4],b[7:4],cimm);
   
endmodule


module fourbitFA(cout,sumout,a,b,cin);
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
