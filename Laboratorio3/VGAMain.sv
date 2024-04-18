module VGAMain(

	input logic clk,
	input logic [4:0][4:0] matrix, //Cambiar valores luego
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25
	 
);

	logic [9:0]hs;
	logic [9:0]vs;
	
	clockDivider div(clk,clk25);
			
	VGAController controller(clk25,hSync,vSync,syncBlank,bSync,hs,vs);
	
	DibujarPantalla dib(reset,win,lose,hs,vs, matrix,red,green,blue);


endmodule