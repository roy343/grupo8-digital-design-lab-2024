module Ppos_ships (
		input logic [2:0] x, y, 
		input logic clk, enable, confirm,
		input logic [2:0] shipQ,
		input logic [2:0] board_in[4:0][4:0],
		output logic [2:0] board_out[4:0][4:0],
		output logic [2:0] placedQ,
		output logic placed
	);
	
	logic [2:0] local_board[4:0][4:0];
	
	initial begin
		placedQ = 0;
		local_board = '{
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
				'{0, 0, 0, 0, 0}
        };
	end
	
	always @(posedge clk) begin
		placed = 0;
		if (placedQ < shipQ) begin
			case(placedQ) 
				
				0: begin
					if (confirm && enable) begin
						local_board[x][y] = 3'd1;
						placedQ = placedQ + 1;
					end
				end
				
				1: begin
				
					if (y < 4) begin
						if (local_board[x][y] == 3'd0 && local_board[x][y+1] == 3'd0) begin
							if (confirm && enable) begin
								local_board[x][y] = 3'd2;
								local_board[x][y+1] = 3'd2;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				2: begin
				
					if (y < 3) begin
						if (local_board[x][y] == 3'd0 && local_board[x][y+1] == 3'd0 && local_board[x][y+2] == 3'd0) begin
							if (confirm && enable) begin
								local_board[x][y] = 3'd3;
								local_board[x][y+1] = 3'd3;
								local_board[x][y+2] = 3'd3;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				3: begin
				
					if (y < 2) begin
						if (local_board[x][y] == 3'd0 && local_board[x][y+1] == 3'd0 && local_board[x][y+2] == 3'd0 && local_board[x][y+3] == 3'd0) begin
							if (confirm && enable) begin
								local_board[x][y] = 3'd4;
								local_board[x][y+1] = 3'd4;
								local_board[x][y+2] = 3'd4;
								local_board[x][y+3] = 3'd4;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				4: begin
				
					if (y < 1) begin
						if (local_board[x][y] == 3'd0 && local_board[x][y+1] == 3'd0 && local_board[x][y+2] == 3'd0 && local_board[x][y+3] == 3'd0 && local_board[x][y+4] == 3'd0) begin
							if (confirm && enable) begin
								local_board[x][y] = 3'd5;
								local_board[x][y+1] = 3'd5;
								local_board[x][y+2] = 3'd5;
								local_board[x][y+3] = 3'd5;
								local_board[x][y+4] = 3'd5;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
			endcase
		end
		
		
		else if (placedQ == shipQ) begin
			board_out = local_board;
			placed = 1;
		end
		
		if (0 < placedQ) begin
				board_out = local_board;
		end
		
	end
	
	
endmodule