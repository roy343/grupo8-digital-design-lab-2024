module BattleshipMain(
	input logic clk,
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25

);

	logic [4:0][4:0] matrix = '{
	{4'b1011, 4'b1100, 4'b1110, 4'b1001, 4'b0000},
	{4'b1111, 4'b0111, 4'b1101, 4'b0011, 4'b1111},
	{4'b0110, 4'b1010, 4'b1100, 4'b0111, 4'b1111}, 
	{4'b1101, 4'b1000, 4'b0101, 4'b0010, 4'b1111},
	{4'b1101, 4'b1000, 4'b0101, 4'b0010, 4'b0000}
	};


	VGAMain VGA(clk,
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