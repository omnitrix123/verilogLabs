module twoistoonemux(out,sel,a,b);

	input a,b,sel;
	
	output out;
	
	assign out = (~sel & a) | (sel & b);

endmodule

