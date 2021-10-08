module testbench;
	reg a,b,sel;
	wire out;
	
	twoistoonemux M1 (out,sel,a,b);
	
	initial 
	  begin 
	  
	    $monitor($time,"a=%b,b=%b,sel=%b,out=%b",a,b,sel,out);
	    $dumpfile("waveform.vcd");
	    $dumpvars(0,testbench);
	    
	    a=0; b=1; 
	    #5 sel=0;
	    #5 sel=1;
	    #5 $finish;
	   
	 end

endmodule

	   
