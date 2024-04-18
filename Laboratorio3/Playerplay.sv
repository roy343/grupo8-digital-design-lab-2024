module Playerplay (
		input logic [2:0] x, y, 
		input logic clk, enable, confirm,
		input logic [2:0] board_in[4:0][4:0],
		output logic [2:0] board_out[4:0][4:0],
		output logic done
	);
	
	logic [2:0] local_board[4:0][4:0];
	
	initial begin
		local_board = board_in;
	end
	
	always @(posedge clk) begin
		done = 0;
		if (enable) begin
			
			if (local_board[x][y] == 3'd0) begin // missed shot
				if (confirm) begin
					local_board[x][y] = 3'd7;
					done = 1;
				end
			end else if (0 < local_board[x][y] < 6) begin // ship hit
				if (confirm) begin
					local_board[x][y] = 3'd6;
					done = 1;
				end
			end
		end
	end
	
	assign board_out = local_board;

endmodule