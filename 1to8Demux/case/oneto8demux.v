module oneto8demux  (a,select,out);
  input a;
  input [2:0]select;
  output [7:0]out;
  reg [7:0]out;
  
  always@(*)
  begin 
    case(select)
    3'b000: out[0] = a;
    3'b001: out[1] = a;
    3'b010: out[2] = a;
    3'b011: out[3] = a;
    3'b100: out[4] = a;
    3'b101: out[5] = a;
    3'b110: out[6] = a;
    3'b111: out[7] = a;
    default: out = 1'bx;
    endcase 
  end
endmodule
