module encoder2bit(i0,i1,out);
	input i0,i1;
	output out;
	
	assign out = (i0 & ~i1);
	
endmodule


