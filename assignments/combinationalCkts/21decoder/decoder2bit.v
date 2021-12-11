module decoder2bit(a,y0,y1);
	input a;
	output y0,y1;
	
	assign y0=a;
	assign y1=~a;
	
endmodule

