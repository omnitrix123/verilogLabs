module halfadder(p,q,s,c);
  input p,q;
  output s,c;
  
  assign s = p^q;
  assign c = p&q;
  
endmodule


module fulladder(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  wire s1,c1,c2;
  
  halfadder H1 (a,b,s1,c1);
  halfadder H2 (s1,cin,sum,c2);
  
  or O1 (carry,c2,c1);
  
endmodule


