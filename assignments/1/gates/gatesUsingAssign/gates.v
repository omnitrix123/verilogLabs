module gates (in1,in2,outAnd,outOr,outNot,outNand,outNor,outExor,outExnor);
   input in1,in2;
   output outAnd,outOr,outNand,outNor,outNot,outExor,outExnor;
   
   assign outAnd = in1 & in2;
   assign outOr = in1 | in2;
   assign outNand = ~(in1 & in2);
   assign outNor = ~(in1 | in2);
   assign outNot = ~in1;
   assign outExor = (in1 ^ in2);
   assign outExnor = ~(in1 ^ in2);
   
endmodule
