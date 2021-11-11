module tristatebuffers (in,ctrlbuf1,ctrlbuf0,ctrlnot0,ctrlnot1,outBufif1,outBufif0,outNotif0,outNotif1);
   input in,ctrlbuf1,ctrlbuf0,ctrlnot0,ctrlnot1;
   output outBufif1,outBufif0,outNotif0,outNotif1;
   
   bufif1 b1 (outBufif1,in,ctrlbuf1);
   bufif0 b2 (outBufif0,in,ctrlbuf0);
   notif0 n1 (outNotif0,in,ctrlnot0);
   notif1 n2 (outNotif1,in,ctrlnot1);
     
endmodule
