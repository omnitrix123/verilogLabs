module add (a,b,c,g,p,s);
 input a,b,c;
 output g,p,s;
 assign s = a^b^c;
 assign g = a&b;
 assign p = a|b;
endmodule

module gp(g,p,cin,gout,pout,cout);
 input [1:0] g, p;
 input cin;
 output gout,pout,cout;
 
 assign gout = g[1] | p[1] & g[0];
 assign pout = p[1] & p[0];
 assign cout = g[0] | p[0] & cin;
endmodule

module cla2(a,b,cin,gout,pout,s);
 input [1:0] a,b;
 input cin;
 output gout,pout;
 output [1:0] s;
 wire [1:0] g,p;
 wire cout;
 //add (a,b,c,g,p,s)
 add a0 (a[0],b[0],cin,g[0],p[0],s[0]);
 add a1 (a[1],b[1],cout,g[1],p[1],s[1]);
 //gp (g,p,cin,gout,pout,cout)
 gp gp0 (g,p,cin,gout,pout,cout);
endmodule

module cla4(a,b,cin,gout,pout,s);
 input [3:0] a,b;
 input cin;
 output gout,pout;
 output [3:0]s;
 wire [1:0]g,p;
 wire cout;
 
 cla2 c1(a[1:0],b[1:0],cin,g[0],p[0],s[1:0]);
 cla2 c2(a[3:2],b[3:2],cin,g[1],p[1],s[3:2]);
 gp gp0 (g,p,cin,gout,pout,cout);
endmodule

module cla8(a,b,cin,gout,pout,s);
 input [7:0] a,b;
 input cin;
 output gout,pout;
 output [7:0]s;
 wire [1:0]g,p;
 wire cout;
 
 cla4 c1(a[3:0],b[3:0],cin,g[0],p[0],s[3:0]);
 cla4 c2(a[7:4],b[7:4],cin,g[1],p[1],s[7:4]);
 gp gp0 (g,p,cin,gout,pout,cout);
endmodule

module cla16(a,b,cin,gout,pout,s);
 input [15:0] a,b;
 input cin;
 output gout,pout;
 output [15:0]s;
 wire [1:0]g,p;
 wire cout;
 
 cla8 c1(a[7:0],b[7:0],cin,g[0],p[0],s[7:0]);
 cla8 c2(a[15:8],b[15:8],cin,g[1],p[1],s[15:8]);
 gp gp0 (g,p,cin,gout,pout,cout);
endmodule

module cla_32(a,b,cin,gout,pout,s);
 input [31:0] a,b;
 input cin;
 output gout,pout;
 output [31:0]s;
 wire [1:0]g,p;
 wire cout;
 
 cla16 c1(a[15:0],b[15:0],cin,g[0],p[0],s[15:0]);
 cla16 c2(a[31:16],b[31:16],cin,g[1],p[1],s[31:16]);
 gp gp0 (g,p,cin,gout,pout,cout);
endmodule

module cla32(a,b,ci,s);
 input [31:0] a,b;
 input ci;

 output [31:0]s;
 
 wire gout,pout;
 
 cla_32 c1 (a,b,ci,gout,pout,s);

endmodule



 
