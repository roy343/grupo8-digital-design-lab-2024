module ALU_tb();

	logic[3:0] a,b,opCode, out, ZFlag;
	
	ALU modulo(a,b,opCode, out, ZFlag);
	
	initial begin
	//SUMA
	a = 0000;
	b = 0000;
	opCode = 0000;
	#40
	a = 0001;
	b = 0000;
	opCode = 0000;
	#40
	//RESTA
	a = 0010;
	b = 0001;
	opCode = 0001;
	#40
	a = 0000;
	b = 0001;
	opCode = 0001;
	#40	
	//MULTIPLICACION
	a = 0010;
	b = 0010;
	opCode = 0010;
	#40
	a = 0010;
	b = 0001;
	opCode = 0010;
	#40		
	//DIVISION
	a = 0010;
	b = 0001;
	opCode = 0011;
	#40
	a = 0100;
	b = 0010;
	opCode = 0011;
	#40		
	//SHIFTLEFT
	a = 0010;
	opCode = 0100;
	#40
	a = 0101;
	opCode = 0100;
	#40	
	//SHIFTRIGHT
	a = 0010;
	opCode = 0101;
	#40
	a = 0101;
	opCode = 0101;
	#40	
	//AND
	a = 0001;
	b = 0001;
	opCode = 0110;
	#40
	a = 0001;
	b = 0000;
	opCode = 0110;
	#40			
	//OR
	a = 0001;
	b = 0001;
	opCode = 0111;
	#40
	a = 0001;
	b = 0000;
	opCode = 0111;	
	//XOR
		a = 0001;
	b = 0001;
	opCode = 1000;
	#40
	a = 0001;
	b = 0000;
	opCode = 1000;
	
	

	
	end
endmodule