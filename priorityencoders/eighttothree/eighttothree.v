module eighttothree(in,out);
 input [7:0]in;
 output reg [2:0]out;
 
 always@(*)
  begin
    if (in == 8'b00000001)
      out = 3'b000;
    else if (in == 8'b0000001x)
      out = 3'b001;
    else if (in == 8'b000001xx)
      out = 3'b010;
    else if (in == 8'b00001xxx)
      out = 3'b011;
    else if (in == 8'b0001xxxx)
      out = 3'b100;
    else if (in == 8'b001xxxxx)
      out = 3'b101;
    else if (in == 8'b01xxxxxx)
      out = 3'b110;
    else if (in == 8'b1xxxxxxx)
      out = 3'b111;
    else 
      out = 3'bzzz;    
      
  end
endmodule

//the above code will not work as we are not allowed to use 
//dont cares in an if condition
// so only casex implementation is possible here
