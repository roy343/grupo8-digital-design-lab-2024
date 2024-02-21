module Decoder_tb();

	logic a,b,c,d,t,u,v,w,x,y,z;
	
	Decoder modulo(a,b,c,d,t,u,v,w,x,y,z);
	
	initial begin 
	
	a = 0;
	b = 0;
	c = 0;
	d = 0;
	#40
	a = 0;
	b = 0;
	c = 0;
	d = 1;
	#40
	a = 0;
	b = 0;
	c = 1;
	d = 0;
	#40
	a = 0;
	b = 0;
	c = 1;
	d = 1;
	#40
	a = 0;
	b = 1;
	c = 0;
	d = 0;
	#40
	a = 0;
	b = 1;
	c = 0;
	d = 1;
	#40
	a = 0;
	b = 1;
	c = 1;
	d = 0;
	#40
	a = 0;
	b = 1;
	c = 1;
	d = 1;
	#40
	a = 1;
	b = 0;
	c = 0;
	d = 0;
	#40
	a = 1;
	b = 0;
	c = 0;
	d = 1;
	
	end
endmodule