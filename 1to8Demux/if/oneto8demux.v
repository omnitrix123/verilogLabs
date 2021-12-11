module oneto8demux(a,en,sel,out);
 input a;
 input en;
 input [2:0]sel;
 output reg [7:0]out;
 
 always@(*)
 begin
 if(en)
   begin 
     if (sel == 3'b000)
        out[0] = a;
     else if (sel == 3'b001)
        out[1] = a;
     else if (sel == 3'b010)
        out[2] = a;
     else if (sel == 3'b011)
        out[3] = a;
     else if (sel == 3'b100)
        out[4] = a;
     else if (sel == 3'b101)
        out[5] = a;
     else if (sel == 3'b110)
        out[6] = a;
     else if (sel == 3'b111)
        out[7] = a;
    end
  else 
     out = 8'bzzzzzzzz;
 end
endmodule
        

