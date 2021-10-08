module testFA;

   reg [3:0] a;
   reg [3:0] b;
   reg cin;
   wire cout;
   wire [3:0] sumout;
   
   fourbitFA F1 (cout,sumout,a,b,cin);
   
   initial
		begin
			$dumpfile("fulladder.vcd");
			$dumpvars(0,testFA);
			$monitor($time," a=%b,b=%b,cin=%b,sumout=%b,cout=%b ",a,b,cin,sumout,cout);
			#5 a=4'b0110; b=4'b0110; cin=0;
			#5 a=4'b0010; b=4'b0111; cin=1;
			#5 a=4'b1010; b=4'b0111; cin=1;
			#5 a=4'b1010; b=4'b0111; cin=1;
			#5 $finish;
		end
endmodule
   
   
