module BattleshipMain(

	input logic clk,
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25

);

	logic [4:0][9:0] matrix;




	VGAMain VGA(
	clk,
	matrix,
	hSync,
	vSync,
	syncBlank,
	bSync,
	red,
	green,
	blue,
	clk25);
	
endmodule