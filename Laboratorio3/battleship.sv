/*
 mov: 1000 left, 0100 up, 0010 down, 0001 right
 game_state: 00 playing, 10 victory, 11 defeat
*/
module battleship (
		input logic clk, clk1, rst, confirm,
		input logic [2:0] shipQ,
		input logic [3:0] mov,
		output logic [2:0] state,
		output logic [2:0] x = 3'd0,
		output logic [2:0] y = 3'd0, 
		output logic [2:0] boardP[4:0][4:0],
		output logic [2:0] boardE[4:0][4:0],
		output logic [1:0] game_state,
		output logic [13:0] dispCount, dispPships, dispEships
	);
	
	typedef enum logic [2:0] {SELSHIPQ, PLACESHIP, PLAYP, CHECK_WIN, PLAYE, CHECK_LOSE, END} state_t;
	state_t next_state;
	
	logic [2:0] boardP_upt[4:0][4:0];
	logic [2:0] boardPplay_upt[4:0][4:0];
	logic [2:0] boardE_upt[4:0][4:0];
	logic [2:0] boardEplay_upt[4:0][4:0];
	logic [3:0] count;
	logic Place_ships;
	logic Pships_placed;
	logic Eships_placed;
	logic Pturn;
	logic startT;
	logic Pplayed;
	logic Eturn;
	logic Eplayed;
	logic is_win;
	logic is_loss;
	logic [2:0] placedPQ;
	logic [2:0] placedEQ;
	logic [2:0] PshipsLeft;
	logic [2:0] EshipsLeft;
	logic [2:0] outX, outY;

	mov_control boxSel (
		.x(x), 
		.y(y),
		.mov(mov),
		.outX(outX), 
		.outY(outY)
	);
	
	Ppos_ships player_ships (
		.x(outX), 
		.y(outY),
		.clk(clk),	
		.enable(Place_ships), 
		.confirm(confirm),
		.shipQ(shipQ),
		.board_in(boardP),
		.board_out(boardP_upt),
		.placedQ(placedPQ),
		.placed(Pships_placed)
	);
	
	Epos_ships env_ships(
		.clk(clk), 
		.enable(Place_ships),
		.shipQ(shipQ),
		.board_in(boardE),
		.board_out(boardE_upt),
		.placedQ(placedEQ),
		.placed(Eships_placed)
	);
	
	playTimer timer (
	 .clk(clk1),
    .startT(startT),
    .count(count)
	);

	displayConverter dispTimer(
		.numAct(count), 
		.dispOut(dispCount)
	);
	
	Playerplay pPlay (
		.x(x), 
		.y(y), 
		.clk(clk),
		.enable(Pturn), 
		.confirm(confirm),
		.board_in(boardE),
		.board_out(boardPplay_upt),
		.done(Pplayed)
	);
	
	Envplay ePlay (
		.clk(clk), 
		.enable(Eturn),
		.board_in(boardP),
		.board_out(boardEplay_upt),
		.done(Eplayed)
	);
	
	check_win_lose check_win(
		.board_in(boardE),
		.result(is_win),
		.shipsLeft(EshipsLeft)
	);
	
	displayConverter dispShipsE(
		.numAct({1'b0,EshipsLeft}), 
		.dispOut(dispEships)
	);
	
	check_win_lose check_lose(
		.board_in(boardP),
		.result(is_loss),
		.shipsLeft(PshipsLeft)
	);
	
	displayConverter dispShipsP(
		.numAct({1'b0, PshipsLeft}), 
		.dispOut(dispPships)
	);
	
	initial begin
		game_state = 0;
		for (int i = 0; i < 5; i++) begin
			for (int j = 0; j < 5; j++) begin
				boardP[i][j] = 0;
				boardE[i][j] = 0;
			end
		end
	end 
	
	always_ff @(posedge clk) begin
		if (rst) begin
			state <= SELSHIPQ;
		end else begin
			state <= next_state;
		end
	end
	
	always @* begin
		x = outX;
		y = outY;
	end
	
	always @* begin
		case(state)
		
			SELSHIPQ: begin
				for (int i = 0; i < 5; i++) begin
					for (int j = 0; j < 5; j++) begin
						boardP[i][j] = 3'd0;
						boardE[i][j] = 3'd0;
					end
				end
				
				if (3'd0 < shipQ || shipQ < 3'd6) begin
					next_state = PLACESHIP;
				end 
			end
			
			PLACESHIP: begin
				Place_ships = 1;
				if (Pships_placed && Eships_placed) begin
					next_state = PLAYP;
				end else if (0 < placedPQ) begin
					boardP = boardP_upt;
				end if (0 < placedEQ) begin
					boardE = boardE_upt;
				end
			end
			
			PLAYP: begin
				Place_ships = 0;
				Pturn = 1;
				startT = 1;
				
				if (count > 4'd0) begin
					if (Pplayed) begin
						Pturn = 0;
						boardE = boardPplay_upt;
						next_state = CHECK_WIN;
					end 
				end else if (count == 4'd0) begin
					Pturn = 0;
					next_state = PLAYE;
				end
				
			end
			
			PLAYE: begin
				Eturn = 1;
				startT = 0;
				if (Eplayed) begin
					Eturn = 0;
					boardP = boardEplay_upt;
					next_state = CHECK_LOSE;
				end
			end
			
			CHECK_WIN: begin
				startT = 0;
				if (is_win) begin
					game_state = 2'b10;
					next_state = END;
				end else begin
					next_state = PLAYE;
				end
			end
			
			CHECK_LOSE: begin
				if (is_loss) begin
					game_state = 2'b11;
					next_state = END;
				end else begin
					next_state = PLAYP;
				end
			end
			
			END: begin
			end
			
			default: begin
				next_state = SELSHIPQ;
			end
			
		endcase
	end
	
endmodule