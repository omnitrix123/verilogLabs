module testbench;
	reg i0,i1;
	wire out;
	
	encoder2bit E1 (i0,i1,out);
	
	initial
	  begin
	    $monitor($time,"i0=%b,i1=%b,out=%b",i0,i1,out);
	    $dumpfile("waveform.vcd");
	    $dumpvars(0,testbench);
	    
	    #5 i0=0;i1=1;
	    #5 i0=1;i1=0;
	    #5 $finish;
	  end
	    
endmodule
