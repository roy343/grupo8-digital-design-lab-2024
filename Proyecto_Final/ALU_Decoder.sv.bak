module ALU_Decoder (
	input logic ALUOp,
	input logic [4:0] Funct,
	output logic [1:0] FlagW,
	output logic [4:0] ALUControl
);
	
	always_comb begin
		case (ALUOp) 
			1'b1: begin // DP
				case (Funct[4:1])
					4'b0100: begin  //  ADD
						if (Funct[0]) begin
							ALUControl = 4'b0010;
							FlagW = 2'b11;
						end else begin
							ALUControl = 4'b0010;
							FlagW = 2'b00;
						end
					end
					4'b0010: begin  //  SUB
						if (Funct[0]) begin
							ALUControl = 4'b0110;
							FlagW = 2'b11;
						end else begin
							ALUControl = 4'b0110;
							FlagW = 2'b00;
						end
					end
					4'b0000: begin  //  AND
						if (Funct[0]) begin
							ALUControl = 4'b0000;
							FlagW = 2'b10;
						end else begin
							ALUControl = 4'b0000;
							FlagW = 2'b00;
						end
					end
					4'b1100: begin  //  OR
						if (Funct[0]) begin
							ALUControl = 4'b0001;
							FlagW = 2'b10;
						end else begin
							ALUControl = 4'b0001;
							FlagW = 2'b00;
						end
					end
				endcase
			end
			1'b0: begin  // Not DP
				ALUControl = 4'b0010;
				FlagW = 2'b00;
			end
		endcase
	end
endmodule