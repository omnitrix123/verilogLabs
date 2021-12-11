module testbench;
	reg a,sel;
	wire y0,y1;
	
	demux12 D1 (a,sel,y0,y1);
	
	initial 
	  begin
	    $monitor($time," a=%b,sel=%b,y0=%b,y1=%b",a,sel,y0,y1);
	    $dumpfile("waveform.vcd");
	    $dumpvars(0,testbench);
	    
	    #5 a=0; sel=0;
	    #5 a=0; sel=1;
	    #5 a=1; sel=0;
	    #5 a=1; sel=1;
	    #5 $finish;
	 end
endmodule
