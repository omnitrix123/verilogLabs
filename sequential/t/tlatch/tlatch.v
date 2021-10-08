module tlatch(t,enable,q);
	input t,enable;
	output q;
	reg q;
	
	initial q=0;
	
	always@(enable or t)
	  begin

	    if(enable & t)
	     begin
	       q <= ~q;
	     end
	    else if(enable & ~t)
	     begin
	      q <= q;
	     end   
	  end
endmodule   
	  
	      
	
