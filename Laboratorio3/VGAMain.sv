module VGAMain
(
	input logic clk, reset,
	input logic [2:0] matrix[4:0][9:0],
	output logic hSync, vSync, syncBlank, bSync,
	output logic [7:0] red, green, blue
);

	logic [9:0] hs;
	logic [9:0] vs;

	VGAController controller(clk, hSync, vSync, syncBlank, bSync, hs, vs);

	DibujarPantalla dib(reset, hs, vs, matrix, red, green, blue);
endmodule