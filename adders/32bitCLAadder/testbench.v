module testbench;
	reg [31:0]a,b;
	reg ci;
	wire [31:0]s;
	
	cla32 FA (a,b,ci,s);
	initial
		begin
			$dumpfile("thirtytwobitCLA.vcd");
			$dumpvars(0,testbench);
			$monitor($time," a=%b,b=%b,ci=%b,s=%b",a,b,ci,s);
			#0 a=32'h1234_5678; b=32'h0000_0001; ci=0;
			#5 $finish;
		end
endmodule
