module Extend (
    input logic [31:0] Instruction,
	 input logic [1:0] ImmSrc,
    output logic [31:0] Immediate
);

    always @* begin
		case(ImmSrc)
          2'00: Immediate = { {24{1'b0}}, Instruction[7:0] }; // Data-Processing
						
		    2'01: Immediate = { {20{1'b0}}, Instruction[11:0] }; // Load-Store
			
		    2'10: Immediate = { {6{Instruction[23]}}, Instruction[23:0], {2{1'b0}}};// Branches

          default: Immediate = 32'h0;
		endcase
    end

endmodule