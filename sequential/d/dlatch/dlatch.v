module dlatch(data,enable,q);
	input data,enable;
	output q;
	reg q;
	
	always@(data or enable)
	  begin
	    if(enable)
	      begin
	        q = data;
	      end
	  end
endmodule
	    
	 
	
