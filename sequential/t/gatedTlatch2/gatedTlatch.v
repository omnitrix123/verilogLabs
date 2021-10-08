module gatedTlatch(d,g,enable,q);
	input d,g,enable;
	output q;
	reg q;
	wire t;
	
	
	initial q=0;
	assign t=d&g;
	
	always@(enable or t)
	  begin

	    if(enable & t)
	     begin
	       q <= t^q;
	     end
	    else if(enable & ~t)
	     begin
	      q <= q;
	     end   
	  end
endmodule   
	  
	      
	
