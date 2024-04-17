module BattleshipMain(
	input logic clk, reset,

	
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25

);

	logic [4:0][4:0] matrix;


	VGAMain display(.clk(clk), .reset(reset), .matrix(matrix),
	.hSync(hSync),
	.vSync(vSync),
	.syncBlank(syncBlank),
	.bSync(bSync),
	.red(red),
	.green(green),
	.blue(blue),
	.clk25(clk25));
	
endmodule