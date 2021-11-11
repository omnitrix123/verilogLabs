module gateTestbench;
   reg in1,in2;
   wire outAnd,outNot,outNand,outNor,outOr,outExor,outExnor;
   
   gates G1 (in1,in2,outAnd,outOr,outNot,outNand,outNor,outExor,outExnor);
   
   initial 
      begin
        $monitor($time," in1=%b,in2=%b,outAnd=%b,outOr=%b,outNot=%b,outNand=%b,outNor=%b,outExor=%b,outExnor=%b",in1,in2,outAnd,outOr,outNot,outNand,outNor,outExor,outExnor);
         $dumpfile("gatedump.vcd");
         $dumpvars(0,gateTestbench);
         
         #2 in1=0; in2=0;
         #2 in1=0; in2=1;
         #2 in1=1; in2=0;
         #2 in1=1; in2=1;
         #2 $finish;
         
         end 
endmodule
                 
