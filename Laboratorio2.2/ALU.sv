module ALU#(parameter N = 4)
	(
           input logic [N-1:0] a,b,                   
           input logic [3:0] opCode,
           output logic [N-1:0] out,
			  output logic ZFlag, NFlag, CFlag, VFlag
    );
	 
		logic [N-1:0] result;
		logic tempCarry;
		logic tempOf;

		wire [N-1:0] sumResult, resResult, multResult, divResult, modResult,
		sllResult, srlResult, andResult, orResult, xorResult;
		
		wire carrySuma, resNeg, sumOf, resOf, multOf, divOf, sllOf;
	
		OpSuma #(.N(N)) sum(.A(a), .B(b), .Cin(1'b0),.Sum(sumResult), .Cout(carrySuma), .v(sumOf));
		OpSuma #(.N(N)) res(.A(a), .B(~b), .Cin(1'b1),.Sum(resResult), .Cout(resNeg), .v(resOf));
		OpMult #(.N(N)) mult(.A(a), .B(b), .C(multResult), .v(multOf));
		OpDiv  #(.N(N)) div(.A(a), .B(b), .Q(divResult), .R(modResult), .v(divOf));
		//OpDiv #(.N(N))  mod(.A(a), .B(b), .Q(), .R(modResult));
  
		ShiftLeft  #(.N(N)) sll(.a(a), .y(sllResult), .v(sllOf));
		ShiftRight #(.N(N)) srl(.a(a), .y(srlResult));
  
		AndModule #(.N(N)) andG(.a(a), .b(b), .y(andResult));
		OrModule  #(.N(N)) orG(.a(a), .b(b), .y(orResult));
		XorModule #(.N(N)) xorG(.a(a), .b(b), .y(xorResult));
	 
	 always @(*)
	 
    begin
         case(opCode)
        4'b0000: // SUMA 
			begin
				result = sumResult; 
				tempCarry = carrySuma;
				tempOf = sumOf;
			end
        4'b0001: // RESTA 
			begin
				result = resResult; 
				tempCarry = resNeg;
				tempOf = resOf;				
			end
        4'b0010: // MULTIPLICACION 
			begin
				result = multResult; 	
				tempOf = multOf;			
			end      
        4'b0011: // DIVISION 
			begin
				result = divResult; 	
				tempOf = divOf;			
			end 
        4'b0100: // MODULO
			begin
				result = modResult;
				tempOf = divOf;				
			end 
        4'b0101: // SHIFT LEFT
			begin
				result = sllResult; 
				tempOf = sllOf;				
			end 
        4'b0110: // SHIFT RIGHT
			begin
				result = srlResult; 		  
			end 
        4'b0111: //  AND 
			begin
				result = andResult; 		  
			end  
        4'b1000: //  OR
			begin
				result = orResult; 		  
			end  
		  4'b1001: //  XOR
			begin
				result = xorResult; 		  
			end
			
         default: result = {N{1'bx}} ; 
			
        endcase
    end
	 
	 	  assign out = result;
		  
		  assign ZFlag = (out==0);
		  assign NFlag = result[N-1];
		  assign CFlag = (opCode == 4'b0000 | opCode == 4'b0001) ? tempCarry : 0;
		  assign VFlag = tempOf;

endmodule
