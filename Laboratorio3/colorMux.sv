module colorMux( input logic [2:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;

		always @(*)
			case (state)
				3'd0: out_rgb <= 24'b000000001111111111111111; // Light blue
            3'd1, 3'd2, 3'd3, 3'd4, 3'd5: out_rgb <= 24'b100000001000000010000000; // Grey
				3'd6: out_rgb <= 24'b100000000000000000000000; // Red
				3'd7: out_rgb <= 24'b111100001110011010001100; // Yellow
            default: out_rgb <= 24'b000000000000000000000000; // Default to black
         endcase
			
			
		assign rgb = out_rgb;
			
endmodule