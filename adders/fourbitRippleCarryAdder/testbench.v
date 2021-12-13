module testbench;
	reg [3:0]a,b;
	reg cin;
	wire [3:0]sumout;
	wire cout;
	
	rippleCA FA (cout,sumout,a,b,cin);
	initial
		begin
			$dumpfile("fourbitRCA.vcd");
			$dumpvars(0,testbench);
			$monitor($time," a=%b,b=%b,cin=%b,sumout=%b,cout=%b ",a,b,cin,sumout,cout);
			#5 a=4'b1000; b=4'b1000; cin=0;
			#5 a=4'b1000; b=4'b1111; cin=0;
			#5 a=4'b0010; b=4'b1000; cin=0;
			#5 $finish;
		end
endmodule
