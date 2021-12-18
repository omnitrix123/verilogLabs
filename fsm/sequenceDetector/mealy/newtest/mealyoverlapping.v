module mealyoverlapping(bitstream,clk,out,reset);
  input bitstream,clk,reset;
  output reg out;
  reg [1:0] NS,PS;
  
  parameter S0=0,S1=1,S2=2,S3=3;
  
  
  always@(posedge clk or posedge reset)
   begin
    if(reset) 
     PS <= S0;
    else
     PS <= NS;
   end
   
  always@(PS,bitstream)
   begin 
    case (PS)
      S0: begin
           out = bitstream?0:0;
           NS = bitstream?S0:S1;
          end
          
      S1: begin
           out = bitstream?0:0;
           NS = bitstream?S2:S1;
          end
          
      S2: begin
           out = bitstream?0:0;
           NS = bitstream?S3:S1;
          end
          
      S3: begin
           out = bitstream?0:1;
           NS = bitstream?S0:S1;
          end
          
    endcase
 end
endmodule
