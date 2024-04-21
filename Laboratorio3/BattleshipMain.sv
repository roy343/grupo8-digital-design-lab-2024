module BattleshipMain(

	input logic clk, reset, confirm,
	input logic [2:0] shipQ,
	input logic [3:0] mov,
	output logic hSync,vSync,syncBlank,bSync,
	output logic [7:0]red,green,blue,
	output logic clk25,
	output logic [2:0] state,
	output logic [2:0] x = 0,
	output logic [2:0] y = 0,
	output logic [13:0] dispCount, dispPships, dispEships
);

	logic [2:0] matrix[4:0][9:0];
	logic clk1Hz;
	logic [2:0] playerBoard[4:0][4:0];
	logic [2:0] EnvBoard[4:0][4:0];
	logic [1:0] game_state;
	
	always @(playerBoard or EnvBoard) begin
		for (int i = 0; i < 5; i++) begin
			 for (int j = 0; j < 5; j++) begin
				  matrix[i][j] = EnvBoard[i][j];
				  matrix[i][j+5] = playerBoard[i][j];
			 end
		end
	end

	clockDivider div(
		.clk(clk),
		.clk_25(clk25),
		.clk_1Hz(clk1Hz)
	);

	VGAMain VGA(
		clk25,
		reset,
		matrix,
		hSync,
		vSync,
		syncBlank,
		bSync,
		red,
		green,
		blue
	);
	
	battleship gameFSM (
    .clk(clk25),
	 .clk1(clk1Hz),
    .rst(reset),
	 .confirm(confirm),
    .shipQ(shipQ),
    .mov(~mov),
	 .state(state),
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