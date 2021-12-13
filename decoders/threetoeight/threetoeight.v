module threetoeight (in,out,en);        
 input  [2:0]in;             
 input en;               
 output reg [7:0] out;                 
  always @ (en or in)
   begin      
      case(in)
        3'b000: out = 8'b0000_0001;
        3'b001: out = 8'b0000_0010;
        3'b010: out = 8'b0000_0100;
        3'b011: out = 8'b0000_1000;
        3'b100: out = 8'b0001_0000;
        3'b101: out = 8'b0010_0000;
        3'b110: out = 8'b0100_0000;
        3'b111: out = 8'b1000_0000; 
        default: out = 8'bz;  
      endcase          
   end
endmodule
