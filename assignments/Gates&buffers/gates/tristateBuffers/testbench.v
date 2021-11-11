module testbench;
   reg in,ctrlbuf1,ctrlbuf0,ctrlnot0,ctrlnot1;
   wire outBufif1,outBufif0,outNotif0,outNotif1;
   
   tristatebuffers G1 (in,ctrlbuf1,ctrlbuf0,ctrlnot0,ctrlnot1,outBufif1,outBufif0,outNotif0,outNotif1);
   
   initial 
      begin
        $monitor($time," in=%b,ctrlbuf1=%b,ctrlbuf0=%b,ctrlnot0=%b,ctrlnot1=%b,outBufif1=%b,outBufif0=%b,outNotif0=%b,outNotif1=%b",in,ctrlbuf1,ctrlbuf0,ctrlnot0,ctrlnot1,outBufif1,outBufif0,outNotif0,outNotif1);
         $dumpfile("gatedump.vcd");
         $dumpvars(0,testbench);
         
         #0 in=1; ctrlbuf1=0; //outBufif1 = Z
         #2 in=1; ctrlbuf1=1; //outBufif1 = 1
         #2 in=1; ctrlbuf0=0; //outBufif0 = 1
         #2 in=1; ctrlbuf0=1; //outBufif0 = Z
         #2 in=1; ctrlnot0=0; //outNotif0 = 0
         #2 in=1; ctrlnot0=1; //outNotif0 = Z
         #2 in=1; ctrlnot1=0; //outNotif1 = Z
         #2 in=1; ctrlnot1=1; //outNotif1 = 0
         #2 $finish;
         
         end 
endmodule
              
