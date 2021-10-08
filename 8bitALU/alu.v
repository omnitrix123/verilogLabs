module alu(a,b,sel,result);
  input [7:0]a,b;
  input [3:0]sel;
  output [12:0]result;
  reg [12:0]result;
  
  always@(*)
   begin
    case (sel)
     4'b0000: result = a + b; //add
     4'b0001: result = a - b; //subtract
     4'b0010: result = a * b; //multiply
     4'b0011: result = a / b; //divide
     4'b0100: result = a % b; //modulo
     4'b0101: result = a & b; //AND
     4'b0110: result = a | b; //OR
     4'b0111: result = a ^ b; //EXOR
     4'b1000: result = ~a;    //not a
     4'b1001: result = ~b;    //not b
     4'b1010: result = a<<1;  //shift left a
     4'b1011: result = b<<1;  //shift left b
     4'b1100: result = a>>1;  //shift right a
     4'b1101: result = b>>1;  //shift right b
     4'b1110: result = a+1;   //increment a
     4'b1111: result = a-1;   //decrement a
    default result = 8'bxxxxxxxx;
    endcase
   end
 
endmodule
    
