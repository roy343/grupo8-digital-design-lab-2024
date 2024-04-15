module colorMux( input logic [2:0]state,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;
		
		always @(*)
			begin
				case({state})
				
				3'b000 : out_rgb <= 24'b000000000000000000000000; //Negro
				3'b001 : out_rgb <= 24'b000000000110100110010100; //Azul marino - Agua
				3'b010 : out_rgb <= 24'b011001100110011001100110; //Azul oscuro - Golpe en agua
				3'b011 : out_rgb <= 24'b100000001000000010000000; //Gris - Barco
				3'b100 : out_rgb <= 24'b001000000010000000100000; //Gris oscuro - Golpe en barco

				                        
				default : out_rgb <= 24'b000000000000000000000000;
				
				endcase
			end
			
		assign rgb = out_rgb; 
			
endmodule