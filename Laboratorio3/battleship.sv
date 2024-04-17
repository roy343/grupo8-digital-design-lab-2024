/*
 mov: 1000 left, 0100 up, 0010 down, 0001 right
 game_state: 00 playing, 10 victory, 11 defeat
*/
module battleship (
		input logic clk, rst, confirm,
		input logic [2:0] shipQ,
		input logic [3:0] mov,
		output logic [1:0] boardP[4:0][4:0]
		output logic [1:0] boardE[4:0][4:0],
		output logic [1:0] game_state
	);
	
	typedef enum logic [2:0] {SELSHIPQ, PLACESHIP, PLAYP, CHECK_WIN, PLAYE, CHECK_LOSE, END} state_t;
	state_t state, next_state;
	
	logic [11:0] boardP_upt[3:0][3:0];
	logic [11:0] boardE_upt[3:0][3:0];
	logic [4:0] count;
	logic Place_ships;
	logic Ships_placed;
	logic Pturn;
	logic Pplayed;
	logic Eturn;
	logic Eplayed;
	logic is_win;
	logic is_loss;
	integer segs, x, y, outX, outY;
	
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
		.enable(Place_ships), 
		.confirm(confirm),
		.shipQ(shipQ),
		.board_in(boardP),
		.board_out(boardP_upt),
		.placed(Ships_placed)
	);
	
	always_ff @(posedge clk) begin
		if (rst) begin
			state <= SELSHIPQ;
		end else begin
			state <= next_state;
		end
	end
	
	always @* begin
		case(state)
		
			SELSHIPQ: begin
				for (int i = 0; i < 5; i++) begin
					 for (int j = 0; j < 5; j++) begin
						boardP[i][j] = 0;
						boardE[i][j] = 0;
					 end
				end
				
				game_state = 0;
				
				if (0 < shipQ < 6) begin
					next_state = PLACESHIP;
				end 
			end
			
			PLACESHIP: begin
				Place_ships = 1;
				x = 0;
				y = 0;
				if (Ships_placed) begin
					boardP = boardP_upt;
					boardE = boardE_upt;
					next_state = PLAYP;
				end
			end
			
			PLAYP: begin
				Place_ships = 0;
				Pturn = 1;
				segs = 0;
				x = 0;
				y = 0;
				
				if (Pplayed) begin
					boardE = boardE_upt;
					next_state = CHECK_WIN;
				end else begin
					next_state = PLAYE;
				end
			end
			
			PLAYE: begin
				Pturn = 0;
				Eturn = 1;
				if (Eplayed) begin
					boardP = boardP_upt;
					next_state = CHECK_LOSE;
				end
			end
			
			CHECK_WIN: begin
				Pturn = 0;
				if (is_win) begin
					game_state = 2'b10;
					next_state = END;
				end else begin
					next_state = PLAYE;
				end
			end
			
			CHECK_LOSE: begin
				Eturn = 0;
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