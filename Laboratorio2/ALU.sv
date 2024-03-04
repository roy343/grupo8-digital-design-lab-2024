module ALU(
           input logic [3:0] a,b,                   
           input logic [3:0] opCode,
           output logic [3:0] out,
			  output ZFlag, NFlag, CFlag, VFlag
    );
	 
    logic [3:0] result;
	 
	 always @(*)
    begin
         case(opCode)
        4'b0000: // SUMA (CAMBIAR)
           result = a + b;
        4'b0001: // RESTA (CAMBIAR)
           result = a - b ;
        4'b0010: // MULTIPLICACION (CAMBIAR)
           result = a * b; 
        4'b0011: // DIVISION (CAMBIAR)
           result = a/b;
        4'b0100: // SHIFT LEFT
           result = a<<1;
        4'b0101: // SHIFT RIGHT
           result = a>>1;
        4'b0110: //  AND 
           result = a & b;
        4'b0111: //  OR
           result = a | b;
		  4'b1000: //  XOR
           result = a ^ b;
          default: result = a & b ; 
        endcase
    end
	 
	 	  assign out = result;
		  
		  assign ZFlag = (out==0);

endmodule
