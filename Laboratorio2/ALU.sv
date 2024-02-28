module ALU (input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [3:0] OpCode,// ALU Selection
           output [7:0] Out, // ALU 8-bit Output
           output Flag);
			  
	reg [7:0] Result;
	wire [8:0] tmp;
	assign Out = ALU_Result;
	
	begin
        case(ALU_Sel)
		  

        default: ALU_Result = A + B ; 
        endcase
    end