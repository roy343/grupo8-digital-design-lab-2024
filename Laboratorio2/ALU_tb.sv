module ALU_tb();

	logic[3:0] a,b,opCode, out, ZFlag, NFlag, CFlag, VFlag;
	
	ALU modulo(a,b,opCode, out, ZFlag, NFlag, CFlag, VFlag);
	
	initial begin
	//SUMA
	a = 4'b0000;
	b = 4'b0000;
	opCode = 4'b0000;
	#40
	a = 4'b1111;
	b = 4'b1111;
	opCode = 4'b0000;
	#40
	//RESTA
	a = 4'b0010;
	b = 4'b0001;
	opCode = 4'b0001;
	#40
	a = 4'b0000;
	b = 4'b0001;
	opCode = 4'b0001;
	#40	
	//MULTIPLICACION
	a = 4'b0010;
	b = 4'b0010;
	opCode = 4'b0010;
	#40
	a = 4'b1111;
	b = 4'b1111;
	opCode = 4'b0010;
	#40		
	//DIVISION
	a = 4'b0010;
	b = 4'b0000;
	opCode = 4'b0011;
	#40
	a = 4'b0100;
	b = 4'b0010;
	opCode = 4'b0011;
	#40		
	//MODULO
	a = 4'b0010;
	b = 4'b0001;
	opCode = 4'b0100;
	#40
	a = 4'b0100;
	b = 4'b0010;
	opCode = 4'b0100;
	#40
	//SHIFTLEFT
	a = 4'b1010;
	opCode = 4'b0101;
	#40
	a = 4'b0101;
	opCode = 4'b0101;
	#40	
	//SHIFTRIGHT
	a = 4'b0010;
	opCode = 4'b0110;
	#40
	a = 4'b0101;
	opCode = 4'b0110;
	#40	
	//AND
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b0111;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b0111;
	#40			
	//OR
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b1000;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b1000;	
	//XOR
	a = 4'b0001;
	b = 4'b0001;
	opCode = 4'b1001;
	#40
	a = 4'b0001;
	b = 4'b0000;
	opCode = 4'b1001;
	
	

	
	end
endmodule