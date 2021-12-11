module testbench;
	reg a;
	wire y0,y1;
	
	decoder2bit D1 (a,y0,y1);
	
	initial 
	  begin
	    $monitor($time, " a=%b,y0=%b,y1=%b",a,y0,y1);
	    $dumpfile("waveform.vcd");
	    $dumpvars(0,testbench);
	    
	    #5 a=0;
	    #5 a=1;
	    #5 $finish;
	    
	  end
endmodule
