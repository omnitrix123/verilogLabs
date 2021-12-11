module oneto8demux(a,sel,out);
 input a;
 input [2:0]sel;
 output reg [7:0]out;
 
 always@(a or sel) 
  out = 8'b00000000;
  out[sel] = a;

endmodule
        

