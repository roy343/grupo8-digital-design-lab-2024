module ALU_Decoder (
	input logic ALUOp,
	input logic [4:0] Funct,
	output logic [1:0] FlagW,
	output logic [1:0] ALUControl,
	output logic NoWrite
);
	
	always_comb begin
	
		ALUControl = 2'b00;
      FlagW = 2'b00;
      NoWrite = 0;
		case (ALUOp) 
			1'b1: begin // DP
				case (Funct[4:1])
					4'b0100: begin  //  ADD
						if (Funct[0]) begin
							ALUControl = 2'b10;
							FlagW = 2'b11;
							NoWrite = 0;
						end else begin
							ALUControl = 2'b10;
							FlagW = 2'b00;
							NoWrite = 0;
						end
					end
					4'b0010: begin  //  SUB
						if (Funct[0]) begin
							ALUControl = 2'b11;
							FlagW = 2'b11;
							NoWrite = 0;
						end else begin
							ALUControl = 2'b11;
							FlagW = 2'b00;
							NoWrite = 0;
						end
					end
					4'b0000: begin  //  AND
						if (Funct[0]) begin
							ALUControl = 2'b00;
							FlagW = 2'b10;
							NoWrite = 0;
						end else begin
							ALUControl = 2'b00;
							FlagW = 2'b00;
							NoWrite = 0;
						end
					end
					4'b1100: begin  //  OR
						if (Funct[0]) begin
							ALUControl = 2'b01;
							FlagW = 2'b10;
							NoWrite = 0;
						end else begin
							ALUControl = 2'b01;
							FlagW = 2'b00;
							NoWrite = 0;
						end
					end
					4'b1010: begin  //  CMP
						if (Funct[0]) begin
							ALUControl = 2'b11;
							FlagW = 2'b11;
							NoWrite = 1;
						end
					end
					default: begin
                  ALUControl = 2'b00;
                  FlagW = 2'b00;
						NoWrite = 0;
					end
				endcase
			end
			1'b0: begin  // Not DP
				ALUControl = 2'b10;
				FlagW = 2'b00;
				NoWrite = 0;
			end
			default: begin
            ALUControl = 2'b00;
            FlagW = 2'b00;
            NoWrite = 0;
         end
		endcase
	end
endmodule