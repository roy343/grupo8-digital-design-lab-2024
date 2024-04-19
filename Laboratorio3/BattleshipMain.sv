module BattleshipMain(

	input logic clk, reset, confirm,
	input logic [2:0] shipQ,
	input logic [3:0] mov,
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25,
	output logic [2:0] x = 0,
	output logic [2:0] y = 0,
	output logic [13:0] dispCount, dispPships, dispEships
);

	logic [2:0] matrix[4:0][9:0];
	logic clk25MHz;
	logic clk1Hz;
	logic [2:0] playerBoard[4:0][4:0];
	logic [2:0] EnvBoard[4:0][4:0];
	logic [1:0] game_state;
	
	always @(playerBoard or EnvBoard) begin
		for (int i = 0; i < 5; i++) begin
			 for (int j = 0; j < 5; j++) begin
				  matrix[i][j] = EnvBoard[i][j];
			 end
		end

		for (int i = 0; i < 5; i++) begin
			 for (int j = 0; j < 5; j++) begin
				  matrix[i][j+5] = playerBoard[i][j];
			 end
		end
	end

	clockDivider div(
		.clk(clk),
		.clk_25(clk25MHz),
		.clk_1Hz(clk1Hz)
	);

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
	
	battleship gameFSM (
    .clk(clk25MHz),
	 .clk1(clk1Hz),
    .rst(reset),
	 .confirm(confirm),
    .shipQ(shipQ),
    .mov(~mov),
	 .x(x),
	 .y(y),
    .boardP(playerBoard),
	 .boardE(EnvBoard),
    .game_state(game_state),
	 .dispCount(dispCount),
	 .dispPships(dispPships),
	 .dispEships(dispEships)
  );
	
endmodule