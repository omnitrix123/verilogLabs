module testbench;
	reg a,b,c;
	wire sum,cout;
	fulladder FA (a,b,c,sum,cout);
	initial
		begin
			$dumpfile("fulladder.vcd");
			$dumpvars(0,testbench);
			$monitor($time," a=%b,b=%b,c=%b,sum=%b,cout=%b ",a,b,c,sum,cout);
			#5 a=0; b=0; c=1;
			#5 b=1;
			#5 a=1;
			#5 $finish;
		end
endmodule
