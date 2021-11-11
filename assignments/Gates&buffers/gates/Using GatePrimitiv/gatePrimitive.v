module gates (in1,in2,outAnd,outOr,outNot,outNand,outNor,outExor,outExnor,outBuffer);
   input in1,in2;
   output outAnd,outOr,outNand,outNor,outNot,outExor,outExnor,outBuffer;
   
   and a1 (outAnd,in1,in2);
   or o1 (outOr,in1,in2);
   nand n1 (outNand,in1,in2);
   nor n2 (outNor,in1,in2);
   not n3 (outNot,in1);
   xor x1 (outExor,in1,in2);
   xnor x2 (outExnor,in1,in2);
   buf b1 (outBuffer,in1);
     
endmodule
