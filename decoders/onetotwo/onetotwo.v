module onetotwo(in,out,en);
 input in;
 input en;
 output [1:0]out;
  
 assign out[0]= en&~in;
 assign out[1]= en&in;

endmodule
