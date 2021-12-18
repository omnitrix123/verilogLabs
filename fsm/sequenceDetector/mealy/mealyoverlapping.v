module mealyoverlapping(bitstream,clk,out,reset);
  input bitstream,clk,reset;
  output reg out;
  reg [2:0] NS,PS;
  
  parameter S0=0,S1=1,S2=2,S3=3,S4=4;
  
  
  always@(posedge clk or posedge reset)
   begin
    if(reset) 
     PS <= S0;
    else
     PS <= NS;
   end
   
  always@(PS)
   begin 
    case (PS)
      S0: begin
           $display("i am in s0");
           out = bitstream?0:0;
           NS = bitstream?S1:S0;
           
          end
          
      S1: begin
           $display("i am in s1");
           out = bitstream?0:0;
           NS = bitstream?S2:S0;
           
          end
          
      S2: begin
           $display("i am in s2");
           out = bitstream?0:0;
           NS = bitstream?S2:S3;
          end
     
      S3: begin
           out = bitstream?0:0;
           NS = bitstream?S4:S0;
           $display("i am in s3");
          end
          
      S4: begin
           out = bitstream?1:0;
           NS = bitstream?S2:S0;
           $display("i am in s4");
          end
          
    endcase
 end
endmodule
