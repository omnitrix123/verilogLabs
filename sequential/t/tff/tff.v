module tff(t,clock,q);
	input t,clock;
	output q;
	reg q;
	
	initial q=0;
	
	always@(posedge clock)
	  begin 
	   if (t)
	     q <= ~q;
	   else 
	     q <= q;
	  end
endmodule 
