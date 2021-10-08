module demux12(a,sel,y);
	input a,sel;
	output [1:0]y;
	
        assign y[sel] = a;
	
endmodule


