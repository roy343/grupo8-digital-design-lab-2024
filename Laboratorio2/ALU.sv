module ALU(
           input [3:0] A,B,                   
           input [3:0] OpCode,
           output [3:0] Out, 
           output Flag 
    );
    reg [3:0] Result;
	 assign Out = Result;
	 always @(*)
	 

    begin
        case(OpCode)
        4'b0000: // SUMA (CAMBIAR)
           Result = A + B ; 
        4'b0001: // RESTA (CAMBIAR)
           Result = A - B ;
        4'b0010: // MULTIPLICACION (CAMBIAR)
           Result = A * B; 
        4'b0011: // DIVISION (CAMBIAR)
           Result = A/B;
        4'b0100: // SHIFT LEFT
           Result = A<<1;
        4'b0101: // SHIFT RIGHT
           Result = A>>1;
        4'b1000: //  AND 
           Result = A & B;
        4'b1001: //  OR
           Result = A | B;
		   4'b1010: //  XOR
           Result = A ^ B;
          default: Result = A & B ; 
        endcase
    end

endmodule
