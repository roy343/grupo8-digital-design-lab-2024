module VGAController(
	input logic clk25,
	output logic hSync,vSync,syncBlank,bSync,
	output logic [9:0]hs,vs);
	
	always @(posedge clk25) begin
		hs++;
		if (hs == 10'd800) begin
			hs = 0;
			vs++;
		if (vs == 10'd525) vs = 0;
		end
	end
	
									   //Parte    Porch       Parte     Porch        Sincronizacion
										//Activa   Horizontal  Activa    Horizontal   Horizontal
	assign hSync = ~(hs > 10'd640 + 10'd16 & hs < 10'd640 + 10'd16 +    10'd96);
		
		
	                           //Parte    Porch       Parte     Porch     Sincronización
										//Activa   Vertical    Activa    Vertical  Vertical
	assign vSync = ~(vs > 10'd480 + 10'd11 & vs < 10'd480 + 10'd11 +  2);

	assign bSync = hSync & vSync;		
		
									//Parte    				Parte	
									//Activa H           Activa V
	assign syncBlank = (hs < 10'd640 ) & (vs < 10'd480);
endmodule	