module testbench;
	reg a,b;
	wire sum,cout;
	
	halfadder H1 (sum,cout,a,b);
	
	initial
          begin
	
	   $monitor($time, " a=%b,b=%b,cout=%b,sum=%b",a,b,cout,sum);
	   $dumpvars(0,testbench);
	   $dumpfile("halfadder.vcd");
	
	
            #5 a=0; b=0;
            #5 a=0; b=1;
            #5 a=1; b=0;
            #5 a=1; b=1;
            #5 $finish;
          end
       
endmodule  
		 
