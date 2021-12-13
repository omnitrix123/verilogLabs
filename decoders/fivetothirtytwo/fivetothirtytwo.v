module fivetothirtytwo (in,out,en);        
 input  [4:0]in;             
 input en;               
 output reg [31:0] out;                 
  always @ (en or in)
   begin      
      out = 32'b0;           
      out[in] = en;                
   end
endmodule
