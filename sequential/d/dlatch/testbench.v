module testbench;
	reg data,enable;
	wire q;
	
	dlatch D1 (data,enable,q);
	
	initial
	  begin
	    $monitor($time," data=%b,enable=%b,q=%b",data,enable,q);
	    $dumpfile("waveform.vcd");
	    $dumpvars(0,testbench);
	    
	    #5 enable=0; data=1;
	    #5 enable=1;
	    
	    #5 $finish;
	  end
endmodule
