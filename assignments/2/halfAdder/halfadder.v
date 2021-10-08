module halfadder(sum,cout,a,b);
	input a,b;
	output sum,cout;
	
	assign sum = a ^ b;
	assign cout = a & b;
	
endmodule
