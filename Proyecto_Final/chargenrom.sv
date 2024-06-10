module chargenrom(
	input logic [7:0] ch,
	input logic [2:0] xoff, yoff,
	output logic pixel
 );
 
	logic [5:0] charrom [1023:0]; 
	logic [7:0] line; 
	
	initial $readmemb("C:/Users/jcur1/OneDrive/Documentos/grupo8-digital-design-lab-2024/Proyecto_Final/charrom.bin", charrom);
	
	assign line = charrom[yoff + {ch - 32, 3'b000}]; 
	
	assign pixel = line[3'd7-xoff];
 
endmodule