module VGA_Main_Module(

	input logic clk,rst,win,lose,
	input logic [4:0][4:0] matrix, //Cambiar valores luego
	output logic hSync,vSync,blankSync,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25
	 
);

	logic [9:0]hs;
	logic [9:0]vs;
	
	clkdiv div(clk,clk25);
			
	ControladorGrafico cgr(clk25,hSync,vSync,blankSync,bSync,hs,vs);
	
	PintarPantalla pintor(rst,win,lose,hs,vs, matrix,red,green,blue);


endmodule