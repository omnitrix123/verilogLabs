module fourto1  (a,select,out);
  input [3:0]a;
  input [1:0]select;
  output reg out;
   
  always@(*)
  begin 
    case(select)
    2'b00: out = a[0];
    2'b01: out = a[1];
    2'b10: out = a[2];
    2'b11: out = a[3];
    default: out = 1'bx;
    endcase 
  end
endmodule

module sixteento1 (A,S,Out);
  input [15:0] A;
  input [3:0] S;
  output Out;
  wire [3:0]O;
  
   fourto1 F1 (A[3:0],S[1:0],O[0]);
   fourto1 F2 (A[7:4],S[1:0],O[1]);
   fourto1 F3 (A[11:8],S[1:0],O[2]);  
   fourto1 F4 (A[15:12],S[1:0],O[3]);
   fourto1 F5 (O[3:0],S[3:2],Out);
  
endmodule
