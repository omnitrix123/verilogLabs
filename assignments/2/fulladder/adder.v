module fulladder(sum,cout,a,b,c);
	input a,b,c;
	output sum,cout;
	assign sum = a+b;
	assign cout = (a&b) | (b&c) | (c&a);
endmodule
