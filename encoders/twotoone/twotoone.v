module twotoone(in,out);
 input [1:0]in;
 output out;
 
 assign out = in[1]&(~in[0]);
 
 endmodule
