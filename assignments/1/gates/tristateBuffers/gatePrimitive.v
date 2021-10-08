module gates (in,outAnd,outOr,outNot,outNand,outNor,outExor,outExnor,outBuffer);
   input in1,in2;
   output outAnd,outOr,outNand,outNor,outNot,outExor,outExnor,outBuffer;
   
   bufif1 b1 (outBufif1,in,ctrlbuf1);
   bufif0 b2 (outBufif0,in,ctrlbuf0);
   notif0 n1 (outNotif0,in,ctrlnot0);
   notif1 n2 (outNotif1,in,ctrlnot1);
     
endmodule
