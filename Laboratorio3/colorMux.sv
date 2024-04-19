module colorMux( input logic [4:0][9:0]state,
						input logic inpos,
						output logic [23:0]rgb
						);
						
		logic [23:0]out_rgb;
		logic [0:0]flag, tierra, desbloqueado, bloqueado;
		
		assign flag = state[4][1];
		assign tierra = state[4][5];
		assign desbloqueado = state[1][6];
		assign bloqueado = state[3][7];
		

		always @(*)
		
			if(flag == 1'b1)	begin
				out_rgb <= 24'b111111110000000000000000; //rojo
				
			end else if(tierra == 1'b1) begin
			
				out_rgb <= 24'b101110001000011000001011; //oro oscuro
			
			end else if(desbloqueado == 1'b1) begin
			
				out_rgb <= 24'b000000000000000011111111; //azul
			
			end else if(bloqueado == 1'b1) begin
			
				out_rgb <= 24'b110000000000000011000000; //morado
			
			end else	begin
				out_rgb <= 24'b000000000000000011111111;
			end
			
			
		assign rgb = 24'b000000000000000011111111;
			
endmodule