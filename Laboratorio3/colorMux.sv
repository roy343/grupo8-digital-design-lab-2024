module colorMux( input logic [2:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;

		always @(*)
			case (state)
				0: out_rgb <= 24'b000000001111111111111111; // Light blue
            1, 2, 3, 4, 5: out_rgb <= 24'b100000001000000010000000; // Grey
				6: out_rgb <= 24'b100000000000000000000000; // Red
				7: out_rgb <= 24'b111100001110011010001100; // Yellow
            default: out_rgb <= 24'b000000000000000000000000; // Default to black
         endcase
			
			
		assign rgb = out_rgb;
			
endmodule