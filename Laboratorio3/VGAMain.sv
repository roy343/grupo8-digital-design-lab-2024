module VGAMain
(
	input logic clk,
	input logic [2:0] matrix[4:0][9:0],
	output logic hSync, vSync, syncBlank, bSync,
	output logic [7:0] red, green, blue,
	output logic clk_25
);

	logic [9:0] hs;
	logic [9:0] vs;

	clockDivider div(clk, clk_25);

	VGAController controller(clk_25, hSync, vSync, syncBlank, bSync, hs, vs);

	DibujarPantalla dib(reset,win,lose,hs,vs,matrix,red,green,blue);
endmodule