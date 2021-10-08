`timescale 1ns / 1ps
module adderSubtractor(a, b, sum, carry, borrow);
    input [7:0]a, b;
    output [7:0]sum;
    output carry;
    output borrow;
    
    assign sum = a ^ b;
    assign carry = a & b;
    assign borrow = ~a & b;
    
endmodule


module ALU_8bit(a, b, sel, out, c_out);
    input [7:0]a, b;
    input [3:0]sel;
    output reg [7:0]out;
    output reg [7:0]temp;
    output reg c_out;
    
    wire carry, borrow;
    wire [7:0]sum;
   
    adderSubtractor(a,b,sum,carry,borrow);
    
    
    always @ (*)
        begin
        case(sel)
            4'b0000:    begin               //adder
                            out = sum;
                            c_out = carry;
                        end
            4'b0001:    begin               //subtractor
                            out = sum;
                            c_out = borrow;
                        end
            4'b0010: temp = a+1;
            4'b0011: temp = a-1;        //decrement
            4'b0100:    begin              //comparator using conditional operator (will make a mux)
                            temp = 0;        
                            out[0] = (a < b)? 1'b1: 1'b0;       //if a is less than b then save 1 at out[0]
                            out[1] = (a > b)? 1'b1: 1'b0;       //if a is greater than b then save 1 at out[1]
                            out[2] = (a == b)? 1'b1: 1'b0;      //if a is equal to b then save 1 at out[2]
                        end
            4'b0101: out = a >> 1;          //right shift
            4'b0110: out = a << 1;          //left shift
            4'b0111:    begin               //reverse
                            assign temp[0] = a[7];
                            assign temp[1] = a[6];
                            assign temp[2] = a[5];
                            assign temp[3] = a[4];
                            assign temp[4] = a[3];
                            assign temp[5] = a[2];
                            assign temp[6] = a[1];
                            assign temp[7] = a[0];
                        end      
            4'b1000: out = a & b;           //and
            4'b1010: out = a | b;           //or
            4'b1100: out = a ^ b;           //xor
            4'b1110: out = ~temp;              //not
            

        end
endmodule

