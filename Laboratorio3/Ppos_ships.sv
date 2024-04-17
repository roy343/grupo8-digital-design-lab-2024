module Ppos_ships (
		input logic x, y, enable, confirm,
		input logic [2:0] shipQ,
		input logic [1:0] board_in[4:0][4:0],
		output logic [1:0] board_out[4:0][4:0],
		output logic placed
	);
	
	logic [2:0] placedQ = 0;
	
	always @(posedge enable) begin
		placed = 0;
		while (placedQ < shipQ) begin
			case(placedQ) 
				
				0: begin
					if (confirm) begin
						board_in[x][y] = 2'd1;
						placedQ = placedQ + 1;
					end
				end
				
				1: begin
				
					if (y < 4) begin
						if (board_in[x][y] == 2'd0 && board_in[x][y+1] == 2'd0) begin
							if (confirm) begin
								board_in[x][y] = 2'd1;
								board_in[x][y+1] = 2'd1;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				2: begin
				
					if (y < 3) begin
						if (board_in[x][y] == 2'd0 && board_in[x][y+1] == 2'd0 && board_in[x][y+2] == 2'd0) begin
							if (confirm) begin
								board_in[x][y] = 2'd1;
								board_in[x][y+1] = 2'd1;
								board_in[x][y+2] = 2'd1;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				3: begin
				
					if (y < 2) begin
						if (board_in[x][y] == 2'd0 && board_in[x][y+1] == 2'd0 && board_in[x][y+2] == 2'd0 && board_in[x][y+3] == 2'd0) begin
							if (confirm) begin
								board_in[x][y] = 2'd1;
								board_in[x][y+1] = 2'd1;
								board_in[x][y+2] = 2'd1;
								board_in[x][y+3] = 2'd1;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
				4: begin
				
					if (y < 1) begin
						if (board_in[x][y] == 2'd0 && board_in[x][y+1] == 2'd0 && board_in[x][y+2] == 2'd0 && board_in[x][y+3] == 2'd0 && board_in[x][y+4] == 2'd0) begin
							if (confirm) begin
								board_in[x][y] = 2'd1;
								board_in[x][y+1] = 2'd1;
								board_in[x][y+2] = 2'd1;
								board_in[x][y+3] = 2'd1;
								board_in[x][y+4] = 2'd1;
								placedQ = placedQ + 1;
							end
						end
					end
				
				end
				
			endcase
		end
		
		if (placedQ = shipQ) begin
			board_out = board_in;
			placed = 1;
		end
		
	end
	
endmodule